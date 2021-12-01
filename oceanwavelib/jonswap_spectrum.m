function [omega,S] = jonswap(U10,fetch)

    g = 9.81;
    k0 = logspace(-2,0,1000);
    omega = sqrt(k0*g);
    
    gamma = 3.3;

    w0 = 22*((g^2)/(U10*fetch))^(1/3);
    sigma = zeros(size(omega));
    sigma(omega<w0) = 0.07;
    sigma(omega>=w0) = 0.09;

    alpha = 0.076*(U10^2/fetch/g)^0.22;
    
    r = exp(-(omega-w0).^2 /2./sigma.^2/w0^2);

    S = alpha*g^2./omega.^5 .* exp(-5/4 * (w0./omega).^4 ) .* gamma.^r;

end