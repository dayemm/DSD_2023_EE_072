# Seven-Segment Display Driver (FPGA - Nexys A7)

## Overview
This project implements a **Seven-Segment Display Driver** for the **Nexys A7 FPGA**. The circuit takes a **4-bit binary input** (`num[3:0]`) and displays its corresponding **hexadecimal digit (0-F)** on a selected **seven-segment display** (`sel[2:0]`). The module outputs the **active-low control signals** for each segment and display.

## Features
- **Supports hexadecimal digits (0-F)** on the display.
- **Seven-segment control (`seg[6:0]`)** for individual segment activation.
- **Eight-digit display selection (`sel[7:0]`)** for enabling specific displays.
- **Combinational logic implementation using always_comb.**

## Files
- `seven_seg_display.sv` - **SystemVerilog source file** containing the main module.
- `seven_seg_tb.sv` - **Testbench file** for simulation.
- `README.md` - This documentation file.

## Inputs and Outputs
| Signal  | Direction | Width | Description |
|---------|----------|--------|-------------|
| `num`   | Input    | 4-bit  | Hexadecimal number (0-F) to display |
| `sel`   | Input    | 3-bit  | Selects which seven-segment display to activate |
| `seg`   | Output   | 7-bit  | Controls the segments (A to G) |
| `sel`    | Output   | 8-bit  | Active-low enable signals for displays |

## Implementation Details
The seven-segment display follows the **truth table** for hexadecimal digits (0-F), and the corresponding **Boolean equations** were derived using **Karnaugh Maps (K-Maps)**.

### Seven-Segment Encoding
The `seg[6:0]` output controls the individual segments:
- `seg[0]` → Segment A
- `seg[1]` → Segment B
- `seg[2]` → Segment C
- `seg[3]` → Segment D
- `seg[4]` → Segment E
- `seg[5]` → Segment F
- `seg[6]` → Segment G

Each segment is activated using a combination of **K-map simplified logic equations** implemented in `always_comb`.

## Truth Tables
### Cathode Control (Segment Activation)
| Char | num[3] | num[2] | num[1] | num[0] | sega | segb | segc | segd | sege | segf | segg |
|------|--------|--------|--------|--------|------|------|------|------|------|------|------|
| 0    | 0      | 0      | 0      | 0      | 0    | 0    | 0    | 0    | 0    | 0    | 1    |
| 1    | 0      | 0      | 0      | 1      | 1    | 0    | 0    | 1    | 1    | 1    | 1    |
| 2    | 0      | 0      | 1      | 0      | 0    | 0    | 1    | 0    | 0    | 1    | 0    |
| 3    | 0      | 0      | 1      | 1      | 0    | 0    | 0    | 0    | 1    | 1    | 0    |
| 4    | 0      | 1      | 0      | 0      | 1    | 0    | 0    | 1    | 1    | 0    | 0    |
| 5    | 0      | 1      | 0      | 1      | 0    | 1    | 0    | 0    | 1    | 0    | 0    |
| 6    | 0      | 1      | 1      | 0      | 0    | 1    | 0    | 0    | 0    | 0    | 0    |
| 7    | 0      | 1      | 1      | 1      | 0    | 0    | 0    | 1    | 1    | 1    | 1    |
| 8    | 1      | 0      | 0      | 0      | 0    | 0    | 0    | 0    | 0    | 0    | 0    |
| 9    | 1      | 0      | 0      | 1      | 0    | 0    | 0    | 0    | 1    | 0    | 0    |

### Anode Control (Display Selection)
| sel[2] | sel[1] | sel[0] | seg[7] | seg[6] | seg[5] | seg[4] | seg[3] | seg[2] | seg[1] | seg[0] |
|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
| 0      | 0      | 0      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 0      |
| 0      | 0      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 0      | 1      |
| 0      | 1      | 0      | 1      | 1      | 1      | 1      | 1      | 0      | 1      | 1      |
| 0      | 1      | 1      | 1      | 1      | 1      | 1      | 0      | 1      | 1      | 1      |

## Synthesis and Simulation
### Steps to Run on **Vivado**:
1. Open **Vivado** and create a new **Project**.
2. Add `seven_seg_display.sv` to the **Design Sources**.
3. Add `seven_seg_tb.sv` to the **Simulation Sources**.
4. Run **Simulation** to verify functionality.
5. Generate **Bitstream** and program the Nexys A7 board.

## Conclusion
This project successfully demonstrates **combinational logic design** for a seven-segment display using an **FPGA (Nexys A7)**. The design is optimized for efficiency using **K-Maps** and **structural coding style**. 🚀

