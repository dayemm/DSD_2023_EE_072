# Lab 4 Combinational Circuit Design: RGB LED using K-Maps

## Overview
The module compares two 2-bit inputs (`a` and `b`) and determines whether `a > b`, `a = b`, or `a < b`. Based on the comparison, the circuit controls **Red, Green, and Blue (RGB) LEDs** to indicate the result.
Circuit diagram:

![Image](https://github.com/user-attachments/assets/07b653d1-50df-47c2-80ba-7159aae59726)
## Functionality
The  module takes two 2-bit inputs:
- `a[1:0]` - First 2-bit number
- `b[1:0]` - Second 2-bit number

It outputs three signals:
- **Red (R)** LED: Lights up when `a > b`
- **Green (G)** LED: Lights up when `a = b`
- **Blue (B)** LED: Lights up when `a < b`

Truth table:

| a[1] | a[0] | b[1] | b[0] | a > b | a = b | a < b | R (Red) | G (Green) | B (Blue) |  Color  |
|------|------|------|------|-------|-------|-------|---------|----------|---------|--------|
|  0   |  0   |  0   |  0   |   0   |   1   |   0   |    1    |    1     |    0    | Yellow |
|  0   |  0   |  0   |  1   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  0   |  0   |  1   |  0   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  0   |  0   |  1   |  1   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  0   |  1   |  0   |  0   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  0   |  1   |  0   |  1   |   0   |   1   |   0   |    1    |    1     |    0    | Yellow |
|  0   |  1   |  1   |  0   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  0   |  1   |  1   |  1   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  1   |  0   |  0   |  0   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  1   |  0   |  0   |  1   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  1   |  0   |  1   |  0   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  1   |  0   |  1   |  1   |   0   |   0   |   1   |    0    |    1     |    1    |  Cyan  |
|  1   |  1   |  0   |  0   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  1   |  1   |  0   |  1   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  1   |  1   |  1   |  0   |   1   |   0   |   0   |    1    |    0     |    1    | Purple |
|  1   |  1   |  1   |  1   |   0   |   1   |   0   |    1    |    1     |    0    | Yellow |

## Implementation
The  logic is implemented using **combinational logic** inside an `always_comb` block. The logic expressions for the RGB outputs are derived from Boolean algebra.







