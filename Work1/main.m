clear;
close all;
clc;

% input data
eps = 0.01;             % precision
beta = 1;               % limit mutation kernel     
lambda = 1;
a = 0;
b = pi / 2;
N = 20;                 % number if points
step = 0.01;            % result functions step
    
f = @(x) x;
K = @(x, t) 2 * sin(x - t);


tic;
    mutation = (rand() * 2 - 1) * beta;
    grid = a : step : b;
    K_mutated = @(x, t) K(x, t) + mutation;
    
    % get interp solution
    [Y_interp, loops, optimalDegree] = getSolution(K, f, lambda, a, b, f, N, eps, grid);

    % get exact solution
    Y_exact = exactSolution(grid);

    % get interp solution
    [Y_mutated, loops, optimalDegree] = getSolution(K_mutated, f, lambda, a, b, f, N, eps, grid);

    plot(grid, Y_interp, grid, Y_exact, grid, Y_mutated);

    
toc;