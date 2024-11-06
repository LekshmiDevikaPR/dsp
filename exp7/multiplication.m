clc;
clear all; close all;
x=input("enter first sequence"); h=input("enter sequence sequence:"); N=max(length(x), length(h));
xn=[x zeros(N-length(x))];
hn=[h zeros(N-length(h))]; lhs=fft(xn.*hn); Xn=fft(xn);
Hn=fft(hn); rhs=(cconv(Xn,Hn,N))/N;
disp('LHS'); disp(lhs); disp('RHS'); disp(rhs); if lhs==rhs
disp('Multiplication property verified'); else
disp('Multiplication property not verified');
end