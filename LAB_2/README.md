## LAB2 Combinational Circuits and Structural Modeling using Vivado
This experiment includes the SystemVerilog code for structural modeling and the constraint file for synthesizing the circuit to the Nexys A7-100T FPGA board. The following circuit has been implemented:


### Circuit diagram:
<img width="635" alt="Image" src="https://github.com/user-attachments/assets/d01158ab-5a80-484a-8062-f24c7a56111d" />

Figure 1: Circuit diagram of the combinational circuit




**Truth Table of the circuit**:

| A | B | C | x| y        |
|---|---|---|-----|-------|
| 0 | 0 | 0 |  1 |   0   |
| 0 | 0 | 1 |  0  |   0   |
| 0 | 1 | 0 |  0  |   0   |
| 0 | 1 | 1 |  1  |   0   |
| 1 | 0 | 0 |  0  |   0   |
| 1 | 0 | 1 |  1  |   0   |
| 1 | 1 | 0 |  0  |   1   |
| 1 | 1 | 1 |  1  |   1   |

# **System Verilog code (rtl) and constraints (xdc) :** 
###  RTL Module

### 📌 **Module Description**
This module, `LAB3`, takes three inputs (`a, b, c`) and produces two outputs (`x, y`). The logic is implemented using **bitwise operations**:  
- `d = a | b` → Performs **bitwise OR** on inputs `a` and `b`.  
- `x = d ^ (~c)` → Performs **XOR** between `d` and **negated `c`**.  
- `f = d ^ (~(a & b))` → Computes **XOR** between `d` and **negated AND of `a` and `b`**.  
- `y = f & d` → Performs **AND** operation between `f` and `d`.  


### 📌 FPGA Constraints (`.xdc` File)
This constraint file maps the **Verilog module ports** to the **FPGA package pins** and defines their **I/O standard** as `LVCMOS33`  available on the Neuxs A7-100t FPGA board.

### 🔹 Pin Assignments
| **Signal** | **Package Pin** | **IO Standard** | **Description** |
|------------|---------------|-----------------|-----------------|
| `x`  | H17 | LVCMOS33 | LED output (`x`) |
| `y`  | K15 | LVCMOS33 | LED output (`y`) |
| `a`  | J15 | LVCMOS33 | Input signal (`a`) |
| `b`  | L16 | LVCMOS33 | Input signal (`b`) |
| `c`  | M13 | LVCMOS33 | Input signal (`c`) |


