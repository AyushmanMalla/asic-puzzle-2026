# ASIC Design & Reverse-Engineering Reference

Welcome to the ASIC (Application-Specific Integrated Circuit) world! This document serves as a reference guide based on the Jane Street ASIC reverse-engineering puzzle and the general digital design flow. It covers terminology, tools, the fundamental design steps, and deep dives into layout formats.

---

## 1. The Digital ASIC Design Flow

Converting an idea into a physical silicon chip involves several automated steps, typically managed by EDA (Electronic Design Automation) tools (like the open-source OpenLane/OpenROAD flow). The files in your `warmup/` directory represent these stages.

1. **RTL Source Code (`00_source.v`):** 
   Hardware behavior is described using a Hardware Description Language (HDL) like Verilog. It dictates *what* the circuit should do (e.g., `if (A + B == 496) success = 1;`).

2. **Synthesis & Netlist (`01_netlist.v`):**
   A synthesizer translates the RTL into a **Netlist**. A netlist is a structural list of basic building blocks called **Standard Cells** (e.g., AND gates, OR gates, Flip-Flops) and the wires (nets) connecting them.

3. **Power Planning (`02_netlist_with_power_rails.v`):**
   Before placing components, a power grid (VDD and GND) is planned. Every standard cell needs power to operate.

4. **Place and Route / P&R (`03_post_place_and_route.def`):**
   - **Placement:** The tool decides exactly *where* on the 2D silicon floorplan each standard cell from the netlist should physically sit.
   - **Routing:** The tool draws the physical metal wires to connect the pins of these standard cells according to the netlist. 
   - The `.def` (Design Exchange Format) file represents this physical layout in ASCII text.

5. **Layout / GDSII (`04_final.gds`):**
   The final, manufacturable 2D geometric blueprints of the chip. It merges the standard cell layout designs with your custom routing into a single file sent to the foundry for fabrication.

---

## 2. Key Terminology & Verification (LVS & DRC)

- **Standard Cells:** Pre-designed, highly optimized logic gates. A foundry provides a library of these cells for a specific **Process Node** (like Skywater 130nm, denoted as `sky130`).
- **PDK (Process Design Kit):** A set of files provided by the foundry that tells the EDA tools the manufacturing limits, layer definitions, and includes the standard cell libraries.
- **DRC (Design Rule Checking):** A physical verification step. The foundry has rules (e.g., "Metal 1 wires must be at least 0.14µm apart"). DRC scans the GDS file to ensure no geometric rules are violated. If violated, the chip might fail to manufacture.
- **LVS (Layout Versus Schematic):** A critical verification step to ensure the physical GDS geometry actually matches your intended logic.
  - **Extraction:** The LVS tool looks at the overlapping polygons in the GDS and figures out what electrical components (transistors, capacitors, connections) they form.
  - **Comparison:** It compares this extracted netlist against your synthesized schematic/netlist. If you accidentally shorted a wire during manual routing, LVS will fail.

---

## 3. Understanding GDSII and Layout Formats

### What is GDSII?
GDSII (Graphic Design System II) is the industry-standard binary file format for transferring IC layout data to a foundry. You can think of it as a highly specialized PDF or vector graphics file for silicon manufacturing. It does not contain concepts like "AND gates" or "Wires"—only raw 2D shapes (polygons, paths) mapped to specific fabrication layers.

### Reading the ASCII Dump (`warmup_gdsDump`)
A tool has converted the binary `04_final.gds` into human-readable text. Here is the standard data structure and how to interpret it:

- **Hierarchy:** GDS is hierarchical to save space. A **Library** contains **Cells** (sometimes called Structures). A Cell can contain geometric elements (Polygons) and instances of *other* Cells.
- **Elements:**
  - **Polygon / Boundary:** An enclosed 2D shape. 
    *Example from your dump:* `Polygon - Layer : 67 Data Type : 20 No of points : 11` followed by X,Y coordinates. This means "draw an 11-sided shape on Layer 67."
  - **Path:** A line with a defined width. Usually used for routing wires.
  - **Text:** Labels placed on specific coordinates. These aren't printed on the chip; they are usually pin names used by LVS tools to identify where inputs/outputs are.
- **Layers and Data Types:**
  - GDS uses simple integer pairs (Layer, Data Type) instead of names. For example, in the sky130 PDK, Layer `67` might represent "Metal 1". Data Type `20` might mean "Drawing", while Data Type `16` might mean "Pin". 
  - Each layer typically corresponds to a specific photomask used in the photolithography fabrication process (e.g., etching polysilicon, depositing copper).

### How GDS Viewers (like KLayout) Work Under the Hood
1. **Parsing:** The viewer reads the binary GDSII stream, building an in-memory tree of the cell hierarchy and their geometric primitives.
2. **Flattening/Rendering:** When you view the top-level chip, the viewer traverses the tree. If Cell A instantiates Cell B at coordinate (100, 100), it translates all polygons in Cell B by that amount.
3. **Layer Mapping:** The viewer relies on a `.lyp` (Layer Properties) file provided by the PDK. It maps the raw GDS integers (e.g., Layer 67, Type 20) to a display color (e.g., Blue), a pattern, and a human-readable name ("met1.drawing").

---

## 4. How exactly does a Netlist become a GDS?

This is the magic of the **Place and Route (P&R)** process:

1. The P&R tool reads your `netlist.v`.
2. It reads abstract views (`.lef` files) of the Standard Cells. These files tell the tool the physical bounding box (size) of the cell and exactly where its input/output pins are located, but *hides* the complex internal transistor layouts.
3. **Placement:** The tool arranges these bounding boxes into neat rows on a grid.
4. **Routing:** Using algorithms (like maze routing), it draws geometric `Paths` (wires) on the metal layers to connect the pins, dropping `Vias` (vertical connections) to switch between different metal layers (e.g., Metal 1 to Metal 2) to avoid collisions.
5. **GDS Export:** Finally, the tool replaces the abstract `.lef` boxes with the actual, detailed `.gds` layouts of the standard cells (which contain all the internal transistors). It merges these cell polygons with your newly routed metal wires and exports a single, massive `final.gds` file.

---

## Summary of Useful Tools
- **KLayout / TinyTapeout Viewer:** Used for viewing `.gds` and `.def` files visually. 
- **Surfer / GTKWave:** Used for viewing `.vcd` (Value Change Dump) files. A VCD file is the output of a simulation (like running your Verilog through `iverilog` or `verilator`) and shows how signals toggle between 0 and 1 over time.
- **Yosys:** The open-source synthesizer that converts Verilog to a netlist.
- **OpenROAD:** The open-source Place and Route engine.
- **Magic / Netgen:** Open-source tools for layout viewing, LVS, and DRC.
