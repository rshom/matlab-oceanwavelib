function [omega,S] = monospectrum(eta,T)
% MONOSPECTRUM wave dynamics using a single frequency

    omega = 2*pi/T;
    S = 0.5*eta^2/omega;

    % ys = @(t,X) -eta*cos(omega*t);
    % vs = @(t,X) eta*omega*sin(omega*t);
    % as = @(t,X) eta*omega.^2*cos(omega*t);
    
end

