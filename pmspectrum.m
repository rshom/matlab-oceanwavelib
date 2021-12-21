function [omega,S] = pmspectrum(U10)
% PMSPECTRUM
%
% Russ Shomberg, URI, 2021

    g = 9.81;
    wp = g/U10;
    kp = g/U10^2;
    etap = 0.05/kp; % m

    k0 = logspace(-2,0,1000);
    phi = 2*pi*rand(1,length(k0));
    omega = sqrt(k0*g);

    U19p5 = 1.026*U10;

    beta = 0.74;
    alpha = 8.1e-3;
    omega0 = g/U19p5;

    S = (alpha*g^2)./(omega.^5).*exp(-beta*(omega0./omega).^4);


end