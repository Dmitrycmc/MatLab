clear;
close all;
clc;

% input data
ro0 = 1;
a = 2;
A = 1;
t0 = 0;
t1 = 5;

tic;
% ---- exact ----
ROmesh = 0 : 0.1 : ro0;
Tmesh = t0 : 0.1 : t1;
[RO, T] = meshgrid(ROmesh, Tmesh);

Y_exact = calcExactSolve(RO, T, a, A, ro0);



% ---- num ----
m = 1;
pdefun = @(x, t, u, dudx) deal(1, a^2 * dudx, A * t);
icfun = @(x) 0;
bcfun = @(xl,ul,xr,ur,t) deal(0,1/a^2, ur, 0);  %pl ql pr qr);
 
Y_num = pdepe(m,pdefun,icfun,bcfun,ROmesh,Tmesh);

% output
fig = figure('name', 'Result: ');

subplot(1, 2, 1);
surf(RO, T, Y_exact);
axis square;
xlabel('ro');
ylabel('t');
zlabel('u(ro, t)');
title('Exact solution');

subplot(1, 2, 2);
surf(RO, T, Y_num);
axis square;
xlabel('ro');
ylabel('t');
zlabel('u(ro, t)');
title('pdepe sollution');


% calculate max diff on grid
error = normC(Y_num - Y_exact)
toc;
