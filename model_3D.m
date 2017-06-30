syms v(t) 
eqn = diff(v,t) == (2*v*t) + (t^2 - v) + (v * sin(t));
cond = v(0) == 0.003;
v = dsolve(eqn, cond);
fplot(v,[0,0.5]);
% plot(v);