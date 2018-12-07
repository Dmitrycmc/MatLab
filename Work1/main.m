clear;
close all;
clc;

% input data
eps = 0.01;             % precision
beta = 0.2;             % limit mutation kernel     
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
    
    % get exact solution
    Y_exact = exactSolution(grid);

    % get interp solution
    [Y_interp, loops_interp, optimalDegree_interp] = getSolution(K, f, lambda, a, b, f, N, eps, grid);
    discrepancy_interp = normC(Y_exact, Y_interp);
    
    % get interp solution
    [Y_mutated, loops_mutated, optimalDegree_mutated] = getSolution(K_mutated, f, lambda, a, b, f, N, eps, grid);
    discrepancy_mutated = normC(Y_exact, Y_mutated);
    
    % draw plots
    fig = drawPlot(grid, Y_exact, Y_interp, Y_mutated);
toc;
