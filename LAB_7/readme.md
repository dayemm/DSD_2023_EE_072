# Sequential Circuit Design: Clock Manipulation

## Overview
This project implements a sequential control system for a 7-segment display using SystemVerilog. The design enables storing and displaying multiple digits sequentially on the display. A clock divider is used to control the refresh rate of the display, and memory is utilized to store the digits for each segment.

## Files Included
- **lab7.sv**: The main SystemVerilog module implementing the sequential 7-segment display logic.

- **constraints.xdc**: Constraint file defining the FPGA pin assignments for inputs and outputs.

## Features
- Stores up to 8 digits for sequential display.
- Uses a clock divider to manage display refresh rates.
- Implements anode selection for multiplexing.
- Supports write operations to update stored digits dynamically.

## Inputs & Outputs
### **Inputs**
- `clk`: Clock signal.
- `reset`: Resets the system.
- `write`: Enables writing to memory.
- `num[3:0]`: 4-bit input representing the digit to display.
- `sel[2:0]`: 3-bit selector to choose the segment for writing.

### **Outputs**
- `anode[7:0]`: Controls which display digit is active.
- `cathodes[6:0]`: Determines which segments are lit up to display the digit.

## FPGA Constraints
The constraint file `constraints.xdc` maps FPGA pins to module inputs and outputs. Ensure the FPGA board matches the expected pin configuration.

### **Cathode-to-Segment Mapping**
- `cathodes[6]` → Segment A
- `cathodes[5]` → Segment B
- `cathodes[4]` → Segment C
- `cathodes[3]` → Segment D
- `cathodes[2]` → Segment E
- `cathodes[1]` → Segment F
- `cathodes[0]` → Segment G



