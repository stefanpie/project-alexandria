# Project Alexandria

Project Alexandria is a digital design project to create a library of building blocks for a wide range of potential FPGA projects and applications. The types of projects in mind include signal processing, image processing, machine learning, and scientific computing.

This project is named after the Great Library of Alexandria. It is a representation of the most extensive, most esteemed collection of knowledge in the ancient world. I hope to achieve the same goal with this collection of knowledge pertaining to digital design implementations for different applications. I am most interested in machine learning accelerators, but one step at a time.

My vision for the components in the library are as follows:
- Primitives
    - RAM, ROM
    - FIFO
    - Shift Register (In Progress)
    - Counter (Done!)
- Math
    - Fixed Percisions
    - Addition, Subtraction, Multiplication, Division (In Progress)
    - Exponentiation, Roots, Logarithms
    - Trigonometric Functions
    - Popcount (Done!)
- Matrices
    - Storage and Indexing (In Progress)
    - Addition, Subtraction (In Progress)
    - Determinant
    - Inverse
    - Multiplication
    - Decompositions
- Signal Processing
    - FIR Filter
    - IIR Filter
    - Median Filter
    - Average Filter
- Image Processing
    - Grayscale Conversion
    - Contour Finding
    - Marching Cubes
    - Hough Transforms
    - Convolution
    - Pooling
    - Edge Filters
    - Rescaling
    - Histogram of Oriented Gradient Desciptor
- Machine Learning
    - Linear Regression
    - Decision Trees
    - Support Vector Machines
    - Neural Networks
- Interfaces
    - UART
    - AXI

## Development Overview
I use a varaity of tools and platforms to help me with digital design porjetcs, many of which are used for this project. I outlied these tool below.

- Icarus Verilog
    - Has worked for my design needs so far
    - I'm scared to learn Verilator (even though I know I should); I would rather keep it simple and not add C into the mix at first
- GTKWave
    - Use to visualize and verify simulation waveforms
    - Scriptable with Tcl 
- Yosys
    - Main use is currently for exploring graph visualizations of my designs using the `show` command and rending them using Graphviz
    - Future ideas for using Yosys:
        - Using the `ls` command, the `read_verilog -dump_ast1` command, the `fsm` command, and other commands to create interactive tools for designing visualization and debugging in VS Code
        - Learn how to use Yosys for formal verification since that is becoming important in the FPGA world
    - Scriptable with Tcl 
- Graphviz
    - Currently used to render the output from Yosys's `show` to visualize module designs
    - I hope to use it in the future for other visualizations 
- Make
    - Used to automate all the scripting and tasks in my design flow
    - I'm just learning how to use Make on my own for the first time, so bear with me; very neat and handy stuff though
- Tcl
    - Used to automate many of the tools in my design flow (you silly vendor tools make me laugh)
- VS Code
    - IDE of choice because I can extend it in the future with my tools and create my extension for HDL design
- "Verilog-HDL/SystemVerilog/Bluespec SystemVerilog" VS Code Extension
    - Current VS Code extension I use for HDL design integration
        - Some snippets
        - Linting with Icarus Verilog
    - Plan to eventually replace with my own VS Code extension with more capabilities
- Vivado
    - A large part of my FPGA experience has been with Xilinx hardware and tools; thus, the use of Vivado
    - Used in later design steps for prototyping ideas and getting them synthesized and implemented for Xilinx FPGAs
	- Also used to double-check how a design tool other than Yosys will interpret and elaborate mydesign in the same way
    - Scriptable with Tcl
- Arty A7-35T FPGA
    - Xilinx Artix-7 FPGA development board by Digilent that I have been using for side projects and learning
    - Neat and simple board, it frees me from overthinking about an SoC


