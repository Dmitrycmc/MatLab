clear;
close all;
clc;

% input data
eps = 0.01;

lambda = 1;
a = 0;
b = pi / 2;
N = 20;

f = @(x) x;
K = @(x, t) 2 * sin(x - t);


tic;
% get grid sulution
[X, Y, loops] = solveVolterra(K, f, lambda, a, b, f, N, eps);

% get 10 points
X = thinOut(X);
Y = thinOut(Y);

polynoms = {};
nevyazki = zeros(1, 10);
grid = a : 0.1: b;

for i = 1 : 10
   p = polyfit(X, Y, i - 1);
   polynoms{i} = polyval(p, grid);
   nevyazki(i) = 
end


toc;