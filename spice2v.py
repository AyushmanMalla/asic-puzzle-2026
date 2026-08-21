import sys
import re

def parse_spice(filepath):
    with open(filepath, 'r') as f:
        lines = f.readlines()

    # Combine continuation lines
    combined_lines = []
    for line in lines:
        line = line.strip()
        if not line or line.startswith('*'):
            continue
        if line.startswith('+'):
            combined_lines[-1] += ' ' + line[1:].strip()
        else:
            combined_lines.append(line)

    subckts = {}
    puzzle_ports = []
    puzzle_instances = []
    
    in_puzzle = False
    
    for line in combined_lines:
        tokens = line.split()
        if tokens[0] == '.subckt':
            name = tokens[1]
            ports = tokens[2:]
            subckts[name] = ports
            if name == 'puzzle':
                in_puzzle = True
                puzzle_ports = ports
            else:
                in_puzzle = False
        elif tokens[0] == '.ends':
            in_puzzle = False
        elif tokens[0].startswith('X') and in_puzzle:
            inst_name = tokens[0]
            cell_name = tokens[-1]
            connections = tokens[1:-1]
            puzzle_instances.append((inst_name, cell_name, connections))

    return subckts, puzzle_ports, puzzle_instances

def generate_verilog(subckts, puzzle_ports, puzzle_instances, out_path):
    # Determine which ports of puzzle are inputs vs outputs
    # (In SPICE they are just ports, but we can guess or define them as wires for now)
    
    with open(out_path, 'w') as f:
        f.write("module puzzle (")
        # Let's clean up port names (like O[0] -> O_0 if needed, but in verilog O[0] is just part of O)
        # Actually it's easier to just list them.
        port_list = []
        for p in puzzle_ports:
            if p not in ['VGND', 'VPWR']:
                # handle vector ports
                if '[' in p:
                    base = p.split('[')[0]
                    if base not in port_list:
                        port_list.append(base)
                else:
                    port_list.append(p)
        
        f.write(", ".join(port_list))
        f.write(");\n\n")
        
        # We'll just define all ports as inout for simplicity in the structural netlist
        for p in port_list:
            if p == 'O':
                f.write("  output [7:0] O;\n")
            elif p in ['I', 'clk', 'enable', 'rst_n']:
                f.write(f"  input {p};\n")
            elif p == 'success':
                f.write(f"  output {p};\n")
            else:
                f.write(f"  inout {p};\n")
                
        f.write("\n  // Power pins (tied to 1/0 implicitly or explicitly)\n")
        f.write("  wire VPWR = 1'b1;\n")
        f.write("  wire VGND = 1'b0;\n\n")

        # Gather all internal wires
        all_wires = set()
        for inst_name, cell_name, connections in puzzle_instances:
            for conn in connections:
                # Remove escaped characters or invalid Verilog chars if any
                clean_conn = conn.replace('#', '_hash_').replace('/', '_')
                if clean_conn not in puzzle_ports and clean_conn not in ['VPWR', 'VGND']:
                    all_wires.add(clean_conn)

        for w in sorted(list(all_wires)):
            f.write(f"  wire {w};\n")
            
        f.write("\n  // Instances\n")
        for inst_name, cell_name, connections in puzzle_instances:
            if cell_name not in subckts:
                print(f"Warning: Cell {cell_name} not found in subckts!")
                continue
                
            cell_ports = subckts[cell_name]
            if len(connections) != len(cell_ports):
                print(f"Warning: Connection count mismatch for {inst_name} ({cell_name})")
                continue
                
            port_maps = []
            for port_name, conn in zip(cell_ports, connections):
                if port_name in ['VGND', 'VPWR', 'VPB', 'VNB']:
                    continue
                clean_conn = conn.replace('#', '_hash_').replace('/', '_')
                port_maps.append(f".{port_name}({clean_conn})")
                
            f.write(f"  {cell_name} {inst_name} (\n    ")
            f.write(",\n    ".join(port_maps))
            f.write("\n  );\n\n")

        f.write("endmodule\n")

if __name__ == '__main__':
    spice_file = 'puzzle.spice'
    v_file = 'puzzle_netlist.v'
    subckts, puzzle_ports, puzzle_instances = parse_spice(spice_file)
    print(f"Found {len(subckts)} subcircuits.")
    print(f"Found puzzle module with {len(puzzle_instances)} instances.")
    generate_verilog(subckts, puzzle_ports, puzzle_instances, v_file)
    print(f"Wrote {v_file}")
