clear;
close all;
clc;

answer1 = Task1([
    -9.8 4.4 1.3
    -5.7 0.1 0.8
     2.4 4.4 8.6
], [
    1 0  2
    3 0 -1
    5 2  2
    8 9  0
], [
     0.1 0.2 -1.3 0.7
    -0.2 0.3  2.2 0.8
     1.9 2.3  6.5 4.9
]);

answer2 = Task2([
     1  2  3  4  5  6
    -1 -2 -3 -4 -5 -6
     4  4  4  4  4  4
     4  4  4  4  4  4
     5  5  5  5  5  5
     5  5  5  5  5  5
]);

[answer3_count, answer3_maxVal, answer3_minVal] = Task3(15, -3, 3, 0.1);
answer3 = [answer3_count, answer3_maxVal, answer3_minVal];

answer4_a = Task4([
    -1.32  2.15   7.6
     2.62   6.1 -4.12
      8.3 -2.84  -1.5
], [-1.4 5.6 -6.5]');

answer4_b = Task4([
    2  0 -1
    1 -3  1
    1  1  3
], [1 2 4]');

Task5(@(x) sin(x.^2), 'sin x^2', 'r-', @(x) cos(x.^2), 'cos x^2', 'b-.', -pi, pi, true);
Task5(@(x) x / 20, 'x/20', 'r-', @(x) exp(x), 'e^x', 'b-.', -2, 2, false);

Task6(-2*pi, @(x) sin(x), 'sin x', 0, @(x) -x.^3, '-x^3', 1, @(x) cos(pi * x), 'cos pi*x', 3*pi);

Task7(@(t) 2 * sin(t) - 2/3 * sin(2*t), '2sin t - 2/3 sin 2t', @(t) 2 * cos(t) - 2/3 * cos(2*t), '2cos t - 2/3 cos 2t', 0, 2*pi, true);

Task8(@(x, y) sin(x).^2 .* log(y), 'sin^2 x ln y', 0, 2*pi, 0, 10, true);