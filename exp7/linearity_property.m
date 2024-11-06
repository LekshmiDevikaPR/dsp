clc;
clear all;
close all;

% Input the sequences
x = input('Enter the first sequence: ');
h = input('Enter the second sequence: ');

% Get the lengths of the sequences
lx = length(x);
lh = length(h);

% Zero-pad the shorter sequence to match lengths
if lx > lh
    h = [h zeros(1, lx - lh)];  % Pad h with zeros
else
    x = [x zeros(1, lh - lx)];  % Pad x with zeros
end

% Input the scalar values a and b
a = input("Enter value of 'a': ");
b = input("Enter value of 'b': ");

% Compute LHS: FFT of the linear combination a*x + b*h
lhs = fft(a .* x + b .* h);

% Compute RHS: a*FFT(x) + b*FFT(h)
rhs = a .* fft(x) + b .* fft(h);

% Display the results
disp('LHS (FFT of a*x + b*h):');
disp(lhs);
disp('RHS (a*FFT(x) + b*FFT(h)):');
disp(rhs);

% Compare the results using tolerance (due to possible floating-point differences)
if norm(lhs - rhs) < 1e-10  % Tolerance for floating-point comparison
    disp('Linearity property verified');
else
    disp('Linearity property not verified');
end
