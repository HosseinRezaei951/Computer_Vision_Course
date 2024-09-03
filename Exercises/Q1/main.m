% Clear command and workspace
clc;
clear;
rng('default');  % For reproducibility

%%%%%%%%%%%%%% part(a) %%%%%%%%%%%%%%
syms x s
g(x,s) = (1/(sqrt(2*pi)*s))*exp(-(1/(2*(s^2))).*(x^2));

syms x s
d2_g(x,s) = (1/(sqrt(2*pi)*s))*exp(-(1/(2*(s^2))).*(x^2))*(1/(s^2))*(((1/(s^2)).*x^2)-1);


%%%%%%%%%%%%%% part(b) %%%%%%%%%%%%%%
syms x s k
D(x,s,k) = (g(x,s*k)-g(x,s))/(k*s-s);

x = -8:0.01:8;
hold on;
plot(x,g(x,1))
plot(x,d2_g(x,1))
plot(x, D(x,1,1.2))
plot(x, D(x,1,1.4))
plot(x, D(x,1,1.6))
plot(x, D(x,1,1.8))
plot(x, D(x,1,2))
legend(["g(x)","g''(x)", ...
    "D(x,1.2)","D(x,1.4)","D(x,1.6)","D(x,1.8)","D(x,2)"]);
hold off;


