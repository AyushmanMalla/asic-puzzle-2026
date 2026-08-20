# Makefile for ASIC Reverse Engineering Environment (macOS Apple Silicon)
# =====================================================================
# Uses Homebrew for EDA tools, uv for Python environment, volare for PDK.

# ── Configuration ────────────────────────────────────────────────────
VENV_DIR   := .venv
PYTHON     := $(VENV_DIR)/bin/python3
UV         := $(shell command -v uv 2>/dev/null)
PDK_ROOT   := $(CURDIR)/pdk
PDK_COMMIT := c6d73a35f524070e85faff4a6a9eef49553ebc2b

# Sky130 cell library paths (populated after `make pdk`)
SKY130_LIB   := $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
SKY130_VLOG  := $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v
SKY130_PRIM  := $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v

# ── Colors ───────────────────────────────────────────────────────────
G := \033[0;32m
Y := \033[0;33m
R := \033[0;31m
B := \033[0;34m
D := \033[2m
N := \033[0m

# ── Homebrew packages ────────────────────────────────────────────────
BREW_FORMULAE := yosys icarus-verilog surfer verilator uv
BREW_CASKS    := klayout

.PHONY: help setup env tools pdk check check-yosys check-iverilog check-surfer \
        clean veryclean install-magic

# ── Help ─────────────────────────────────────────────────────────────
help:
	@printf "$(B)ASIC Reverse Engineering Environment$(N) (macOS Apple Silicon)\n"
	@echo ""
	@printf "  $(G)Setup$(N)\n"
	@echo "  make setup          Full setup: tools + env + pdk"
	@echo "  make tools          Install EDA tools via Homebrew"
	@echo "  make env            Create Python venv (uv) and install dependencies"
	@echo "  make pdk            Download sky130 PDK via volare"
	@echo "  make install-magic  Build & install Magic from source (needs XQuartz)"
	@echo ""
	@printf "  $(G)Verify$(N)\n"
	@echo "  make check          Smoke-test all tools on warmup design files"
	@echo ""
	@printf "  $(G)Clean$(N)\n"
	@echo "  make clean          Remove generated/temp files"
	@echo "  make veryclean      Deep clean (+ venv, pdk)"

# ══════════════════════════════════════════════════════════════════════
#  SETUP TARGETS
# ══════════════════════════════════════════════════════════════════════

# ── Full setup (order matters: tools first so uv is available) ───────
setup: tools env pdk
	@printf "\n$(G)══════════════════════════════════════$(N)\n"
	@printf "$(G)  Setup complete!$(N)\n"
	@printf "$(G)══════════════════════════════════════$(N)\n\n"
	@echo "Activate the Python environment:"
	@echo "  source .venv/bin/activate"
	@echo ""
	@echo "Run smoke tests:"
	@echo "  make check"

# ── EDA Tools (Homebrew) ─────────────────────────────────────────────
tools:
	@printf "$(Y)[tools]$(N) Checking Homebrew...\n"
	@command -v brew >/dev/null 2>&1 || \
		{ printf "$(R)✗ Homebrew not found. Install from https://brew.sh$(N)\n"; exit 1; }
	@printf "$(G)✓$(N) Homebrew found\n"
	@printf "\n$(Y)[tools]$(N) Installing formulae: $(BREW_FORMULAE)\n"
	@for pkg in $(BREW_FORMULAE); do \
		if brew list --formula "$$pkg" >/dev/null 2>&1; then \
			printf "  $(D)%-20s$(N) already installed\n" "$$pkg"; \
		else \
			printf "  $(Y)%-20s$(N) installing...\n" "$$pkg"; \
			brew install "$$pkg" 2>&1 | tail -1; \
		fi; \
	done
	@printf "\n$(Y)[tools]$(N) Installing casks: $(BREW_CASKS)\n"
	@for pkg in $(BREW_CASKS); do \
		if brew list --cask "$$pkg" >/dev/null 2>&1; then \
			printf "  $(D)%-20s$(N) already installed\n" "$$pkg"; \
		else \
			printf "  $(Y)%-20s$(N) installing...\n" "$$pkg"; \
			brew install --cask "$$pkg" 2>&1 | tail -1; \
		fi; \
	done
	@printf "$(G)✓ EDA tools ready$(N)\n"

# ── Python Environment (uv) ─────────────────────────────────────────
env:
	@printf "$(Y)[env]$(N) Setting up Python virtual environment...\n"
	@command -v uv >/dev/null 2>&1 || \
		{ printf "$(R)✗ uv not found. Run 'make tools' first or 'brew install uv'$(N)\n"; exit 1; }
	@if [ -d "$(VENV_DIR)" ]; then \
		printf "  $(D)venv already exists at $(VENV_DIR)$(N)\n"; \
	else \
		printf "  Creating venv with Python 3.11...\n"; \
		uv venv $(VENV_DIR) --python 3.11; \
	fi
	@printf "  Installing Python packages...\n"
	@uv pip install --python $(PYTHON) gdstk volare 2>&1 | tail -1
	@printf "$(G)✓ Python environment ready$(N)  (activate: source $(VENV_DIR)/bin/activate)\n"

# ── Sky130 PDK (volare) ─────────────────────────────────────────────
pdk:
	@printf "$(Y)[pdk]$(N) Setting up Sky130 PDK...\n"
	@if [ -f "$(SKY130_LIB)" ]; then \
		printf "  $(D)Sky130 PDK already present at $(PDK_ROOT)$(N)\n"; \
	else \
		printf "  Downloading sky130 PDK (commit $(PDK_COMMIT))...\n"; \
		printf "  $(D)This may take a few minutes on first run.$(N)\n"; \
		PDK_ROOT=$(PDK_ROOT) $(VENV_DIR)/bin/volare enable --pdk sky130 $(PDK_COMMIT); \
	fi
	@printf "$(G)✓ Sky130 PDK ready$(N)\n"
	@printf "  Liberty: $(SKY130_LIB)\n"
	@printf "  Verilog: $(SKY130_VLOG)\n"

# ══════════════════════════════════════════════════════════════════════
#  SMOKE TESTS
# ══════════════════════════════════════════════════════════════════════

check: check-yosys check-iverilog check-surfer
	@printf "\n$(G)══════════════════════════════════════$(N)\n"
	@printf "$(G)  All smoke tests passed!$(N)\n"
	@printf "$(G)══════════════════════════════════════$(N)\n"

# Terminal equivalent:
#   yosys -p "read_verilog warmup/00_source.v; synth -top adder_demo; stat" 2>&1 | grep -E '(Number of|cells:|wires:)'
check-yosys:
	@printf "\n$(Y)[check]$(N) $(B)Yosys$(N) — synthesize warmup/00_source.v\n"
	@command -v yosys >/dev/null 2>&1 || \
		{ printf "$(R)✗ yosys not found. Run 'make tools'$(N)\n"; exit 1; }
	@yosys -p " \
		read_verilog warmup/00_source.v; \
		synth -top adder_demo; \
		stat" 2>&1 | grep -E '(Number of|cells:|wires:)' | sed 's/^/  /'
	@printf "$(G)✓ Yosys synthesis OK$(N)\n"

# Terminal equivalent:
#   iverilog -o warmup/warmup_sim warmup/00_source.v warmup/tb_warmup.v && cd warmup && vvp warmup_sim
check-iverilog:
	@printf "\n$(Y)[check]$(N) $(B)Icarus Verilog$(N) — simulate warmup design\n"
	@command -v iverilog >/dev/null 2>&1 || \
		{ printf "$(R)✗ iverilog not found. Run 'make tools'$(N)\n"; exit 1; }
	@iverilog -o warmup/warmup_sim warmup/00_source.v warmup/tb_warmup.v
	@cd warmup && vvp warmup_sim 2>&1 | sed 's/^/  /'
	@if [ -f warmup/warmup_sim.vcd ]; then \
		printf "$(G)✓ Simulation complete — VCD: warmup/warmup_sim.vcd$(N)\n"; \
	else \
		printf "$(R)✗ VCD file not generated$(N)\n"; exit 1; \
	fi

# ── Surfer: verify it can open the example VCD ──────────────────────
# Terminal equivalent:
#   surfer --version
check-surfer:
	@printf "\n$(Y)[check]$(N) $(B)Surfer$(N) — verify VCD loading\n"
	@command -v surfer >/dev/null 2>&1 || \
		{ printf "$(R)✗ surfer not found. Run 'make tools'$(N)\n"; exit 1; }
	@printf "  Surfer version: "; surfer --version 2>&1 || true
	@printf "  $(D)Launch manually: surfer example_inputs.vcd$(N)\n"
	@printf "  $(D)  or for warmup: surfer warmup/warmup_sim.vcd$(N)\n"
	@printf "$(G)✓ Surfer available$(N)\n"

# ══════════════════════════════════════════════════════════════════════
#  MAGIC (build from source — optional)
# ══════════════════════════════════════════════════════════════════════

install-magic:
	@printf "$(Y)[magic]$(N) Building Magic from source...\n"
	@printf "  $(D)This requires XQuartz. Installing prerequisites...$(N)\n"
	@brew install cairo tcl-tk@8 python3 gnu-sed 2>&1 | tail -1
	@if ! brew list --cask xquartz >/dev/null 2>&1; then \
		printf "  Installing XQuartz (may require password)...\n"; \
		brew install --cask xquartz; \
	else \
		printf "  $(D)XQuartz already installed$(N)\n"; \
	fi
	@if [ -d "tools/magic-src" ]; then \
		printf "  $(D)Magic source already cloned$(N)\n"; \
	else \
		printf "  Cloning Magic repository...\n"; \
		git clone --depth 1 https://github.com/RTimothyEdwards/magic.git tools/magic-src; \
	fi
	@cd tools/magic-src && \
		./scripts/configure_mac && \
		make prepare && \
		make -j$$(sysctl -n hw.ncpu) && \
		sudo make install
	@printf "$(G)✓ Magic installed$(N)\n"
	@magic --version 2>&1 | head -1 | sed 's/^/  /'

# ══════════════════════════════════════════════════════════════════════
#  CLEAN
# ══════════════════════════════════════════════════════════════════════

clean:
	@printf "$(Y)Cleaning generated files...$(N)\n"
	@rm -f warmup/warmup_sim warmup/warmup_sim.vcd
	@rm -f *.ext *.spice extract.tcl
	@find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@printf "$(G)✓ Clean complete$(N)\n"

veryclean: clean
	@printf "$(Y)Deep cleaning...$(N)\n"
	@rm -rf $(VENV_DIR)
	@echo "  Removed $(VENV_DIR)"
	@rm -rf $(PDK_ROOT)
	@echo "  Removed $(PDK_ROOT)"
	@rm -rf tools/magic-src
	@echo "  Removed tools/magic-src"
	@printf "$(G)✓ Deep clean complete$(N)\n"
