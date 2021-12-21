function [omega,S] = gaussianspectrum(U10,sigma)
% GAUSSIANSPECTRUM
%
% Russ Shomberg, URI, 2021

% TODO: integrate toolboxes to improve this function

    g = 9.81;
    omega0 = g/U10;
    kp = g/U10^2;
    etap = 0.05/kp; % m

    k0 = logspace(-2,0,1000);
    omega = sqrt(k0*g);

    S = etap/(sqrt(2*pi*sigma.^2)) * exp(-(((omega-omega0).^2)/(2*sigma.^2)));



end