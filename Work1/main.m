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

step = 0.01;
grid = a : step : b;
[Y_interp, optimalDegree] = getOptimalPolynom(X, Y, K, f, lambda, grid);
Y_exact = exactSolution(grid);

toc;

plot(grid, Y_interp, grid, Y_exact);