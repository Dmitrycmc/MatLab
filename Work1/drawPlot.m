function fig = drawPlot(grid, Y_exact, Y_interp, Y_mutated)
    fig = figure('name', 'Plots');   
    plot(grid, Y_exact, 'b-', grid, Y_interp, 'g-', grid, Y_mutated, 'r-');
    
    % set font family
    set(gca, 'FontName', 'Times New Roman')
    
    xlabel('\fontsize{20}x') ;
    ylabel('\fontsize{20}y(x)');
    title('\fontsize{30}Plot');
    legend('\fontsize{20}y_{ex}', '\fontsize{20}y_{sol}', '\fontsize{20}y_{mut}');
end

