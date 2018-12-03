function fig = Task5(f1, str1, style1, f2, str2, style2, a, b, together)
    eps = (b - a) / 1000;
    x = a : eps : b;
    
    y1 = f1(x);
    y2 = f2(x);
    
    fig = figure('name', ['Task 5: ', 'y = ', str1, '; ','y = ', str2]);
    
    if (together)
        plot(x, y1, style1, x, y2, style2);
        formatFigure(str1, str2, '');
    else 
        subplot(2, 1, 1);
        plot(x, y1, style1);
        formatFigure(str1, '', '');
        
        subplot(2, 1, 2);
        plot(x, y2, style2);
        formatFigure(str2, '', '');
    end 
end

