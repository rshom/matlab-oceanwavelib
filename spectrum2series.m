function [ys vs as] = spectrum2series(omega,S)

    g = 9.81;

    dw = diff([0 omega]);
    A = sqrt(2*S.*dw);
    phi = 2*pi*rand(1,length(omega));
    
    l = 2*pi*g./omega.^2;
    

    ys = @(t,z) -(exp(2*pi*z./l).*A)*(cos(omega'*t+phi'));
    vs = @(t,z) ((exp(2*pi*z./l).*A).*omega)*(sin(omega'*t+phi'));
    as = @(t,z) ((exp(2*pi*z./l).*A).*omega.^2)*(cos(omega'*t+phi'));

end
