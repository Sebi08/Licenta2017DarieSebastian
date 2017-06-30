syms lzero l(t) r k a deltaPi p;
eqn = diff(l,t) == ((2*pi*r*l*k)/a)*((deltaPi)-p);
cond = l(0) == 4*(10^(-5));
l = dsolve(eqn, cond);
pretty(l);
lt = subs(l, [k, deltaPi, p, a, r], [3*(10^(-4)), 0.08206, 0.1, 0.4*(10^(-5)), 0.03]);
vt = 0:1:10;
vlt = zeros(1, length(vt));
n = length(vt);

vlt = vpa(subs(lt, vt));

plot(vt,vlt);