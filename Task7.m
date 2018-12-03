function fig = Task7(fX, strX, fY, strY, a, b)
    fig = figure('name', ['Task 7: ', 'x = ', strX, '; ','y = ', strY]);
    
    eps = (b - a) / 1000;
    t = a : eps : b;
    
    x = fX(t);
    y = fY(t);
    
    comet(x, y);
    formatFigure(['x = ', strX, '; ','y = ', strY], '', '');
end

