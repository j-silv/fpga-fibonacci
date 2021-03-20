# fpga-fibonacci

This project uses a Cyclone V Starter Kit to count and display a variable number of Fibonacci
terms to a 4-digit LED 7 segment display. A UART module is also employed to indicate via serial
terminal communication whether or not erroneous terms appear due to overflow.

Quartus II is the design software for this project, and VHDL is used as the hardware description language.

The system can be divided into several blocks:

1) Clock edge divider (for generating an enable pulse for the various system blocks)
2) Fibonacci term generator
3) Baud rate generator
4) UART module
5) Decimal to BCD converter
6) 7 segment LED driver (for displaying the Fibonacci terms)
