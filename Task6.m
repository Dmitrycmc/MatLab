function fig = Task6(a, f1, str1, b, f2, str2, c, f3, str3, d)
    eps = (d - a) / 1000;
    
    x1 = a : eps : b;
    x2 = b : eps : c;
    x3 = c : eps : d;
    
    y1 = f1(x1);
    y2 = f2(x2);
    y3 = f3(x3);
   
    fig = figure('name', ['Task 6: ', 'y = ', str1, '; ','y = ', str2, '; ','y = ', str3]);
    
    plot(x1, y1, 'r-', x2, y2, 'g-', x3, y3, 'b-');
    formatFigure(str1, str2, str3);
end

