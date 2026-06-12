# Single-Port SRAM Controller

🚧 Work in Progress

## Overview

This project implements a Single-Port SRAM Controller in Verilog HDL. The design consists of a memory module and an FSM-based controller that manages read and write operations to the SRAM.

The project is being developed to strengthen RTL design, memory architecture, FSM design, and digital verification skills.

## Features

- Single-Port SRAM Memory
- Synchronous Read Operation
- Synchronous Write Operation
- FSM-Based Controller (In Progress)
- Modular RTL Design
- Verification Testbench (Planned)

## Project Structure

```text
Single_Port_SRAM_Controller/
│
├── sram.v
├── sram_controller.v
├── sram_controller_tb.v
└── README.md
```

## Current Progress

- [x] SRAM memory module
- [x] controller interface definition
- [x] SRAM instantiation inside the controller
- [x] FSM state implementation
- [x] read transaction & write transaction logic
- [ ] Testbench development
- [ ] Verification and waveform analysis

## Project Status

The RTL design of the Single-Port SRAM Controller has been implemented, including the SRAM memory model, FSM-based controller, state transition logic, and read/write control paths.

The next phase focuses on verification through a dedicated testbench and waveform analysis.

## SRAM Specifications

| Parameter     | Value            |
| ------------- | ---------------- |
| Memory Type   | Single-Port SRAM |
| Data Width    | 8 bits           |
| Address Width | 8 bits           |
| Memory Depth  | 256 Locations    |
| Read Type     | Synchronous      |
| Write Type    | Synchronous      |

## Learning Objectives

- Verilog HDL
- RTL Design
- Memory Modeling
- FSM Design
- Module Instantiation
- Digital Verification

## Author

Fat-File-error

## Fatema Kapadia
