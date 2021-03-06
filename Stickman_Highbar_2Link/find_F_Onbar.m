function [f_X,f_Y] = find_F_Onbar(dth_Hip,dth_Wrist,g,l_Body,l_Leg,l_Wrist_Bar,m_Body,m_Leg,tau_Hip,th_Hip,th_Wrist)
%FIND_F_ONBAR
%    [F_X,F_Y] = FIND_F_ONBAR(DTH_HIP,DTH_WRIST,G,L_BODY,L_LEG,L_WRIST_BAR,M_BODY,M_LEG,TAU_HIP,TH_HIP,TH_WRIST)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    22-May-2021 02:07:33

t2 = conj(tau_Hip);
t3 = cos(th_Hip);
t4 = sin(th_Hip);
t5 = sin(th_Wrist);
t6 = th_Hip+th_Wrist;
t7 = dth_Hip.^2;
t8 = dth_Wrist.^2;
t9 = l_Leg.*2.0;
t10 = l_Body.^2;
t11 = l_Leg.^2;
t12 = l_Wrist_Bar.^2;
t13 = th_Hip.*2.0;
t18 = 1.0./l_Leg;
t20 = 1.0./m_Leg;
t26 = l_Body.*l_Wrist_Bar.*m_Body.*3.0;
t27 = l_Body.*l_Wrist_Bar.*m_Leg.*6.0;
t29 = pi./2.0;
t38 = l_Body.*l_Wrist_Bar.*m_Body.*1.2e+1;
t39 = l_Body.*l_Wrist_Bar.*m_Body.*2.4e+1;
t41 = l_Body.*l_Wrist_Bar.*m_Leg.*2.4e+1;
t42 = l_Body.*l_Wrist_Bar.*m_Leg.*3.0e+1;
t14 = cos(t13);
t15 = t3.^2;
t16 = sin(t13);
t17 = sin(t6);
t19 = 1.0./t11;
t21 = t2.*1.2e+1;
t22 = m_Body.*t10;
t23 = m_Leg.*t11;
t24 = l_Body.*t3.*3.0;
t25 = l_Wrist_Bar.*t3.*3.0;
t28 = t6+th_Hip;
t32 = m_Leg.*t10.*3.0;
t33 = m_Body.*t12.*3.0;
t34 = m_Leg.*t12.*3.0;
t35 = l_Leg.*t2.*2.4e+1;
t37 = -t26;
t40 = -t27;
t45 = t29+th_Wrist;
t46 = g.*l_Body.*m_Body.*t5.*3.0;
t47 = g.*l_Body.*m_Leg.*t5.*6.0;
t48 = g.*l_Wrist_Bar.*m_Body.*t5.*6.0;
t49 = g.*l_Wrist_Bar.*m_Leg.*t5.*6.0;
t51 = m_Leg.*t10.*1.2e+1;
t52 = m_Leg.*t10.*1.5e+1;
t53 = m_Body.*t12.*1.2e+1;
t54 = m_Body.*t12.*2.4e+1;
t55 = m_Leg.*t12.*1.2e+1;
t56 = m_Leg.*t12.*1.5e+1;
t57 = -t38;
t58 = -t39;
t59 = -t41;
t60 = -t42;
t61 = l_Body.*t2.*t3.*3.6e+1;
t62 = l_Wrist_Bar.*t2.*t3.*3.6e+1;
t63 = l_Leg.*l_Wrist_Bar.*m_Leg.*t3.*-3.0;
t68 = t6+t29;
t69 = dth_Hip.*dth_Wrist.*l_Body.*l_Leg.*m_Leg.*t4.*6.0;
t70 = dth_Hip.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*m_Leg.*t4.*6.0;
t76 = g.*l_Body.*l_Leg.*m_Body.*t5.*1.2e+1;
t77 = g.*l_Body.*l_Leg.*m_Leg.*t5.*1.5e+1;
t78 = g.*l_Leg.*l_Wrist_Bar.*m_Body.*t5.*2.4e+1;
t79 = g.*l_Leg.*l_Wrist_Bar.*m_Leg.*t5.*1.5e+1;
t80 = l_Body.*l_Leg.*m_Leg.*t4.*t7.*3.0;
t81 = l_Body.*l_Leg.*m_Leg.*t4.*t8.*6.0;
t82 = l_Leg.*l_Wrist_Bar.*m_Leg.*t4.*t7.*3.0;
t83 = l_Leg.*l_Wrist_Bar.*m_Leg.*t4.*t8.*6.0;
t30 = sin(t28);
t31 = t22.*4.0;
t36 = -t25;
t43 = l_Leg.*m_Leg.*t24;
t44 = l_Leg.*m_Leg.*t25;
t50 = t22.*8.0;
t64 = -t48;
t65 = -t49;
t66 = cos(t45);
t67 = sin(t45);
t71 = cos(t68);
t72 = g.*l_Leg.*m_Leg.*t17.*3.0;
t73 = g.*l_Leg.*m_Leg.*t17.*6.0;
t74 = sin(t68);
t75 = -t62;
t84 = -t70;
t85 = l_Body.*l_Wrist_Bar.*m_Leg.*t14.*1.8e+1;
t86 = l_Body.*l_Wrist_Bar.*m_Leg.*t15.*1.8e+1;
t87 = -t76;
t88 = -t77;
t89 = -t81;
t90 = -t82;
t91 = m_Leg.*t10.*t14.*9.0;
t92 = m_Leg.*t12.*t14.*9.0;
t93 = m_Leg.*t10.*t15.*9.0;
t94 = m_Leg.*t12.*t15.*9.0;
t95 = dth_Hip.*dth_Wrist.*l_Body.*t4.*t23.*2.4e+1;
t96 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*t4.*t23.*2.4e+1;
t103 = l_Body.*t4.*t7.*t23.*1.2e+1;
t104 = l_Body.*t4.*t8.*t23.*1.2e+1;
t105 = l_Wrist_Bar.*t4.*t7.*t23.*1.2e+1;
t106 = l_Wrist_Bar.*t4.*t8.*t23.*1.2e+1;
t108 = l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t8.*t16.*1.8e+1;
t112 = l_Leg.*m_Leg.*t8.*t10.*t16.*9.0;
t113 = l_Leg.*m_Leg.*t8.*t12.*t16.*9.0;
t97 = -t91;
t98 = -t92;
t99 = -t93;
t100 = -t94;
t101 = g.*l_Body.*l_Leg.*m_Leg.*t30.*9.0;
t102 = g.*l_Leg.*l_Wrist_Bar.*m_Leg.*t30.*9.0;
t107 = -t95;
t110 = -t103;
t111 = -t104;
t114 = t9+t24+t36;
t115 = -t112;
t116 = -t113;
t117 = t21+t73+t83+t89;
t118 = t22+t23+t32+t33+t34+t37+t40+t43+t63;
t122 = t46+t47+t64+t65+t69+t72+t80+t84+t90;
t109 = -t102;
t119 = t31+t51+t53+t55+t57+t59+t86+t99+t100;
t120 = t50+t52+t54+t56+t58+t60+t85+t97+t98;
t121 = 1.0./t119;
t123 = 1.0./t120;
t127 = t35+t61+t75+t78+t79+t87+t88+t96+t101+t105+t106+t107+t108+t109+t110+t111+t115+t116;
t124 = t18.*t114.*t121.*t122;
t125 = t19.*t20.*t117.*t118.*t121;
t126 = -t125;
t128 = t124+t126;
f_X = l_Body.*m_Body.*t8.*t66.*(-1.0./2.0)-l_Body.*m_Leg.*t8.*t66-(l_Leg.*m_Leg.*t7.*t71)./2.0-(l_Leg.*m_Leg.*t8.*t71)./2.0+(l_Leg.*m_Leg.*t74.*t128)./2.0+l_Wrist_Bar.*m_Body.*t8.*t66+l_Wrist_Bar.*m_Leg.*t8.*t66+(m_Leg.*t74.*t123.*t127)./2.0-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t71+(l_Body.*m_Body.*t18.*t67.*t123.*t127)./2.0+l_Body.*m_Leg.*t18.*t67.*t123.*t127-l_Wrist_Bar.*m_Body.*t18.*t67.*t123.*t127-l_Wrist_Bar.*m_Leg.*t18.*t67.*t123.*t127;
if nargout > 1
    f_Y = g.*m_Body+g.*m_Leg-(l_Body.*m_Body.*t8.*t67)./2.0-l_Body.*m_Leg.*t8.*t67-(l_Leg.*m_Leg.*t7.*t74)./2.0-(l_Leg.*m_Leg.*t8.*t74)./2.0-(l_Leg.*m_Leg.*t71.*t128)./2.0+l_Wrist_Bar.*m_Body.*t8.*t67+l_Wrist_Bar.*m_Leg.*t8.*t67-(m_Leg.*t71.*t123.*t127)./2.0-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t74-(l_Body.*m_Body.*t18.*t66.*t123.*t127)./2.0-l_Body.*m_Leg.*t18.*t66.*t123.*t127+l_Wrist_Bar.*m_Body.*t18.*t66.*t123.*t127+l_Wrist_Bar.*m_Leg.*t18.*t66.*t123.*t127;
end
end