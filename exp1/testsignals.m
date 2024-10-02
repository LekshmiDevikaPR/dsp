clc;
clear all;
close all;

% Subplot 1: Unit Impulse Signal
subplot(3,3,1);
t = -5:1:5;
y = [zeros(1,5),ones(1,1),zeros(1,5)];
stem(t,y);
xlabel("Time (s)");
ylabel("Amplitude");
title("Unit Impulse Signal");

% Subplot 2: Bipolar Pulse Signal
subplot(3,3,2);
t2 = 0:0.01:1;
f = 5;
y2 = square(2*pi*f*t2);
stem(t2,y2);
hold on;
plot(t2,y2);
xlabel("Time (s)");
ylabel("Amplitude");
title("Bipolar Pulse Signal");
legend("Discrete", "Continuous");
hold off;

% Subplot 3: Unipolar Pulse Signal
subplot(3,3,3);
t3 = 0:0.1:1;
f = 5;
y3 = abs(square(2*pi*f*t3));
stem(t3,y3);
hold on;
plot(t3,y3);
xlabel("Time (s)");
ylabel("Amplitude");
title("Unipolar Pulse Signal");
legend("Discrete", "Continuous");
hold off;

% Subplot 4: Unit Ramp Signal
subplot(3,3,4);
t4 = -5:1:5;
y4 = t4 .* (t4 >= 0); % Unit ramp function
stem(t4,y4);
hold on;
plot(t4,y4);
xlabel("Time (s)");
ylabel("Amplitude");
title("Unit Ramp Signal");
legend("Discrete", "Continuous");
hold off;

% Subplot 5: Triangular Signal
subplot(3,3,5);
t5 = 0:0.025:1;
f = 10;
y5 = sawtooth(2*pi*f*t5, 0.5); % Triangular signal
stem(t5,y5);
hold on;
plot(t5,y5);
xlabel("Time (s)");
ylabel("Amplitude");
title("Triangular Signal");
legend("Discrete", "Continuous");
hold off;

% Subplot 6: Sine Wave
subplot(3,3,6);
t6 = 0:0.001:1;
f = 10;
y6 = sin(2*pi*f*t6);
stem(t6,y6);
hold on;
plot(t6,y6);
xlabel("Time (s)");
ylabel("Amplitude");
title("Sine Wave");
legend("Discrete", "Continuous");
hold off;

% Subplot 7: Cosine Wave
subplot(3,3,7);
t7 = 0:0.001:1;
f = 10;
y7 = cos(2*pi*f*t7);
stem(t7,y7);
hold on;
plot(t7,y7);
xlabel("Time (s)");
ylabel("Amplitude");
title("Cosine Wave");
legend("Discrete", "Continuous");
hold off;

% Subplot 8: Exponential Signal
subplot(3,3,8);
t8 = -5:1:5;
y8 = exp(t8); % Exponential signal
stem(t8,y8);
hold on;
plot(t8,y8);
xlabel("Time (s)");
ylabel("Amplitude");
title("Exponential Signal");
legend("Discrete", "Continuous");
hold off;

% Subplot 9: Unit Step Signal
subplot(3,3,9);
t9 = -5:1:5;
y9 = [zeros(1,5),ones(1,6)]; % Unit step function
stem(t9,y9);
xlabel("Time (s)");
ylabel("Amplitude");
title("Unit Step Signal");

