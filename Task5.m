function Task5(f1, f2, a, b)
    eps = (b - a) / 1000;
    x = a : eps : b;
    y1 = f1(x);
    y2 = f2(x);
    
    plot(x, y1, 'r-', x, y2, 'g-');
end

