# Numerical Solution and Simulation of a passive suspension system

In this project, the behavior of a passive suspension system is simulated, which is given in figure below.
<p align="center">
<img width="728" alt="Screenshot 2022-10-06 235219" src="https://user-images.githubusercontent.com/115154998/194815680-49cc9c28-305c-49ec-bc8a-abb7bf716fcd.jpg">
</p>
The Analytical solution with high calculation cost coded in a livescript using matlab symbolic toolbox.(.mlx file)
The numerical solution simulated using variable step solvers: ODE45, ODE23, ODE133.
After that, the problem was modeled in the Simulink and solved using a fixed step solve (ODE4).
In the end, the relative error of the final point of each solution was calculated with respect to ODE45 solution. The results of this comparison is given in the following table.
<p align="center">
<img width="3640" alt="Screenshot 2022-10-06 235219" src="https://user-images.githubusercontent.com/115154998/194821615-e9609121-0240-4104-8a69-d8d159f10b21.png">
</p>


