function fig = Task7(x, strX, y, strY, a, b, animated)
    fig = figure('name', ['Task 7: ', 'x = ', strX, '; ','y = ', strY]);
    
    eps = (b - a) / 1000;
    t = a : eps : b;
    
    if (animated)
        comet(x(t), y(t));
    else
        plot(x(t), y(t), 'r-');
    end
    
    grid on;
    xlabel('x');
    ylabel('y');
    
    title(['Function (', strX, '; ', strY, '):']);
    legend(['(', strX, '; ', strY, ')']);
end

