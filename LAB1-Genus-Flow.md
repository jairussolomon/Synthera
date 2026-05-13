# LAB1: Base Lab for Genus — Complete Explanation

## Goal of LAB1

The purpose of LAB1 is to take an RTL Verilog design and convert it into a synthesized gate-level netlist using Cadence Genus.

Flow is basically:

```text
RTL Verilog
   ↓
Read Libraries
   ↓
Read RTL
   ↓
Elaborate
   ↓
Read Constraints
   ↓
Generic Synthesis
   ↓
Technology Mapping
   ↓
Optimization
   ↓
Write Netlist + Reports
```

---

# STEP 1 — Go to LAB1 Directory

```bash
cd Genus_CUI_RAK
cd LAB1
```

This moves you into the working directory for Lab1.

The RAK structure is:

```text
constraints/   -> SDC timing constraints
LIB/           -> .lib timing libraries
LEF/           -> physical LEF files
RTL/           -> Verilog RTL
LAB1/          -> scripts for basic synthesis
```

---

# STEP 2 — Start Genus

```bash
genus -log synth_flow.log
```

This launches Cadence Genus and stores logs in:

```text
synth_flow.log
```

You’ll enter the Genus shell:

```text
genus@root:>
```

---

# STEP 3 — Load Timing Libraries (.lib)

Command:

```tcl
set_db / .library { ../LIB/slow.lib ../LIB/pll.lib \
../LIB/CDK_S128x16.lib ../LIB/CDK_S256x16.lib \
../LIB/CDK_R512x16.lib}
```

## What is happening here?

You are telling Genus:

> “These are the standard cells and memory macros available for synthesis.”

These `.lib` files contain:

- Cell delay information
- Setup/hold timings
- Power data
- Area data
- Functional behavior

Without libraries, synthesis is impossible because Genus doesn't know:

- what NAND gate exists
- what flip-flop exists
- how fast cells are
- power consumption

### `slow.lib`

Usually worst-case timing corner.

Used for:
- timing closure
- pessimistic delay analysis

### `pll.lib`

PLL macro timing model.

### `CDK_*.lib`

Memory macro libraries.

Examples:
- SRAM blocks
- ROMs

---

# STEP 4 — Load LEF Files

Command:

```tcl
set_db / .lef_library { ../LEF/gsclib045_tech.lef 
../LEF/gsclib045_macro.lef ../LEF/pll.lef 
../LEF/CDK_S128x16.lef ../LEF/CDK_S256x16.lef 
../LEF/CDK_R512x16.lef}
```

# Why LEF files?

LEF = Library Exchange Format

These describe PHYSICAL information:

- cell dimensions
- pin locations
- routing layers
- metal info

This enables:

## PLE (Physical Layout Estimation)

Genus can estimate:
- congestion
- wire delay
- placement quality

without actual placement.

---

# STEP 5 — Read RTL Design

Command:

```tcl
read_hdl " pllclk.v accum_stat.v alu_32.v ..."
```

# What this does

Reads all Verilog RTL files into memory.

At this stage:
- No synthesis yet
- No gates yet
- Only parsing HDL

Genus checks:
- syntax
- module definitions
- connectivity

## Important

ALL RTL files must be included.

Missing one module causes:

```text
Unresolved reference
```

---

# STEP 6 — Elaborate Design

Command:

```tcl
elaborate
```

# This is VERY important

Elaboration converts RTL text into an internal design database.

Think of it as:

```text
Verilog code
   ↓
Hierarchical design representation
```

## During elaboration Genus:

### 1. Resolves module hierarchy

Example:

```verilog
top
 ├── alu
 ├── controller
 └── memory
```

### 2. Evaluates parameters

Example:

```verilog
parameter WIDTH = 32
```

becomes concrete values.

### 3. Infers registers and logic

Example:

```verilog
always @(posedge clk)
```

becomes inferred flip-flops internally.

### 4. Builds timing graph

Needed later for STA.

## Important

You MUST see:

```text
Done elaborating....
```

Otherwise something failed.

---

# STEP 7 — Check Unresolved References

Command:

```tcl
check_design -unresolved
```

# Why this matters

Checks if:
- all modules exist
- all instances resolved
- no missing RTL

If unresolved modules exist and you continue synthesis:
- results become garbage
- timing inaccurate
- netlist incomplete

