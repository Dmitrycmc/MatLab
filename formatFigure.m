function formatFigure(str1, str2, str3)
    grid on;
    xlabel('x');
    ylabel('y');
    if str2 == ""
        % one plot on the figure
        title(['Function y = ', str1, ':']);
        legend(['y = ', str1]);
    elseif str3 == ""
        % two plots on the figure
        title('Functions:');
        legend(['y = ', str1], ['y = ', str2]);
    else
        % three plots on the figure
        title('Functions:');
        legend(['y = ', str1], ['y = ', str2], ['y = ', str3]);
    end
end

