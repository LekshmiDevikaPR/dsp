clc;
clear all;
close all;

% Input the sequences
x = input('Enter the input sequence x: ');
h = input('Enter the impulse response h: ');

% Length of the impulse response and input sequence
L = length(h);  % Length of impulse response (block size)
N = length(x);  % Length of input sequence

% Zero-pad the input sequence to handle the overlap
x_padded = [x, zeros(1, L - 1)];

% Initialize the output for overlap-add method
y = zeros(1, N + L - 1);

% Number of sections to divide the input sequence
num_sections = ceil((N + L - 1) / L);

% Perform the overlap-add convolution
for n = 0:num_sections-1
    % Define the section of x to convolve
    start_idx = n * L + 1;
    end_idx = min(start_idx + L - 1, length(x_padded));  % Handle last section correctly
    x_section = x_padded(start_idx:end_idx);
    
    % Perform the convolution for this section
    conv_result = conv(x_section, h);
    
    % Add the convolution result to the output array with overlap
    y(start_idx:start_idx + length(conv_result) - 1) = ...
        y(start_idx:start_idx + length(conv_result) - 1) + conv_result;
end

% Trim the output to the expected length
y = y(1:N + L - 1);

% Compute the built-in convolution for comparison
y_builtin = conv(x, h);

% Display the results
disp('Overlap-add convolution result:');
disp(y);
disp('Built-in convolution result:');
disp(y_builtin);

% Plot the results
figure;

subplot(2, 1, 1);
stem(y, 'filled');
title('Overlap-add Convolution Result');
grid on;

subplot(2, 1, 2);
stem(y_builtin, 'filled');
title('Built-in Convolution Result');
grid on;
