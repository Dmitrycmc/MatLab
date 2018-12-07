function [a, b, t0, t1, pdefun, icfun, bcfun] = getValues(app)
    a = str2double(app.aEditField.Value);
    b = str2double(app.bEditField.Value);
    t0 = str2double(app.t0EditField.Value);
    t1 = str2double(app.t1EditField.Value);

    cFun = inline(app.cEditField.Value, 'x', 't', 'u', 'dudx');
    fFun = inline(app.fEditField.Value, 'x', 't', 'u', 'dudx');
    sFun = inline(app.sEditField.Value, 'x', 't', 'u', 'dudx'); 
    
    pdefun = @(x, t, u, dudx) deal(cFun(x, t, u, dudx), fFun(x, t, u, dudx), sFun(x, t, u, dudx));

    p1Fun = inline(app.p1EditField.Value, 'xl', 'ul', 'xr', 'ur', 't');
    p2Fun = inline(app.p2EditField.Value, 'xl', 'ul', 'xr', 'ur', 't');
    q1Fun = inline(app.q1EditField.Value, 'xl', 'ul', 'xr', 'ur', 't');
    q2Fun = inline(app.q2EditField.Value, 'xl', 'ul', 'xr', 'ur', 't');
    bcfun = @(xl, ul, xr, ur, t) deal(p1Fun(xl, ul, xr, ur, t), q1Fun(xl, ul, xr, ur, t), p2Fun(xl, ul, xr, ur, t), q2Fun(xl, ul, xr, ur, t));

    icfun = inline(app.u0EditField.Value, 'x');            
end

