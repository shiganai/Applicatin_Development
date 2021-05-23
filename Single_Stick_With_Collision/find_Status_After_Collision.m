function [dtheta_After,I_F_X,I_F_Y] = find_Status_After_Collision(Lc,M,dtheta_Before,dx_Before,dy_Before,theta)
%FIND_STATUS_AFTER_COLLISION
%    [DTHETA_AFTER,I_F_X,I_F_Y] = FIND_STATUS_AFTER_COLLISION(LC,M,DTHETA_BEFORE,DX_BEFORE,DY_BEFORE,THETA)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    22-May-2021 22:59:40

dtheta_After = (Lc.*dtheta_Before.*4.0+dy_Before.*cos(theta).*3.0-dx_Before.*sin(theta).*3.0)./(Lc.*4.0);
if nargout > 1
    t2 = theta.*2.0;
    t3 = cos(t2);
    t4 = sin(t2);
    I_F_X = M.*(dx_Before.*5.0+dx_Before.*t3.*3.0+dy_Before.*t4.*3.0).*(-1.0./8.0);
end
if nargout > 2
    I_F_Y = M.*(dy_Before.*5.0+dx_Before.*t4.*3.0-dy_Before.*t3.*3.0).*(-1.0./8.0);
end
end