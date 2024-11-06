clc;
clear all; close all;
x=input("enter first sequence"); h=input("enter sequence sequence:"); N=max(length(x), length(h));
xn=[x zeros(N-length(x))];
hn=[h zeros(N-length(h))]; Xn=fft(xn);
Hn=fft(hn); lhs=cconv(xn,hn,N); rhs=ifft(Xn.*Hn); disp('LHS');
disp(lhs); disp('RHS'); disp(rhs); if lhs==rhs
disp('Circular Convolution verified') else
disp('Circular Convolution not verified');
end