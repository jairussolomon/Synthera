# Detailed Explanation of `run.tcl` Synthesis Flow

This `run.tcl` script is a Cadence Genus RTL-to-Gate-Level synthesis automation script. It takes RTL Verilog files as input, applies timing constraints and technology libraries, synthesizes the design into a gate-level netlist, optimizes it, and generates reports and output files.

The top module being synthesized is:

```tcl
set DESIGN dtmf_recvr_core
```

So the complete synthesis flow revolves around the design `dtmf_recvr_core`.

---

# 1. System Information Printing

```tcl
if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"
```

## Purpose
This section prints the machine information on which the synthesis is running.

## What Happens
- `/proc/cpuinfo` is checked.
- CPU model name is printed.
- CPU frequency is printed.
- Hostname of the machine/server is displayed.

## Why It Is Useful
- Helps identify the server used.
- Useful in multi-server EDA environments.
- Helps compare synthesis runtime across systems.

---

# 2. Global Variable Setup

```tcl
set DESIGN dtmf_recvr_core
set GEN_EFF medium
set MAP_OPT_EFF high
```

## Purpose
Defines important global variables used throughout synthesis.

## Explanation

### DESIGN
Stores the top module name.

### GEN_EFF
Controls effort during generic synthesis.

### MAP_OPT_EFF
Controls optimization effort during:
- Technology mapping
- Netlist optimization

---

# 3. Timestamp and Directory Creation Variables

```tcl
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}
```

## Purpose
Automatically creates timestamped directories.

## Why This Is Useful
- Prevents old reports from being overwritten.
- Keeps every synthesis run separated.
- Makes debugging easier.

---

# 4. Search Path Setup

```tcl
set_db / .init_lib_search_path  {. ../LIB}
set_db / .init_hdl_search_path  {. ../RTL}
```

## Purpose
Tells Genus where to search for files.

---

# 5. Information Level Setup

```tcl
set_db / .information_level 7
```

## Purpose
Controls verbosity of Genus logs.

---

# 6. Technology Library Setup

```tcl
set_db / .library { ../LIB/slow.lib ../LIB/pll.lib }
```

## Purpose
Loads standard cell and macro timing libraries.

---

# 7. LEF Library Setup

```tcl
set_db / .lef_library  { ../LEF/gsclib045_tech.lef }
```

## Purpose
Loads physical layout information.

---

# 8. Reading RTL Files

```tcl
read_hdl "pllclk.v accum_stat.v alu_32.v ..."
```

## Purpose
Loads all RTL Verilog files.

## What Happens Internally
Genus:
1. Parses Verilog syntax.
2. Builds module hierarchy.
3. Resolves module instantiations.
4. Creates internal RTL database.

---

# 9. Elaboration

```tcl
elaborate $DESIGN
```

## Purpose
Creates complete design hierarchy.

## What Elaboration Does
- Expands module instantiations
- Resolves parameters
- Builds connectivity
- Creates RTL netlist representation

---

# 10. Runtime and Memory Reporting

```tcl
time_info Elaboration
```

## Purpose
Displays runtime consumed and memory usage.

---

# 11. Design Checking

```tcl
check_design
check_design -unresolved
```

## Purpose
Checks RTL consistency and unresolved references.

---

# 12. Reading Timing Constraints

```tcl
read_sdc ../constraints/dtmf_recvr_core_gate.sdc
```

## Purpose
Loads timing constraints.

## SDC Contains
- Clock definitions
- Input delays
- Output delays
- False paths
- Multicycle paths

---

# 13. Reporting Timing Exceptions

```tcl
puts "The number of exceptions is ..."
```

## Purpose
Prints total timing exceptions.

---

# 14. Directory Creation

```tcl
file mkdir ${_LOG_PATH}
```

## Purpose
Creates required directories for reports and logs.

---

# 15. Generic Synthesis

```tcl
syn_generic
```

## Purpose
Converts RTL into generic logic.

## Optimization Performed
- Logic simplification
- Constant propagation
- Resource sharing
- FSM optimization

---

# 16. Generic Stage Reporting

```tcl
report_dp
write_snapshot
report_summary
```

## Purpose
Generates datapath and summary reports.

---

# 17. Technology Mapping

```tcl
syn_map
```

## Purpose
Maps generic logic into standard cells.

## What Happens
Generic logic becomes:
- NAND gates
- NOR gates
- Flip-flops
- Buffers

---

# 18. Mapped Stage Reporting

```tcl
time_info MAPPED
```

## Purpose
Displays runtime and memory after mapping.

---

# 19. LEC Script Generation

```tcl
write_do_lec
```

## Purpose
Creates Formal Verification script.

## What Is LEC?
LEC = Logical Equivalence Checking.

Used to verify:

```text
RTL == Synthesized Netlist
```

---

# 20. Netlist Optimization

```tcl
syn_opt
```

## Purpose
Performs post-mapping optimization.

## Optimization Performed
- Gate sizing
- Buffer insertion
- Logic restructuring
- Area optimization
- Power optimization

---

# 21. Final Snapshots and Reports

```tcl
write_snapshot
report_summary
```

## Purpose
Stores final synthesis database and reports.

---

# 22. Writing Final SDC

```tcl
write_sdc
```

## Purpose
Writes updated timing constraints.

---

# 23. Final Runtime Information

```tcl
time_info FINAL
```

## Purpose
Displays complete runtime statistics.

---

# 24. Completion Message

```tcl
puts "Synthesis Finished ........."
```

## Purpose
Indicates successful completion of synthesis.

---

# Complete Flow Summary

```text
RTL Verilog
     ↓
Read HDL
     ↓
Elaboration
     ↓
Constraint Loading
     ↓
Generic Synthesis
     ↓
Technology Mapping
     ↓
Optimization
     ↓
Gate-Level Netlist
     ↓
Reports + Constraints + LEC Scripts
```

---

# Important Output Files Generated

## Reports Directory
Contains:
- Timing reports
- Area reports
- QoR reports
- Datapath reports

## Outputs Directory
Contains:
- Final SDC
- LEC scripts
- Gate-level netlists

## Logs Directory
Contains:
- Runtime logs
- Warning logs
- Debugging information

---

# Understanding the Final Results

## Timing Result

Important metrics:

### WNS (Worst Negative Slack)

```text
WNS >= 0 → Timing met
WNS < 0  → Timing violation
```

### TNS (Total Negative Slack)

Sum of all timing violations.

---

## Area Result

Obtained from area reports.

Important metrics:
- Total standard cell area
- Macro area
- Sequential area
- Combinational area

---

## Power Result

Includes:
- Dynamic power
- Leakage power
- Total power

---

## Gate Count

Shows:
- Number of gates
- Flip-flops
- Buffers
- Inverters

---

# Final Conclusion

This `run.tcl` script performs a complete RTL-to-Gate-Level synthesis flow using Cadence Genus.

The script:
1. Loads RTL.
2. Loads technology libraries.
3. Applies timing constraints.
4. Performs generic synthesis.
5. Maps logic to standard cells.
6. Optimizes timing, area, and power.
7. Generates reports.
8. Creates formal verification scripts.
9. Produces outputs required for physical design.

The final result is an optimized gate-level implementation ready for:
- Formal verification
- Static timing analysis
- Place and Route
- Physical implementation
