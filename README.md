# Proposal Title: 8-BIT RADIX-4 BUTTERFLY FOR FAST FOURIER TRANSFORM (FFT) PROCESSOR

**Introduction**
Fast Fourier Transform (FFT) processors are key building blocks in multi-user mobile telecommunication transceivers, where optimum hardware performance in terms of power, area, and speed is of prime importance. Butterfly circuits are one of
the building blocks in these processors. The complexity of a butterfly circuit depends on the radix of the FFT processor. A Radix-4 butterfly is more attractive than radix-2 and radix-8 because it requires fewer multiplication operations for the FFT processor which reduces the complexity of computation.

# Project Overview

The 8-bit radix-4 butterfly is a fundamental component employed in radix-4 Fast Fourier Transform (FFT) algorithms for the purpose of calculating the FFT of an 8-bit data sequence. The radix-4 butterfly algorithm executes a precise sequence of mathematical computations on the given input data and twiddle factors in order to produce two complex output points. Every individual point is composed of an 8-bit component representing the real part and an 8-bit component representing the imaginary part. The radix-4 operates with 4 inputs and computes 1 output at the same time.

<p align="center">
<img width="40%" alt="R4_butter_block_diagram.png" src="https://github.com/LyeGuanYan/Radix4_butterfly/blob/019dc3f1664aca3292fdc8733df55ab86381e8b6/R4_butter_block_diagram.png">
</p>
<p align="center">Fig.1 R4 Butterfly Block Diagram</p>

<!--![R4_butter_block_diagram](https://github.com/LyeGuanYan/Radix4_butterfly/assets/93908638/06a8f452-c2d8-4357-833e-6bef8e313bf6)-->

Figure 1 shows the top layer of block diagram radix-4 butterfly where there are 4 inputs and 1 output is produced for both real and imaginary. The design of the block diagram is due to the complex numbers used which are real and imaginary
numbers. While the control signals ( C1, C2, C3) in the bottom of figure 1 are used to select the appropriate data based on the value of mt and control the operation of the butterfly for addition, subtraction and swapping.

<p align="center">
<img width="70%" alt="R4_butter_circuit_diagram.png" src="https://github.com/LyeGuanYan/Radix4_butterfly/blob/ef2e34ad9f8fab0b066e3278473e0de049a052b3/R4_butter_circuit_diagram.png">
</p>
<p align="center">Fig.2 R4 Butterfly Circuit Diagram</p>

Figure 2 shows the intermediate layer of the block diagram radix-4 butterfly. It consists of 6 full adder-subtractors and a XOR gate, and they are controlled by 3 complex adder-subtractors namely C1, C2 and C3. The inputs to the butterfly are 4 pairs of complex numbers namely xr0, xi0, xr1, xi1, xr2, xi2, xr3, xi3 at a time. The output is only a pair of complex numbers namely Xro and Xio.

Hence, the butterflies are employed in a pipelined fashion to enhance data processing efficiency and facilitate the computation of the final Fast Fourier Transform (FFT) output. The radix-4 Fast Fourier Transform (FFT) algorithm, employing the specified butterflies, offers enhanced computational efficiency for data sizes that are exponential powers of 4. The FFT pipeline is used in the MulticarrierCode Division Multiple Access (MCCDMA) receiver which is widely used in digital communication.

# Significance and Impact

1. Advancing signal processing technology through an efficient and accurate 8-bit radix-4 butterfly circuit design.
2. Fabricating signal processing algorithm into electronic systems.
3. Improving signal processing applications with reliable FFT processors, benefiting digital communication.

# Design Spec Estimation
| Specifications                | Number     |
| :---------------------------- | :--------: |
| Inputs                        | 35         |
| Outputs                       | 8          |
| Estimate Core Area (mm^2)     | 0.035308   |

# Expected Outcome

1. **To design an 8-bit radix-4 butterfly circuit**
   
Outcome: A well-documented and comprehensive design of the 8-bit radix-4butterfly circuit, including a detailed schematic that outlines the logic and arithmetic operations, a carefully crafted layout design depicting the physical arrangement of components on the integrated circuit (IC) chip, and thorough simulation and verification results confirming the circuit's accuracy and functionality. The design documentation will serve as a reference for further stages, ensuring a solid foundation for the subsequent fabrication and testing processes.

2. **To fabricate an 8-bit radix-4 butterfly circuit**
   
Outcome: Successful physical fabrication of the 8-bit radix-4 butterfly circuit on a silicon wafer using advanced semiconductor manufacturing processes. The outcome will involve the precise realisation of the designed layout on the
IC chip. After fabrication, the wafer will undergo comprehensive testing, including electrical checks, to ensure that the individual circuits meet the required quality and functionality standards. Following successful wafer testing, the fabricated ICs will be packaged to protect them and enable their integration into electronic systems, making them ready for testing and validation.

3. **To test the functionality of an 8-bit radix-4 butterfly circuit**

Outcome: Thorough verification and testing of the functionality of the fabricated 8-bit radix-4 butterfly circuit. This will involve subjecting the circuit to various test vectors and scenarios to confirm that it produces the expected
output for different input data. Additionally, the circuit's performance will be evaluated, including assessments of its processing speed, accuracy, and power consumption, to ensure it meets the desired specifications. The circuit's
performance will be cross-checked against the initial design goals and simulation results, making certain that the fabricated circuit aligns with the intended functionality and design requirements. The successful testing and validation of the circuit will establish its readiness for integration into a larger Fast Fourier Transform (FFT) processor, enabling efficient signal processing applications.
