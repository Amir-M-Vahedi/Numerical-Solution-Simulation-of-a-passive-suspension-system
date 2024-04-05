# Numerical Solution and Simulation of a passive suspension system
## Overview
This project explores the dynamics of a passive suspension system, a critical component in automotive engineering for improving ride quality and vehicle handling. Through a combination of analytical solutions and numerical simulations, the project investigates the system's behavior under various conditions.
<p align="center">
<img width="728" alt="Screenshot 2022-10-06 235219" src="https://user-images.githubusercontent.com/115154998/194815680-49cc9c28-305c-49ec-bc8a-abb7bf716fcd.jpg">
</p>

## Project Components
- **Analytical Solution**: Utilizes MATLAB's symbolic toolbox to derive high-calculation-cost solutions, providing a comprehensive understanding of the system's theoretical behavior.
- **Numerical Simulation**: Employs various variable step solvers (ODE45, ODE23, ODE113) to simulate the system's dynamics, offering insights into its response to different operational scenarios.
- **Simulink Model**: Models the problem in Simulink, solving it with a fixed step solver (ODE4), to visualize the suspension system's performance in a more intuitive and accessible manner.
- **Error Analysis**: Conducts a relative error analysis comparing the final points of each solution to that obtained from the ODE45 solution, highlighting the accuracy and efficiency of different solvers.

## Methodology
1. **Derivation and Solution**: Begins with the analytical derivation of the suspension system's behavior using MATLAB's symbolic toolbox.
2. **Numerical Simulation**: Implements numerical simulations using MATLAB's ODE solvers to approximate the system's response under varying conditions.
3. **Simulink Implementation**: Translates the problem into a Simulink model, enabling a fixed-step simulation for comparison with variable step solver results.
4. **Comparative Analysis**: Analyzes the relative error of solutions obtained from different methods, with ODE45's solution serving as the baseline for accuracy.

## Results
The project yields a comprehensive comparison of analytical and numerical solutions, with a specific focus on the accuracy and computational efficiency of various ODE solvers. This section includes:
- Visual representations of the suspension system's simulated behavior.
- A table summarizing the relative error analysis, providing critical insights into the performance of each solver used.
<p align="center">
<img width="3640" alt="Screenshot 2022-10-06 235219" src="https://user-images.githubusercontent.com/115154998/194821615-e9609121-0240-4104-8a69-d8d159f10b21.png">
</p>


