%  Created by Yakup Gorur (040130052) on 19/03/2018.
%  MKM-502 Soft Computing 2017-2018 Spring ITU
%  Homework 1
%  Question 2-b
%  Lecturer: Assoc.Prof.Dr. Gülay ÖKE GÜNEL

clear
clc
close all
disp('Created by Yakup Gorur (040130052)');

%Assigning the given values
m_paper = 80;
K = 1.1;
Ts = 0.01;
t = 0:Ts:30;

alpha_p = 1;
alpha_i = 0.5;
alpha_d = 0.5;
delta_p = 0.1;
delta_i = 0.4;
delta_d = 0.3;

eta1 = 15;
eta2 = 1;
eta3 = 10;


u(1) = 0;
y(1) = 0;
w1(1) = 0.005;
w2(1) = 0.005;
w3(1) = 0.005;

r = 1 + exp(-2*pi.*t/100).*sin(t);

%Iterate
for n=1:3000
    
    %Step 1: Calculate tracking error etr (n) = r(n) y(n)
    e_tr(n) = r(n) - y(n);
    
    %Step 2: Calculate inputs of the PID Controller
    P(n) = e_tr(n);
    I(n) = integral_e(e_tr);
    D(n) = derivative_e(e_tr);
    
    %Step 3: Calculate outputs of f (.) nonlinear function
    x_p(n) = f_nonl(e_tr(n),alpha_p,delta_p);
    x_i(n) = f_nonl(I(n),alpha_i,delta_i);
    x_d(n) = f_nonl(D(n),alpha_d,delta_d);
    
    %Step 4: Calculate Control Signal
    u(n) = K*(w1(n)*x_p(n)+w2(n)*x_i(n)+w3(n)*x_d(n))/(w1(n)+w2(n)+w3(n));
    
    %Step 5: Apply control signal to the plant and obtain output of the system
    y(n+1) = y_out(u,y,m_paper);
    
    %Step 6: Update controller parameters
    w1(n+1) = w1(n) + eta1*e_tr(n)*u(n)*x_p(n);
    w2(n+1) = w2(n) + eta2*e_tr(n)*u(n)*x_i(n);
    w3(n+1) = w3(n) + eta3*e_tr(n)*u(n)*x_d(n);
    
     %Step7:n <-n+1 and go to Step 1.
    
end

figure
plot(t,y,'LineWidth',2);
axis([0 30 -1 2.5]);
hold on;
plot(t,r,'LineWidth',2);
legend('Output Signal','Reference Signal')
title('Output and Reference versus Time');
xlabel('Time'), ylabel('Output and Reference');
grid;

figure
plot(t(2:1:3001),u,'LineWidth',2);
axis([0 30 -1 2.5])
hold on;
plot(t,r,'LineWidth',2);
title('Control Signal and Reference Signal versus Time');
legend('Control Signal','Reference Signal');
xlabel('Time'), ylabel('Control Signal and Reference Signal');
grid;

figure
plot(t,w1,'r-','LineWidth',2);
axis([0 30 0 190]);
hold on;
plot(t,w2,'g-','LineWidth',2);
plot(t,w3,'b-','LineWidth',2);
title('w1, w2, w3 vs Time');
legend('w1','w2','w3');
xlabel('Time'), ylabel('w1, w2, w3');
grid;

figure
plot(t(2:1:3001),P,'r-','LineWidth',2);
axis([0 30 0 20]);
hold on;
plot(t(2:1:3001),I,'g-','LineWidth',2);
plot(t(2:1:3001),D,'b-','LineWidth',2);
title('P, I, D Coefficients versus Time');
legend('P','I','D');
xlabel('Time'), ylabel('P, I, D Coefficients');
grid;

figure
plot(t(2:1:3001),x_p,'r-','LineWidth',2);
axis([0 30 0 5]);
hold on;
plot(t(2:1:3001),x_i,'g-','LineWidth',2);
plot(t(2:1:3001),x_d,'b-','LineWidth',2);
title('x_P, x_I, x_D vs Time');
legend('x_P','x_I','x_D');
xlabel('Time'), ylabel('x_P, x_I, x_D');
grid;
