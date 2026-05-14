# Cadence Genus DFT Synthesis Flow — `run.tcl` Explanation

This lab demonstrates the complete **DFT-aware RTL-to-Gate synthesis flow** using **Cadence Genus**.  
The `run.tcl` script automates the synthesis and DFT setup process for the design:

```tcl
dtmf_recvr_core
```

The flow includes:
- RTL loading
- Library setup
- Constraint loading
- DFT configuration
- Scan chain setup
- Rule checking
- Timing and synthesis preparation

---

# Overall Flow

```text
Environment Setup
        ↓
Library Setup
        ↓
Read RTL
        ↓
Elaboration
        ↓
Constraint Loading
        ↓
Timing Setup
        ↓
DFT Setup
        ↓
Scan Chain Definition
        ↓
DFT Rule Checking
        ↓
Report Generation
```

---

# 1. System Information Setup

## Commands

```tcl
sh grep "model name" /proc/cpuinfo
sh grep "cpu MHz" /proc/cpuinfo
puts "Hostname : [info hostname]"
```

## Purpose

This stage prints:
- CPU model
- CPU frequency
- Machine hostname

## Why It Is Used

- Identifies the server/machine running synthesis
- Useful in multi-server EDA environments
- Helps compare runtime performance

---

# 2. Global Variable Setup

## Commands

```tcl
set DESIGN dtmf_recvr_core
set GEN_EFF medium
set MAP_OPT_EFF high
```

## Purpose

Defines important synthesis parameters.

## Explanation

### DESIGN
Defines the top-level module.

### GEN_EFF
Controls generic synthesis effort.

### MAP_OPT_EFF
Controls mapping and optimization effort.

Higher effort:
- Better optimization
- Better QoR
- More runtime

---

# 3. Directory and Runtime Setup

## Commands

```tcl
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}
```

## Purpose

Creates timestamped directories for:
- Reports
- Logs
- Outputs

## Output

Example directories:

```text
outputs_May13-10_30_11
reports_May13-10_30_11
logs_May13-10_30_11
```

---

# 4. Search Path Setup

## Commands

```tcl
set_db / .init_lib_search_path {. ../LIB}
set_db / .init_hdl_search_path {. ../RTL}
```

## Purpose

Defines:
- Library search path
- RTL search path

## Explanation

### LIB Path
Contains:
- `.lib`
- timing libraries
- memory libraries

### RTL Path
Contains Verilog RTL files.

---

# 5. Information Level Setup

## Command

```tcl
set_db / .information_level 7
```

## Purpose

Controls verbosity of Genus logs.

Higher value:
- More detailed logs
- More debugging information

---

# 6. Library Setup

## Commands

```tcl
read_libs
read_physical -lef
```

## Purpose

Loads technology and physical libraries.

---

## Standard Cell Libraries (`.lib`)

Used for:
- Timing models
- Area models
- Power models

Includes:
- NAND gates
- NOR gates
- Flip-flops
- Buffers

---

## LEF Libraries (`.lef`)

Used for:
- Cell dimensions
- Pin locations
- Routing layers

Required for:
- Physical-aware synthesis

---

# 7. Reading RTL Files

## Command

```tcl
read_hdl
```

## Purpose

Reads all Verilog design files.

## Internal Operations

Genus:
1. Parses RTL
2. Builds module hierarchy
3. Resolves module instantiations
4. Creates RTL database

---

# 8. Elaboration

## Command

```tcl
elaborate $DESIGN
```

## Purpose

Builds the complete design hierarchy.

## What Happens

- Module expansion
- Parameter resolution
- Connectivity generation
- RTL netlist creation

---

# 9. Runtime and Memory Reporting

## Command

```tcl
time_info Elaboration
```

## Purpose

Displays:
- Runtime
- Memory usage

after elaboration.

---

# 10. Design Checking

## Command

```tcl
check_design -unresolved
```

## Purpose

Checks:
- Missing modules
- Unresolved references
- RTL inconsistencies

## Output

Reports unresolved RTL or missing hierarchy issues.

---

# 11. Constraint Setup

## Command

```tcl
read_sdc ../constraints/dtmf_recvr_core_gate.sdc
```

## Purpose

Loads timing constraints.

## SDC Includes

