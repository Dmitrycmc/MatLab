function fig = Task7(x, strX, y, strY, a, b)
    fig = figure('name', ['Task 7: ', 'x = ', strX, '; ','y = ', strY]);
    
    eps = (b - a) / 1000;
    t = a : eps : b;
    
    comet(x(t), y(t));
    
    grid on;
    xlabel('x');
    ylabel('y');
    
    title(['Function (', strX, '; ', strY, '):']);
    legend(['(', strX, '; ', strY, ')']);
end

