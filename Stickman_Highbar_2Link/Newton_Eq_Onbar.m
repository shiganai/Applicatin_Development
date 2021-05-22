clear all

syms th_Wrist_Pre(t)
syms th_Hip_Pre(t)
syms l_Wrist_Bar real
syms g m_Body m_Leg real
syms l_Body l_Leg real
syms x_Wrist_Pre(t) y_Wrist_Pre(t)

p_Origin = [x_Wrist_Pre, y_Wrist_Pre];
p_Wrist = p_Origin +  -l_Wrist_Bar .* [cos(th_Wrist_Pre + 1/2 * pi), sin(th_Wrist_Pre + 1/2 * pi)];
p_Hip = p_Wrist + l_Body .* [cos(th_Wrist_Pre + 1/2 * pi), sin(th_Wrist_Pre + 1/2 * pi)];
p_Toe = p_Hip + l_Leg .* [cos(th_Wrist_Pre + 1/2 * pi + th_Hip_Pre), sin(th_Wrist_Pre + 1/2 * pi + th_Hip_Pre)];

p_Body = formula(1/2 * (p_Wrist + p_Hip));
p_Leg = formula(1/2 * (p_Hip + p_Toe));

p_G = (m_Body * p_Body + m_Leg * p_Leg)/(m_Body + m_Leg);

v_Body = diff(p_Body);
v_Leg = diff(p_Leg);
v_G = formula(diff(p_G));

M = v_G * (m_Body + m_Leg);
d_M = formula(diff(M,t));

T = 1/2 * m_Body * (v_Body * v_Body') + 1/2 * m_Leg * (v_Leg * v_Leg') ...
    + 1/2 * (1/12 * m_Body * l_Body^2) * diff(th_Wrist_Pre)^2 ...
    + 1/2 * (1/12 * m_Leg * l_Leg^2) * diff(th_Wrist_Pre + th_Hip_Pre)^2;
U = p_Body(2) * m_Body * g + p_Leg(2) * m_Leg * g;

L = T - U;

f_X = subs(-functionalDerivative(L, x_Wrist_Pre), [x_Wrist_Pre, y_Wrist_Pre], sym([0,0]));
f_Y = subs(-functionalDerivative(L, y_Wrist_Pre), [x_Wrist_Pre, y_Wrist_Pre], sym([0,0]));

L = subs(L, [x_Wrist_Pre, y_Wrist_Pre], sym([0,0]));
d_M = subs(d_M, [x_Wrist_Pre, y_Wrist_Pre], sym([0,0]));

syms f_Wrist_Bar real
syms tau_Hip

laglange_Eqs = [
    -functionalDerivative(L, th_Wrist_Pre) == 0;
    -functionalDerivative(L, th_Hip_Pre) == tau_Hip;
    ];

syms th_Wrist dth_Wrist ddth_Wrist real
syms th_Hip dth_Hip ddth_Hip real

syms_Replaced = [
    th_Wrist_Pre, diff(th_Wrist_Pre,t), diff(th_Wrist_Pre,t,t), ...
    th_Hip_Pre, diff(th_Hip_Pre,t), diff(th_Hip_Pre,t,t), ...
    ];

syms_Replacing = [
    th_Wrist, dth_Wrist, ddth_Wrist, ...
    th_Hip, dth_Hip, ddth_Hip, ...
    ];

%{/
laglange_Eqs = simplify(subs(laglange_Eqs, syms_Replaced, syms_Replacing));
f_X = subs(f_X, syms_Replaced, syms_Replacing);
f_Y = subs(f_Y, syms_Replaced, syms_Replacing);
d_M = subs(d_M, syms_Replaced, syms_Replacing);

parallel.defaultClusterProfile('local');
c = parcluster();

variables = [ddth_Wrist, ddth_Hip];

[A, B] = equationsToMatrix(laglange_Eqs, variables);
tic
X = simplify(inv(A)*B);
toc
    
ddth_Wrist_Eq = simplify(X(1));
ddth_Hip_Eq = simplify(X(2));
% matlabFunction(ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'})
matlabFunction(ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar_Debbug.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'})

simplify(d_M(1) - f_X)
simplify(d_M(2) - f_Y)
simplify(subs(f_X, syms_Replacing, zeros(size(syms_Replacing))))
simplify(subs(f_Y, syms_Replacing, zeros(size(syms_Replacing))))

f_X = subs(f_X, variables, X');
f_Y = subs(f_Y, variables, X');

matlabFunction(formula(f_X), formula(f_Y), 'file', 'find_F_Onbar.m', 'outputs', {'f_X', 'f_Y'})
%}

%{
laglange_Eqs = subs(laglange_Eqs, syms_Replaced, syms_Replacing);

parallel.defaultClusterProfile('local');
c = parcluster();

variables = [ddth_Wrist, ddth_Hip];

[A, B] = equationsToMatrix(laglange_Eqs, variables);
tic
X = simplify(inv(A)*B);
toc

ddth_Wrist_Eq = X(1);
ddth_Hip_Eq = X(2);
matlabFunction(ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar_Debbug.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'})
%}

%{
laglange_Eqs = subs(laglange_Eqs, syms_Replaced, syms_Replacing);

parallel.defaultClusterProfile('local');
c = parcluster();

variables = [ddth_Wrist, ddth_Hip];

[A, B] = equationsToMatrix(laglange_Eqs, variables);
tic
X = simplify(inv(A)*B);
toc

ddth_Wrist_Eq = simplify(X(1));
ddth_Hip_Eq = simplify(X(2));
matlabFunction(ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar_Debbug2.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'})
%}

%{
laglange_Eqs = simplify(subs(laglange_Eqs, syms_Replaced, syms_Replacing));

parallel.defaultClusterProfile('local');
c = parcluster();

variables = [ddth_Wrist, ddth_Hip];

[A, B] = equationsToMatrix(laglange_Eqs, variables);
tic
X = simplify(inv(A)*B);
toc

ddth_Wrist_Eq = X(1);
ddth_Hip_Eq = X(2);
matlabFunction(ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar_Debbug3.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'})
%}

%{
job = createJob(c);
createTask(job, @matlabFunction, 1,{ddth_Wrist_Eq, ddth_Hip_Eq, 'file', 'find_dd_Onbar_Debbug.m', 'outputs', {'ddth_Wrist', 'ddth_Hip'}});
submit(job)
job.Tasks
%}































