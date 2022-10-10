clc;clear;close all
%% Initialization
global M m I k1 k2 k3 k4 c1 c2 c3 c4 a b
M=900;m=40;I=1506.645875;
k1=14.64*3500;k2=k1;
k3=91.5*3000;k4=k3;
c1=64.05*40;c2=c1;
c3=2748.66*3;c4=c3;
a=2.635;b=1.3;
%% Solution
x0=[0.2;-0.15;0;0; 0;0;0;0];
t=[0,10];
[T45,X45]=ode45(@(t,z)solvr(t,z),t,x0);
X45e=X45(end,:);
[T23,X23]=ode23(@(t,z)solvr(t,z),t,x0);
X23e=X23(end,:);
[T113,X113]=ode113(@(t,z)solvr(t,z),t,x0);
X113e=X113(end,:);
%Plot
plot(T45,X45(:,1));grid on; ylabel('X1 [m]'); xlabel('Time [s]');figure;
plot(T45,X45(:,2));grid on; ylabel('X2 [m]'); xlabel('Time [s]');figure;
plot(T45,X45(:,3));grid on; ylabel('X3 [m]'); xlabel('Time [s]');figure;
plot(T45,X45(:,4));grid on; ylabel('X4 [m]'); xlabel('Time [s]');figure;
plot(T45,X45(:,5));grid on; ylabel('Xdot1 [m/s]'); xlabel('Time [s]');figure;
plot(T45,X45(:,6));grid on; ylabel('Xdot2 [m/s]'); xlabel('Time [s]');figure;
plot(T45,X45(:,7));grid on; ylabel('Xdot3 [m/s]'); xlabel('Time [s]');figure;
plot(T45,X45(:,8));grid on; ylabel('Xdot4 [m/s]'); xlabel('Time [s]');figure;

%Simulink
warning off
sim('Simulation_Suspension_System.slx');
plot(X1.Time,X1.Data(:,1));grid on; hold on;
plot(X2.Time,X2.Data(:,1));
legend('X1','X2');ylabel('X1,X2 [m]'); xlabel('Time [s]');figure;

plot(X1.Time,X1.Data(:,2));grid on; hold on;
plot(X2.Time,X2.Data(:,2));
legend('Xdot 1','Xdot 2');ylabel('Xdot1,Xdot2 [m/s]'); xlabel('Time [s]');figure;

plot(X1.Time,X1.Data(:,3));grid on; hold on;
plot(X2.Time,X2.Data(:,3));
legend('Xddot 1','Xddot 2');ylabel('Xddot1,Xddot2 [m/s^2]'); xlabel('Time [s]');

X_sim=[X1.Data(end,1), X2.Data(end,1), X3.Data(end,1), X4.Data(end,1),...
    X1.Data(end,2), X2.Data(end,2), X3.Data(end,2), X4.Data(end,2)];

%% Error
Error_ode23_ode45=100*abs((X45e(:)-X23e(:))./X45e(:))
Error_ode113_ode45=100*abs((X45e(:)-X113e(:))./X45e(:))
Error_ode4Sim_ode45=100*abs((X_sim(:)-X45e(:))./X45e(:))
