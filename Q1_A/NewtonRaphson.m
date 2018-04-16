%  Created by Yakup Gorur (040130052) on 19/03/2018.
%  MKM-502 Soft Computing 2017-2018 Spring ITU
%  Homework 1
%  Question 1-a
%  Lecturer: Assoc.Prof.Dr. Gülay ÖKE GÜNEL

clear
clc
close all
disp('Created by Yakup Gorur (040130052)');

%Plotting
figure

%Figure1: Plot The Change of The ''x'' Versus Iteration Number 
ax1 = subplot(3,1,1);
xlabel('Iteration Number');
ylabel('x');
title('x = 0.02; Plot The Change of The ''x'' Versus Iteration Number ');
hold(ax1, 'on');
grid(ax1, 'on')

%Figure2: The Alteration of The Objective Function by The Evolution of x
ax2 = subplot(3,1,2);
xlabel('Iteration Number');
ylabel('f(x)');
title(' The Alteration of The Objective Function by The Evolution of ''x'' ')
hold(ax2, 'on');
grid(ax2, 'on')
xticklabels('auto')

%Figure3: Gradient Information Versus Iteration Number
ax3 = subplot(3,1,3);
xlabel(' Iteration Number ');
ylabel(' f''(x) ');
title(' Gradient Information Versus Iteration Number ')
hold(ax3, 'on');
grid(ax3, 'on')


%x = 0.2---------------------------------------------------------------

%set the x value
x = 0.02;

%before x value. Set the initialize value as 100 (higher the x value)
x_old = 100;

%Expected x value
x_true = 1;

%Iteration counter
iter = 0;
while abs(x_old-x) > 10^-10 && x ~= 0
    x_old = x;
    
    %Print the calculations
    fprintf('x_start= 0.02 Iteration %d: x=%.20f, err=%.20f\n', iter, x, x_true-x);
    
    %Plot the Figure 1: the change of the x versus iteration number
    plot(ax1, iter, x, 'ro');
   
    %Plot the Figure 2: The Alteration of The Objective Function by The Evolution of x
    plot(ax2, iter, x^4 - 7*x^3 + 17*x^2 - 17*x +6, 'bo');
   
    %Plot the Figure 3: Gradient Information Versus Iteration Number
    plot(ax3, iter, 4*x^3 - 21*x^2 + 34*x - 17, 'go');
    
    
    % f(x) = f(x)= (x-1)^2 * (x-2) * (x-3) = x^4 - 7*x^3 + 17*x^2 - 17*x +6 
    % f'(x) = 4*x^3 - 21*x^ + 34*x - 17
    
    % x_i+1 =  x_i - f(x)/f'(x)
    x = x - (x^4 - 7*x^3 + 17*x^2 - 17*x +6) / (4*x^3 - 21*x^2 + 34*x - 17);
    
    %increase the iteration counter
    iter = iter + 1;
    

    
    

end
%Save the first output
OutputFirst=x;
fprintf('\n-----------\n');






%x = 1.5---------------------------------------------------------------

figure
%Figure1: Plot The Change of The ''x'' Versus Iteration Number 
ax1 = subplot(3,1,1);
xlabel('Iteration Number');
ylabel('x');
title('x = 1.5; Plot The Change of The ''x'' Versus Iteration Number ');
hold(ax1, 'on');
grid(ax1, 'on')

%Figure2: The Alteration of The Objective Function by The Evolution of x
ax2 = subplot(3,1,2);
xlabel('Iteration Number');
ylabel('f(x)');
title(' The Alteration of The Objective Function by The Evolution of ''x'' ')
hold(ax2, 'on');
grid(ax2, 'on')
xticklabels('auto')

%Figure3: Gradient Information Versus Iteration Number
ax3 = subplot(3,1,3);
xlabel(' Iteration Number ');
ylabel(' f''(x) ');
title(' Gradient Information Versus Iteration Number ')
hold(ax3, 'on');
grid(ax3, 'on')

x = 1.5;
x_old = 100;
x_true = 1;
iter = 0;
while abs(x_old-x) > 10^-10 && x ~= 0
    x_old = x;
    
    %Plot the Figure 1: the change of the x versus iteration number
    plot(ax1, iter, x, 'ro');
    
    %Print the calculations
    fprintf('x_start= 1.5 Iteration %d: x=%.20f, err=%.20f\n', iter, x, x_true-x);
   
    %Plot the Figure 2: The Alteration of The Objective Function by The Evolution of x
    plot(ax2, iter, x^4 - 7*x^3 + 17*x^2 - 17*x +6, 'bo');
   
    %Plot the Figure 3: Gradient Information Versus Iteration Number
    plot(ax3, iter, 4*x^3 - 21*x^2 + 34*x - 17, 'go');
    
    
    % f(x) = f(x)= (x-1)^2 * (x-2) * (x-3) = x^4 - 7*x^3 + 17*x^2 - 17*x +6 
    % f'(x) = 4*x^3 - 21*x^ + 34*x - 17
    
    % x_i+1 =  x_i - f(x)/f'(x)
    x = x - (x^4 - 7*x^3 + 17*x^2 - 17*x +6) / (4*x^3 - 21*x^2 + 34*x - 17);
    
    %increase the iteration counter
    iter = iter + 1;

end
%Save the Second output
OutputSecond=x;
fprintf('\n-----------\n');

%x = 2.5---------------------------------------------------------------
figure
%Figure1: Plot The Change of The ''x'' Versus Iteration Number 
ax1 = subplot(3,1,1);
xlabel('Iteration Number');
ylabel('x');
title('x = 2.5; Plot The Change of The ''x'' Versus Iteration Number ');
hold(ax1, 'on');
grid(ax1, 'on')

%Figure2: The Alteration of The Objective Function by The Evolution of x
ax2 = subplot(3,1,2);
xlabel('Iteration Number');
ylabel('f(x)');
title(' The Alteration of The Objective Function by The Evolution of ''x'' ')
hold(ax2, 'on');
grid(ax2, 'on')
xticklabels('auto')

%Figure3: Gradient Information Versus Iteration Number
ax3 = subplot(3,1,3);
xlabel(' Iteration Number ');
ylabel(' f''(x) ');
title(' Gradient Information Versus Iteration Number ')
hold(ax3, 'on');
grid(ax3, 'on')


x = 2.5;
x_old = 100;
x_true = 2;
iter = 0;
while abs(x_old-x) > 10^-10 && x ~= 0
    x_old = x;
    
    %Print the calculations
    fprintf('x_start= 2.5 Iteration %d: x=%.20f, err=%.20f\n', iter, x, x_true-x);
    
    %Plot the Figure 1: the change of the x versus iteration number
    plot(ax1, iter, x, 'ro');
   
    %Plot the Figure 2: The Alteration of The Objective Function by The Evolution of x
    plot(ax2, iter, x^4 - 7*x^3 + 17*x^2 - 17*x +6, 'bo');
   
    %Plot the Figure 3: Gradient Information Versus Iteration Number
    plot(ax3, iter, 4*x^3 - 21*x^2 + 34*x - 17, 'go');
    
    % f(x) = f(x)= (x-1)^2 * (x-2) * (x-3) = x^4 - 7*x^3 + 17*x^2 - 17*x +6 
    % f'(x) = 4*x^3 - 21*x^ + 34*x - 17
    
    % x_i+1 =  x_i - f(x)/f'(x)
    x = x - (x^4 - 7*x^3 + 17*x^2 - 17*x +6) / (4*x^3 - 21*x^2 + 34*x - 17);
    
    %increase the iteration counter
    iter = iter + 1; 

end
%Save the Third output
OutputThird=x;