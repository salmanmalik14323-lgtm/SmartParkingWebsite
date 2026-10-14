
# Smart Parking System

## Project Overview
A digital logic project that monitors four parking slots.

## Inputs
- S1, S2, S3, S4: Parking slot sensors
- 0 = Empty
- 1 = Occupied

## Outputs
- FULL = 1 when all four slots are occupied
- AVAILABLE = 1 when at least one slot is empty
- RED indicates occupied slots
- GREEN indicates empty slots

## Logic
FULL = S1 AND S2 AND S3 AND S4
AVAILABLE = NOT FULL

## Tools
- Verilog HDL
- Icarus Verilog
- GTKWave
- HTML, CSS, JavaScript

## Run Simulation
iverilog -o smartparking_sim smartparking.v smartparking_tb.v
vvp smartparking_sim
gtkwave smartparking.vcd
