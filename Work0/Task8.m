function [fig1, fig2] = Task8(f, str, ax, bx, ay, by, together)
    N = 40;

    epsx = (bx - ax) / N;
    epsy = (by - ay) / N;

    [x, y] = meshgrid(ax : epsx : bx, ay : epsy : by);
    z = f(x, y);

    if (together)
        fig1 = figure('name', ['Task 8: ', 'z = ', str]);
        colormap summer;
        
        subplot(2, 1, 1);
        mesh(x, y, z);
        
        subplot(2, 1, 2);
        surf(x, y, z);
    else
        fig1 = figure('name', ['Task 8 (mesh): ', 'z = ', str]);
        colormap summer;
        mesh(x, y, z);
        
        fig2 = figure('name', ['Task 8 (surf): ', 'z = ', str]);
        colormap summer;
        surf(x, y, z);
    end
end

