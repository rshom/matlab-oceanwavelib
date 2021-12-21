# Ocean Wave Library #
> Time series wave functions based on realistic ocean wave spectrums

## Example ##

```
eta = 0.5;
T = 3;
[omega,S] = monospectrum(eta,T);

U10 = 8;
[omega,S] = pmspectrum(U10);

U10 = 8;
fetch = 100e3;
[omega,S] = jonswapspectrum(U10,fetch);

[ys vs as] = spectrum2series(omega,S);

figure;
hold on;
tspan = 0:.1:120;
plot(tspan,ys(tspan,0));
depth = 5;
plot(tspan,ys(tspan,depth)-depth);
```
