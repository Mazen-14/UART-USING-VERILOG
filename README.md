# UART Design and Simulation
This repository contains the Verilog implementation and testbench for a Universal Asynchronous Receiver Transmitter (UART) module. The project includes the architecture, Verilog code, and simulation results for both the Transmitter (TX) and Receiver (RX) components.
# Project Structure
The repository consists of the following files:

## Verilog Files
- counter.v: Implements a counter for timing purposes in the UART module.
- mux.v: Multiplexer for signal selection.
- register.v: A simple register to store data.
- uart.v: Top-level UART module, combining both TX and RX functionalities.
- uart_rx.v: Verilog implementation of the UART Receiver (RX).
- uart_tx.v: Verilog implementation of the UART Transmitter (TX).
- uart_tb.v: Testbench for simulating the UART module.
- uart_tx_tb.v: Testbench for simulating the UART Transmitter.
## 1. Architecture of the RX Module
### The RX module consists of the following blocks:

- Start Bit Detector: Detects the start bit of the UART frame.
- Shift Register: Shifts in the incoming data bits.
- Baud Rate Generator: Ensures proper synchronization and timing with the baud rate.
- Parity Checker : Verifies data integrity using parity bits.
- Stop Bit Checker: Ensures the frame ends correctly with a stop bit.
## 2. UART Module Overview
### The UART module integrates the TX and RX components to enable asynchronous serial communication. It includes:

- Transmitter (TX): Converts parallel data into serial format and transmits it.
- Receiver (RX): Converts received serial data into parallel format.
### Features:
- Full-duplex communication.
- Configurable baud rate.
- Parity bit for error checking.
## 3. Verilog Files
### Transmitter (TX)
uart_tx.v: Handles serialization of data and appends start/stop bits.
### Receiver (RX)
uart_rx.v: Handles deserialization of data and validates frame integrity.
### Top-Level Module
uart.v: Combines TX and RX functionality into a single module.
### 4. Testbench and Simulation
### Testbench
- uart_tb.v: Simulates the complete UART module.
- uart_tx_tb.v: Simulates the UART Transmitter module.
## Simulation Screenshots
- TX Simulation:
  
  ![image](https://github.com/user-attachments/assets/b795de36-1ae7-4e38-b078-a2c292e121bd)

- Overall UART Simulation:
  
  ![image](https://github.com/user-attachments/assets/6d63220e-46e2-480a-8c41-3f6298f9a84e)

## Prerequisites
- A Verilog simulator (ModelSim, Vivado).
## Steps to Run Simulations
- Compile the Verilog files (uart.v, uart_tx.v, uart_rx.v, etc.).
- Run the respective testbench (uart_tb.v or uart_tx_tb.v).
- Analyze the waveforms using a simulator.




