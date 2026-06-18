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
- [x] Testbench initialization
- [x] Verification
- [ ] Waveform analysis

## Project Status

The RTL design of the Single-Port SRAM Controller has been implemented, including the SRAM memory model, FSM-based controller, state transition logic, and read/write control paths.

## Testbench Overview

The testbench verifies the functionality of the SRAM controller by:

1. Applying a reset sequence.
2. Writing data (0xAA) to address 10.
3. Issuing a read request for address 10.
4. Checking whether the controller correctly retrieves the stored data.

Clock generation is implemented using a 10 ns clock period.

## SRAM Specifications

| Parameter     | Value            |
| ------------- | ---------------- |
| Memory Type   | Single-Port SRAM |
| Data Width    | 8 bits           |
| Address Width | 8 bits           |
| Memory Depth  | 256 Locations    |
| Read Type     | Synchronous      |
| Write Type    | Synchronous      |

## Simulation Results

The SRAM controller was successfully verified using a Verilog testbench.

### Test Sequence

1. Reset the controller.
2. Write data `0xAA` to address `10`.
3. Issue a read request for address `10`.
4. Verify that the read data matches the written data.

### Simulation Output

| Address | Written Data | Read Data | Status |
| ------- | ------------ | --------- | ------ |
| 10      | 0xAA         | 0xAA      | PASS   |

The controller correctly asserted the `busy` and `ready` signals during operation, and no error conditions were observed.

## Learning Objectives

- Verilog HDL
- RTL Design
- Memory Modeling
- FSM Design
- Module Instantiation
- Digital Verification

## Author

Fatema Kapadia
