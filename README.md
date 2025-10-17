# Attendant Call System – Verilog State Machine

A sequential circuit designed in Verilog for ELEC 2607 Lab 5.  
Implements an event-driven attendant call system using a finite state machine (FSM).

---

## Overview
The design simulates a three-state machine (S0, S1, S2) with LED outputs reflecting state transitions.
Inputs include a 100 MHz clock, a reset button, and two switches that control transitions.
Simulation and testing were performed in ModelSim/Vivado.

---

## Specifications
**Inputs**
- `CLK100MHZ`: 100 MHz clock
- `BTNC`: Asynchronous reset
- `SW[1:0]`: State control switches

**Outputs**
- `LED[1:0]`: State indicators

---

## Files
| File | Description |
|------|--------------|
| `src/Attendant_Call.v` | Verilog module implementing the FSM |
| `src/Attendant_Call_TB.v` | Testbench for simulation |
| `docs/ELEC2607_Lab5_Report.pdf` | Original lab report |

---

## How to Simulate
1. Open ModelSim or Vivado.
2. Add both Verilog files from `/src`.
3. Run the testbench `Attendant_Call_TB.v`.
4. Observe state transitions and LED outputs in the waveform window.

---

## Author
**Dumany Lombe**  
Carleton University – Electrical Engineering