- Clock definitions
- Input delays
- Output delays
- Timing exceptions
- False paths

---

# 12. Timing Intent Checking

## Command

```tcl
check_timing_intent
```

## Purpose

Checks validity of timing constraints.

## Detects

- Missing clocks
- Invalid constraints
- Unconstrained paths

---

# 13. Cost Group Definition

## Commands

```tcl
define_cost_group
path_group
```

## Purpose

Groups timing paths for optimization.

## Path Groups

### I2C
Input → Register

### C2C
Register → Register

### C2O
Register → Output

### I2O
Input → Output

## Benefit

Allows Genus to optimize different timing paths separately.

---

# 14. Pre-Timing Report Generation

## Command

```tcl
report_timing
```

## Purpose

Generates initial timing reports before DFT insertion.

## Output File

```text
${DESIGN}_pretim.rpt
```

Contains:
- Critical paths
- Slack values
- Timing violations

---

# 15. DFT Setup

## Commands

```tcl
set_db / .dft_scan_style muxed_scan
```

## Purpose

Enables DFT configuration.

---

## DFT Features Enabled

### Muxed Scan
Converts normal flip-flops into scan flip-flops.

### Scan Mapping
Controls scan insertion behavior.

### Scan Output Preference
Defines scan output handling.

### Lockup Elements
Helps avoid clock skew issues in scan chains.

---

# 16. Test Signal Definition

## Commands

```tcl
define_test_clock
define_shift_enable
define_test_mode
```

## Purpose

Defines scan-related test signals.

---

## Signals Defined

### scanclk
Scan test clock

### se
Shift enable signal

### tm
Test mode signal

---

# 17. Scan Chain Definition

## Command

```tcl
define_scan_chain
```

## Purpose

Creates scan chain connections.

## Scan Chain

```text
scan_in → scan registers → scan_out
```

## Benefit

Allows serial shifting of test data.

Required for:
- Manufacturing testing
- ATPG
- Fault detection

---

# 18. DFT Rule Checking

## Commands

```tcl
check_dft_rules
report_scan_registers
report_scan_setup
```

## Purpose

Checks DFT correctness.

---

## Checks Performed

- Scan connectivity
- Test clock validity
- Shift enable correctness
- Scan register mapping

---

# 19. Advanced DFT Checking

## Optional Commands

```tcl
check_dft_rules -advanced
```

## Detects

- X-source generators
- Tristate violations
- Clock/data race conditions

---

# 20. DFT Violation Fixing

## Optional Commands

```tcl
fix_dft_violations
```

## Purpose

Automatically fixes:
- Async reset issues
- Async set issues
- Scan control problems

---

# Output Files Generated

# 1. Timing Reports

## File

```text
${DESIGN}_pretim.rpt
```

## Contains

- Setup timing
- Hold timing
- Critical paths
- Slack analysis

---

# 2. DFT Rule Reports

## Files

```text
${DESIGN}-tdrcs
${DESIGN}-DFTsetup_tdrc
```

## Contains

- DFT rule violations
- Scan setup information
- Test signal analysis

---

# 3. Scan Register Report

## File

```text
${DESIGN}-DFTregs
```

## Contains

- Scan flip-flop list
- Scan chain connectivity
- Register mapping

---

# Understanding the Results

# Timing Results

## WNS (Worst Negative Slack)

```text
WNS >= 0 → Timing met
WNS < 0 → Timing violation
```

---

## TNS (Total Negative Slack)

Sum of all negative slack paths.

Lower value is better.

---

# DFT Results

Important checks:

## Scan Chain Connectivity
Ensures all scan registers are connected correctly.

## Test Clock Verification
Checks proper scan clock definition.

## Shift Enable Verification
Checks correct shift operation.

## Scan Register Mapping
Verifies flip-flops converted into scan cells.

---

# Final Conclusion

This `run.tcl` script demonstrates a complete **Cadence Genus DFT synthesis flow**.

The flow performs:
1. Library setup
2. RTL loading
3. Elaboration
4. Timing constraint setup
5. Timing path grouping
6. DFT configuration
7. Scan chain definition
8. DFT rule checking
9. Timing and DFT report generation

The final result is a DFT-ready synthesized design prepared for:
- Scan insertion
- ATPG
- Formal verification
- Timing analysis
- Physical design flow
