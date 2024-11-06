clc;
clear all; close all;
x=input("enter first sequence:");
h=input("enter second sequence:"); N=max(length(x),length(h));
xn=[x zeros(1,N-length(x))];
hn=[h zeros(1,N-length(h))]; lhs=sum(xn.*conj(hn)); rhs=sum(fft(xn).*conj(fft(hn)))/N; disp('LHS');
disp(lhs); disp('RHS'); disp(rhs); if lhs==rhs
disp("Parseval's Theorem verified"); else
disp("Parseval's Theorem not verified");
end