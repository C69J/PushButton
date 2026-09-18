# Push Button Interface – Verilog

This project implements a basic **Push Button Interface** using **Verilog HDL**.

The design detects the state of a push button and controls an output signal based on the button input. It demonstrates basic digital input handling and combinational logic using Verilog.

## Overview

The project consists of:

- Push Button Input
- Output Signal
- Verilog HDL implementation
- Testbench for functional verification
- RTL simulation

## Block Diagram

```text
                 ┌───────────────┐
                 │               │
   Push Button ─►│   Push Button │──────► Output
                 │   Interface   │
                 │               │
                 └───────────────┘
