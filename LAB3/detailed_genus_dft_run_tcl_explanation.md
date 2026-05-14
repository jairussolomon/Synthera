# Cadence Genus DFT Flow — Detailed `run.tcl` Explanation

# Introduction

This lab demonstrates the complete **DFT (Design for Testability) flow** using **Cadence Genus**.

The `run.tcl` script automates:
- RTL loading
- Library setup
- Timing constraint setup
- DFT configuration
- Scan chain setup
- DFT rule checking
- Timing analysis
- Report generation

The design synthesized in this flow is:

```tcl
dtmf_recvr_core
```

---

# Overall DFT Flow

```text
Environment Setup
        ↓
Library Setup
        ↓
Read RTL
        ↓
Elaboration
        ↓
Design Checking
        ↓
Constraint Setup
        ↓
Timing Analysis
        ↓
DFT Configuration
        ↓
Test Signal Definition
        ↓
Scan Chain Definition
        ↓
DFT Rule Checking
        ↓
Report Generation
```

---

# 1. Environment and Runtime Setup

## Commands

```tcl
sh grep "model name" /proc/cpuinfo
sh grep "cpu MHz" /proc/cpuinfo
puts "Hostname : [info hostname]"
```

## Purpose

Displays:
- CPU information
- CPU frequency
- Hostname of the server

## Why It Is Important

- Identifies synthesis machine
- Helps compare runtime across systems
- Useful in shared EDA server environments

---

# 2. Global Variable Setup

## Commands

```tcl
set DESIGN dtmf_recvr_core
set GEN_EFF medium
set MAP_OPT_EFF high
```

## Purpose

Defines important synthesis variables.

---

## DESIGN

Stores the top module name.

```tcl
dtmf_recvr_core
```

---

## GEN_EFF

Controls generic synthesis effort.

Possible values:
- low
- medium
- high

Higher effort:
- Better optimization
- Better QoR
- More runtime

---

## MAP_OPT_EFF

Controls mapping and optimization effort.

Used during:
- Technology mapping
- Optimization stages

---

# 3. Output Directory Setup

## Commands

```tcl
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}
```

## Purpose

Creates timestamped directories.

---

## Generated Directories

Example:

```text
outputs_May13-11_20_45
reports_May13-11_20_45
logs_May13-11_20_45
```

---

## Benefit

- Prevents overwriting old runs
- Keeps reports organized
- Easier debugging and comparison

---

# 4. Search Path Setup

## Commands

```tcl
set_db / .init_lib_search_path {. ../LIB}
set_db / .init_hdl_search_path {. ../RTL}
```

## Purpose

Defines file search locations.

---

## Library Search Path

Used to locate:
- `.lib` timing libraries
- Memory libraries
- Macro libraries

---

## HDL Search Path