This step is extremely important in real industry flows.

---

# STEP 8 — Read Timing Constraints (SDC)

Command:

```tcl
read_sdc ../constraints/dtmf_recvr_core_gate.sdc
```

# What is SDC?

SDC = Synopsys Design Constraints

This tells Genus:

- clock frequency
- input delays
- output delays
- false paths
- multicycle paths
- timing exceptions

# Why constraints matter

Without constraints:

Genus has NO idea:
- how fast design should run
- what timing to optimize for

Result:
- meaningless synthesis

---

# STEP 9 — Reset Design (Optional)

```tcl
reset_design
```

Used when:
- you modify constraints
- want to reread SDC

Then:

```tcl
read_sdc ...
```

again.

---

# STEP 10 — Set Generic Synthesis Effort

Command:

```tcl
set_db syn_generic_effort medium
```

# What is Generic Synthesis?

This stage converts RTL into:

```text
Generic Boolean Gates
```

NOT technology cells yet.

Example:

```text
RTL adder
   ↓
Generic logic representation
```

# Effort Levels

```text
low
medium
high
express
```

Higher effort:
- better QoR
- slower runtime

---

# STEP 11 — Run Generic Synthesis

Command:

```tcl
syn_generic
```

# What happens internally?

Genus performs:

## RTL optimizations

- constant propagation
- dead logic removal
- FSM optimization
- arithmetic optimization
- Boolean simplification

# Output after this stage

Technology-independent logic.

Still not real standard cells.

---

# STEP 12 — Set Mapping + Optimization Effort

Commands:

```tcl
set_db syn_map_effort medium
set_db syn_opt_effort medium
```

# Meaning

## `syn_map_effort`

Controls effort during:
- mapping to real cells

## `syn_opt_effort`

Controls:
- timing optimization
- area optimization
- power optimization

---

# STEP 13 — Technology Mapping

Command:

```tcl
syn_map
```

# MOST IMPORTANT STEP

This converts generic logic into REAL cells from `.lib`.

Example:

```text
Generic AND
   ↓
NAND2_X1
INV_X2
AOI21_X1
```

Now design becomes manufacturable.

---

# STEP 14 — Optimization

Command:

```tcl
syn_opt
```

# What optimization does

Genus improves:

## Timing
- reduce slack violations

## Area
- reduce gate count

## Power
- lower switching/leakage

# Techniques used internally

- gate sizing
- logic restructuring
- buffer insertion
- path balancing
- logic duplication

---

# STEP 15 — Write Database

Command:

```tcl
write_db dtmf_recvr_core -to_file design.db
```

# Purpose

Saves internal Genus database.

Useful for:
- reopening session
- debugging
- incremental synthesis

---

# STEP 16 — Write Synthesized Netlist

Command:

```tcl
write_hdl > design_syn.v
```

# Output

Gate-level Verilog netlist.

Example:

```verilog
NAND2_X1 U1 (...);
DFF_X1 U2 (...);
```

This is what goes to:
- PnR
- STA
- simulation

---

# STEP 17 — Write Final Constraints

Command:

```tcl
write_sdc > design_syn.sdc
```

# Why export SDC?

Needed for downstream tools:

- Innovus
- Tempus
- PrimeTime

Ensures same timing constraints continue through flow.

---

# Overall Big Picture

LAB1 teaches the complete basic RTL-to-gates synthesis flow:

```text
Libraries
   ↓
RTL Read
   ↓
Elaboration
   ↓
Constraint Read
   ↓
Generic Synthesis
   ↓
Technology Mapping
   ↓
Optimization
   ↓
Gate Netlist Output
```

---

# Most Important Commands to Remember

| Command | Purpose |
|---|---|
| `read_hdl` | Read RTL |
| `elaborate` | Build design hierarchy |
| `check_design -unresolved` | Check missing modules |
| `read_sdc` | Read timing constraints |
| `syn_generic` | Generic synthesis |
| `syn_map` | Map to real cells |
| `syn_opt` | Optimize design |
| `write_hdl` | Export synthesized netlist |

---

# Industry Insight

In real ASIC flows:

## RTL Team
Writes Verilog.

## Synthesis Engineer
Runs exactly this kind of flow in Genus/DC.

## Backend Team
Uses synthesized netlist for:
- placement
- routing
- timing closure

So this lab is basically your first real ASIC synthesis flow.
