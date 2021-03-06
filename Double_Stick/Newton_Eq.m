clear all

syms th1_pre(t) th2_pre(t)
syms Lc1 Lc2 M1 M2 real
syms g real
syms x1(t) y1(t) x2(t) y2(t)
syms tau1 tau2 real

p1G = [x1, y1] + Lc1 * [sin(th1_pre), -cos(th1_pre)];
p2G = [x2, y2] + Lc2 * [sin(th2_pre), -cos(th2_pre)];
% p2G = p1G + Lc2 * [sin(th2_pre), -cos(th2_pre)];
% p1G = Lc1 * [cos(th1_pre + 3/2*pi), sin(th1_pre + 3/2*pi)];
% p2G = p1G + Lc2 * [cos(th2_pre + 3/2*pi), sin(th2_pre + 3/2*pi)];
pGAll = (M1 * p1G + M2 * p2G)/(M1 + M2);

p1G_formula = formula(p1G);
p2G_formula = formula(p2G);
pGAll_formula = formula(pGAll);

v1G = diff(p1G, t);
v2G = diff(p2G, t);
vGAll = diff(pGAll, t);

% T = 1/2 * M * (vG * vG');
% T = 1/2 * M1 * (v1G * v1G') + 1/2 * 1/12 * M1 * (2*Lc1)^2 * diff(th1_pre,t)^2 ...
%     + 1/2 * M2 * (v2G * v2G') + 1/2 * 1/12 * M2 * (2*Lc2)^2 * diff(th2_pre,t)^2;
T = 1/2 * M1 * (v1G * v1G') ...
    + 1/2 * M2 * (v2G * v2G');

U = M1 * g * p1G_formula(1,2) + M2 * g * p2G_formula(1,2);

momentumG = M1 * cross([p1G - pGAll, 0], [v1G - vGAll, 0]) +  M2 * cross([p2G - pGAll, 0], [v2G - vGAll, 0]);
momentumGF = formula(momentumG);
% momentumG = momentumGF(1,3) ...
%     + 1/12 * M1 * (2*Lc1)^2 * diff(th1_pre,t) ...
%     + 1/12 * M2 * (2*Lc2)^2 * diff(th2_pre,t);
momentumG = momentumGF(1,3);

dmomentumG = diff(momentumG, t);

L = T - U;

Fx_in = -functionalDerivative(L, x2);
Fy_in = -functionalDerivative(L, y2);

Fx_out = -functionalDerivative(L, x1) + Fx_in;
Fy_out = -functionalDerivative(L, y1) + Fy_in;

syms x1_Lim y1_Lim x2_Lim y2_Lim

Equations_Limitations = [
    x1_Lim == 0,...
    y1_Lim == 0,...
    x2_Lim == x1_Lim + 1 * Lc1 * cos(th1_pre + 3/2*pi),...
    y2_Lim == y1_Lim + 1 * Lc1 * sin(th1_pre + 3/2*pi),...
    ];
variables_Limitation = [x1_Lim, y1_Lim, x2_Lim, y2_Lim];
[A, B] = equationsToMatrix(Equations_Limitations, variables_Limitation);
X_Limitation = simplify(inv(A) * B);
Replaced_Limitaion = [x1, y1, x2, y2];

L = subs(L, Replaced_Limitaion, X_Limitation');

Fx_out = subs(Fx_out, Replaced_Limitaion, X_Limitation');
Fy_out = subs(Fy_out, Replaced_Limitaion, X_Limitation');
Fx_in = subs(Fx_in, Replaced_Limitaion, X_Limitation');
Fy_in = subs(Fy_in, Replaced_Limitaion, X_Limitation');
dmomentumG = subs(dmomentumG, Replaced_Limitaion, X_Limitation');
pGAll = subs(pGAll, Replaced_Limitaion, X_Limitation');

th1_eq = -functionalDerivative(L, th1_pre) == tau1 - tau2;
th2_eq = -functionalDerivative(L, th2_pre) == tau2;

Equations = [th1_eq; th2_eq];

syms th1 dth1 ddth1 real
syms th2 dth2 ddth2 real

SymbolReplaced = [th1_pre, diff(th1_pre, t), diff(th1_pre, t, t), ...
    th2_pre, diff(th2_pre, t), diff(th2_pre, t, t)];

SymbolReplacing = [th1, dth1, ddth1, ...
    th2, dth2, ddth2];

Equations = subs(Equations, SymbolReplaced, SymbolReplacing);
% simplify(Equations)

Fx_out = expand(subs(Fx_out, SymbolReplaced, SymbolReplacing));
Fy_out = expand(subs(Fy_out, SymbolReplaced, SymbolReplacing));
Fx_in = expand(subs(Fx_in, SymbolReplaced, SymbolReplacing));
Fy_in = expand(subs(Fy_in, SymbolReplaced, SymbolReplacing));
dmomentumG = subs(dmomentumG, SymbolReplaced, SymbolReplacing);
pGAll = subs(pGAll, SymbolReplaced, SymbolReplacing);

variables = [ddth1, ddth2];

[A, B] = equationsToMatrix(Equations, variables);
detA = det(A);
X = simplify(inv(A)*B);

ddth1_eq = simplify(X(1,1));
ddth2_eq = simplify(X(2,1));

Fx_out = simplify(expand(subs(Fx_out, variables, X')));
% subs(Fx_out, SymbolReplacing, zeros(size(SymbolReplacing)))
Fy_out = simplify(expand(subs(Fy_out, variables, X')));
simplify(subs(Fy_out, SymbolReplacing, zeros(size(SymbolReplacing))))
Fx_in = expand(subs(Fx_in, variables, X'));
% subs(Fx_in, SymbolReplacing, zeros(size(SymbolReplacing)))
Fy_in = expand(subs(Fy_in, variables, X'));
subs(Fy_in, SymbolReplacing, zeros(size(SymbolReplacing)))
% Fx_out = expand(subs(subs(Fx_out, ddth, ddth_eq), Mth, 0))
% Fy_out = expand(subs(subs(Fy_out, ddth, ddth_eq), Mth, 0))

dmomentumG = subs(dmomentumG, variables, X');
% dmomentumG = simplify(expand(subs(dmomentumG, variables, X')))

pGAll = subs(pGAll, variables, X');
% pGAll = simplify(expand(subs(pGAll, variables, X')))

Torque_F_out = formula(cross([0 - pGAll, 0], [Fx_out, Fy_out, 0]));
Torque_F_out = simplify(expand(Torque_F_out(1,3)));
simplify(dmomentumG - Torque_F_out)

matlabFunction(ddth1_eq, ddth2_eq, 'file', 'find_ddth1_ddth2.m', 'outputs', {'ddth1', 'ddth2'})

matlabFunction(formula(Fx_out), 'file', 'find_Fx_out.m', 'outputs', {'Fx_out'})
matlabFunction(formula(Fy_out), 'file', 'find_Fy_out.m', 'outputs', {'Fy_out'})

matlabFunction(formula(Fx_in), 'file', 'find_Fx_in.m', 'outputs', {'Fx_in'})
matlabFunction(formula(Fy_in), 'file', 'find_Fy_in.m', 'outputs', {'Fy_in'})