Used to locate:
- RTL Verilog files

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
set_db / .library
set_db / .lef_library
```

## Purpose

Loads:
- Timing libraries
- Physical libraries

---

# Standard Cell Libraries (`.lib`)

Contain:
- Timing data
- Area data
- Power data

Includes cells like:
- NAND
- NOR
- Flip-flops
- Buffers
- Inverters

---

# LEF Libraries (`.lef`)

Contain:
- Cell dimensions
- Pin locations
- Routing information

Required for:
- Physical-aware synthesis

---

# 7. Reading RTL Files

## Command

```tcl
read_hdl
```

## Purpose

Reads all RTL Verilog files.

---

## Internal Operations

Genus:
1. Parses RTL
2. Creates module hierarchy
3. Resolves module instantiations
4. Creates RTL database

---

# 8. Elaboration

## Command

```tcl
elaborate $DESIGN
```

## Purpose

Builds the complete hierarchical design.

---

## Operations Performed

- Module expansion
- Parameter resolution
- Connectivity creation
- RTL netlist generation

---

# 9. Runtime and Memory Reporting

## Command

```tcl
time_info Elaboration
```

## Purpose

Displays:
- Runtime consumed
- Memory usage

after elaboration.

---

# 10. Design Checking

## Commands

```tcl
check_design
check_design -unresolved
```

## Purpose

Checks RTL consistency.

---

## Detects

- Missing modules
- Unresolved references
- Port mismatches
- Multiple drivers
- Combinational loops

---

# 11. Timing Constraint Setup

## Command

```tcl
read_sdc ../constraints/dtmf_recvr_core_gate.sdc
```

## Purpose

Loads timing constraints.

---

# SDC Constraints Include

- Clock definitions
- Input delays
- Output delays
- False paths
- Multicycle paths
- Timing exceptions

---

# 12. Timing Intent Checking

## Command

```tcl
check_timing_intent
```

## Purpose

Verifies correctness of timing constraints.

---

## Detects

- Missing clocks
- Invalid timing constraints
- Unconstrained paths

---

# 13. Cost Group and Path Group Definition

## Commands

```tcl
define_cost_group
path_group
```

## Purpose

Groups timing paths for optimization.

---

# Path Groups

## I2C
Input → Register

## C2C
Register → Register

## C2O
Register → Output

## I2O
Input → Output

---

# Benefit

Allows separate optimization for different path types.

---

# 14. Pre-Timing Analysis

## Command

```tcl
report_timing
```

## Purpose

Generates timing report before DFT insertion.

---

# Report Contains

- Critical paths
- Setup slack
- Hold slack
- Timing violations

---

# 15. DFT Configuration

## Command

```tcl
set_db / .dft_scan_style muxed_scan
```

## Purpose

Enables DFT scan configuration.

---

# DFT Features Enabled

## Muxed Scan

Converts normal flip-flops into scan flip-flops.

---

## Scan Mapping

Controls scan insertion.

---

## Lockup Elements

Helps prevent clock skew problems between scan chains.

---

# 16. Test Signal Definition

## Commands

```tcl
define_test_clock
define_shift_enable
define_test_mode
```

## Purpose

Defines scan-related control signals.

---

# Signals Defined

## scanclk
Scan clock used during testing.

## se
Shift enable signal.

## tm
Test mode signal.

---

# 17. Scan Chain Definition

## Command

```tcl
define_scan_chain
```

## Purpose

Creates scan chain connectivity.

---

# Scan Chain Structure

```text
scan_in → scan FFs → scan_out
```

---

# Benefit

Allows serial shifting of test data through scan registers.

Used for:
- ATPG
- Manufacturing testing
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

Checks correctness of DFT implementation.

---

# Checks Performed

- Scan connectivity
- Test signal correctness
- Scan register mapping
- Shift enable validity

---

# 19. Advanced DFT Rule Checking

## Optional Command

```tcl
check_dft_rules -advanced
```

## Detects

- X-source violations
- Clock race conditions
- Tristate violations
- Testability problems

---

# 20. DFT Violation Fixing

## Optional Command

```tcl
fix_dft_violations
```

## Purpose

Automatically fixes:
- Async reset issues
- Async set issues
- DFT rule violations

---

# Output Files Generated

# 1. Timing Reports

## Example File

```text
dtmf_recvr_core_pretim.rpt
```

## Contains

- Setup timing
- Hold timing
- Critical paths
- Slack information

---

# 2. DFT Rule Reports

## Example Files

```text
dtmf_recvr_core-tdrcs
dtmf_recvr_core-DFTsetup_tdrc
```

## Contains

- DFT violations
- Scan setup information
- Test signal analysis

---

# 3. Scan Register Reports

## Example File

```text
dtmf_recvr_core-DFTregs
```

## Contains

- Scan register list
- Scan chain mapping
- Scan FF information

---

# 4. Log Files

## Located In

```text
logs_DATE/
```

## Contains

- Runtime logs
- Warnings
- Debugging information
- DFT logs

---

# Result and Output Explanation

# 1. Timing Results

Obtained from:
- `pretim.rpt`
- timing reports

---

## WNS (Worst Negative Slack)

```text
WNS >= 0 → Timing met
WNS < 0 → Timing violation
```

Example:

```text
WNS = -0.15 ns
```

means timing failed by 0.15 ns.

---

## TNS (Total Negative Slack)

Represents total timing violations across all failing paths.

Lower value is better.

---

# 2. DFT Results

# Scan Chain Connectivity

Checks whether:
- All scan FFs are connected properly
- Scan chain is continuous

---

# Test Signal Verification

Checks:
- Scan clock definition
- Shift enable functionality
- Test mode correctness

---

# Scan Register Mapping

Verifies:
- Flip-flops converted into scan cells
- Correct scan replacement

---

# DFT Rule Violations

Common violations:
- Uncontrollable clocks
- Asynchronous reset problems
- Tristate violations
- Missing scan connectivity

---

# 3. Report Analysis

# Timing Report

Used to analyze:
- Critical paths
- Setup violations
- Hold violations

---

# DFT Reports

Used to analyze:
- Scan readiness
- Scan connectivity
- Testability issues

---

# Final Conclusion

This `run.tcl` demonstrates the complete Cadence Genus DFT preparation flow.

The flow performs:
1. Environment setup
2. Library setup
3. RTL loading
4. Elaboration
5. Timing constraint setup
6. Timing analysis
7. DFT scan configuration
8. Test signal definition
9. Scan chain definition
10. DFT rule checking
11. Timing and DFT report generation

The final output is a DFT-ready design prepared for:
- Scan insertion
- ATPG generation
- Fault testing
- Timing analysis
- Physical design implementation
