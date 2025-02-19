# Lab 3: Combinational Circuits - Structural Modeling Simulation

Circuit diagram:
v
<img width="635" alt="Image" src="https://github.com/user-attachments/assets/d01158ab-5a80-484a-8062-f24c7a56111d" />

  

## Objective
The objective of this lab is to implement and simulate combinational circuits using structural modeling in SystemVerilog. Students will verify the truth table of a given circuit, debug errors in provided code, and simulate the circuit using QuestaSim.

## Tasks

### Task 1: Implement the Circuit in QuestaSim
- Implement the given circuit (Fig. 3.17) using SystemVerilog.
- Verify the circuit's functionality by generating its truth table.

### Task 2: Debug and Simulate the Full Adder Circuit
- Correct errors in the provided RTL and testbench code.
- Compile and simulate the corrected code in QuestaSim.
- Verify the correctness of the sum and carry outputs using the equations:
  
  \[ \text{Sum} = (A \oplus B) \oplus C \]  
  \[ \text{Carry} = A \cdot B + C \cdot (A \oplus B) \]

## Truth Table of the Circuit

| A | B | C | X | Y |
|---|---|---|---|---|
| 0 | 0 | 0 | 1 | 0 |
| 0 | 0 | 1 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Errors Identified and Corrected

### Errors in Full Adder SystemVerilog Code (Listing 4)
1. Extra comma after `carry` in module declaration.
2. Missing `assign` statement before `sum`.
3. Incorrect syntax in the carry equation (`c(a ^ b)` should be `c & (a ^ b)`).

#### Corrected Full Adder Code
```verilog
module full_adder(
    input logic a,
    input logic b,
    input logic c,
    output logic sum,
    output logic carry
);
    assign sum = (a ^ b) ^ c;
    assign carry = (a & b) | (c & (a ^ b));
endmodule
```

### Errors in Full Adder Testbench Code (Listing 5)
1. Missing `logic carry1` declaration.
2. Missing `UUT` instance name in module instantiation.
3. Incorrect variable names in input assignments.
4. Missing semicolon in `#10` statement.
5. Missing `end` keyword at the end of the testbench.

#### Corrected Full Adder Testbench Code
```verilog
module full_adder_tb();
    logic a1, b1, c1;
    logic sum1, carry1;
    
    full_adder UUT (
        .a(a1),
        .b(b1),
        .c(c1),
        .sum(sum1),
        .carry(carry1)
    );
    
    initial begin
        a1 = 0; b1 = 0; c1 = 0;
        #10;
        a1 = 0; b1 = 0; c1 = 1;
        #10;
        a1 = 0; b1 = 1; c1 = 0;
        #10;
        a1 = 0; b1 = 1; c1 = 1;
        #10;
        a1 = 1; b1 = 0; c1 = 0;
        #10;
        a1 = 1; b1 = 0; c1 = 1;
        #10;
        a1 = 1; b1 = 1; c1 = 0;
        #10;
        a1 = 1; b1 = 1; c1 = 1;
        #10;
        $stop;
    end
endmodule
```


