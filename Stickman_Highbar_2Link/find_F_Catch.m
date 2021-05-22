function [f_X,f_Y] = find_F_Catch(dl_Wrist_Bar,dth_Hip,dth_Wrist,f_Wrist_Bar,g,l_Body,l_Leg,l_Wrist_Bar,m_Body,m_Leg,tau_Hip,th_Hip,th_Wrist)
%FIND_F_CATCH
%    [F_X,F_Y] = FIND_F_CATCH(DL_WRIST_BAR,DTH_HIP,DTH_WRIST,F_WRIST_BAR,G,L_BODY,L_LEG,L_WRIST_BAR,M_BODY,M_LEG,TAU_HIP,TH_HIP,TH_WRIST)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    22-May-2021 02:11:34

t2 = conj(tau_Hip);
t3 = cos(th_Hip);
t4 = cos(th_Wrist);
t5 = sin(th_Hip);
t6 = sin(th_Wrist);
t7 = dth_Hip.^2;
t8 = dth_Wrist.^2;
t9 = l_Body.^2;
t10 = l_Body.^3;
t11 = l_Leg.^2;
t12 = l_Leg.^3;
t13 = l_Wrist_Bar.^2;
t14 = l_Wrist_Bar.^3;
t15 = m_Body.^2;
t16 = m_Leg.^2;
t17 = m_Leg.^3;
t18 = th_Hip.*2.0;
t22 = 1.0./l_Leg;
t23 = pi./2.0;
t27 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*2.7e+1;
t28 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*4.5e+1;
t40 = f_Wrist_Bar.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*4.8e+1;
t41 = f_Wrist_Bar.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*6.0e+1;
t59 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*m_Body.*m_Leg.*5.4e+1;
t60 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*6.0e+1;
t19 = cos(t18);
t20 = t3.^2;
t21 = sin(t18);
t24 = l_Leg.*m_Leg.*t2.*6.0;
t25 = l_Body.*l_Wrist_Bar.*t16.*6.0;
t26 = l_Leg.*m_Body.*t2.*2.4e+1;
t29 = t23+th_Wrist;
t30 = l_Body.*l_Wrist_Bar.*t15.*1.2e+1;
t31 = l_Body.*l_Wrist_Bar.*t15.*2.4e+1;
t33 = l_Body.*l_Wrist_Bar.*t16.*1.2e+1;
t34 = m_Body.*m_Leg.*t9.*1.3e+1;
t35 = m_Body.*m_Leg.*t9.*2.0e+1;
t36 = m_Body.*m_Leg.*t13.*1.5e+1;
t37 = m_Body.*m_Leg.*t13.*3.0e+1;
t38 = -t27;
t39 = -t28;
t45 = t9.*t15.*4.0;
t46 = t9.*t16.*3.0;
t47 = t9.*t16.*6.0;
t48 = t13.*t16.*3.0;
t49 = t13.*t16.*6.0;
t54 = f_Wrist_Bar.*l_Leg.*m_Body.*t9.*1.6e+1;
t55 = f_Wrist_Bar.*l_Leg.*m_Leg.*t9.*3.0e+1;
t56 = f_Wrist_Bar.*l_Leg.*m_Body.*t13.*4.8e+1;
t57 = f_Wrist_Bar.*l_Leg.*m_Leg.*t13.*3.0e+1;
t61 = l_Body.*m_Body.*t2.*t3.*3.6e+1;
t62 = l_Body.*m_Leg.*t2.*t3.*3.6e+1;
t63 = l_Wrist_Bar.*m_Body.*t2.*t3.*3.6e+1;
t64 = l_Wrist_Bar.*m_Leg.*t2.*t3.*3.6e+1;
t65 = t9.*t15.*8.0;
t66 = t13.*t15.*1.2e+1;
t67 = t13.*t15.*2.4e+1;
t68 = g.*l_Body.*l_Leg.*t6.*t16.*6.0;
t69 = g.*l_Leg.*l_Wrist_Bar.*t6.*t16.*6.0;
t70 = g.*l_Body.*l_Leg.*m_Body.*m_Leg.*t6.*2.7e+1;
t71 = g.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t6.*3.0e+1;
t76 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*t15.*2.4e+1;
t77 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*t16.*1.2e+1;
t78 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*t15.*4.8e+1;
t79 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*t16.*1.2e+1;
t80 = t2.*t11.*t16.*6.0;
t81 = -t59;
t82 = m_Body.*m_Leg.*t2.*t11.*2.4e+1;
t85 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*2.16e+2;
t93 = g.*l_Body.*l_Leg.*t6.*t15.*1.2e+1;
t95 = g.*l_Leg.*l_Wrist_Bar.*t6.*t15.*2.4e+1;
t96 = m_Body.*t2.*t5.*t9.*2.4e+1;
t98 = l_Body.*l_Wrist_Bar.*m_Body.*t2.*t5.*7.2e+1;
t99 = l_Body.*l_Wrist_Bar.*m_Leg.*t2.*t5.*1.44e+2;
t100 = f_Wrist_Bar.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t5.*3.6e+1;
t103 = t2.*t9.*t15.*2.4e+1;
t104 = l_Body.*l_Wrist_Bar.*t2.*t15.*7.2e+1;
t105 = l_Body.*l_Wrist_Bar.*t2.*t16.*1.44e+2;
t106 = m_Body.*m_Leg.*t2.*t9.*9.6e+1;
t107 = m_Body.*m_Leg.*t2.*t13.*1.44e+2;
t109 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*t11.*t17.*1.2e+1;
t110 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*t11.*t17.*1.2e+1;
t111 = l_Leg.*m_Body.*m_Leg.*t8.*t10.*2.5e+1;
t112 = l_Leg.*m_Body.*m_Leg.*t8.*t14.*6.0e+1;
t117 = m_Leg.*t2.*t5.*t9.*7.2e+1;
t118 = m_Body.*t2.*t5.*t13.*7.2e+1;
t119 = m_Leg.*t2.*t5.*t13.*7.2e+1;
t123 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*t4.*t15.*4.8e+1;
t124 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*t4.*t16.*2.4e+1;
t125 = g.*l_Leg.*m_Body.*m_Leg.*t4.*t9.*4.0e+1;
t126 = g.*l_Leg.*m_Body.*m_Leg.*t4.*t13.*6.0e+1;
t127 = g.*l_Body.*t6.*t11.*t17.*6.0;
t128 = g.*l_Wrist_Bar.*t6.*t11.*t17.*6.0;
t129 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t4.*9.0e+1;
t130 = f_Wrist_Bar.*l_Leg.*m_Body.*m_Leg.*t5.*t9.*1.2e+1;
t131 = f_Wrist_Bar.*l_Leg.*m_Body.*m_Leg.*t5.*t13.*3.6e+1;
t132 = l_Body.*l_Leg.*m_Body.*m_Leg.*t2.*t3.*7.2e+1;
t133 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*t3.*7.2e+1;
t136 = t2.*t9.*t16.*7.2e+1;
t137 = t2.*t13.*t15.*7.2e+1;
t138 = t2.*t13.*t16.*7.2e+1;
t142 = dth_Hip.*dth_Wrist.*l_Body.*t5.*t11.*t16.*6.0;
t143 = dth_Hip.*dth_Wrist.*l_Body.*t5.*t12.*t17.*6.0;
t144 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*t5.*t11.*t16.*6.0;
t145 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*t5.*t12.*t17.*6.0;
t146 = dth_Hip.*dth_Wrist.*l_Body.*m_Body.*m_Leg.*t5.*t11.*2.4e+1;
t147 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*m_Body.*m_Leg.*t5.*t11.*2.4e+1;
t148 = l_Leg.*t8.*t10.*t15.*8.0;
t149 = l_Leg.*t8.*t10.*t16.*1.2e+1;
t150 = l_Leg.*t8.*t14.*t15.*4.8e+1;
t151 = l_Leg.*t8.*t14.*t16.*1.2e+1;
t154 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Leg.*t11.*t15.*2.4e+1;
t155 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Body.*t11.*t16.*5.4e+1;
t156 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*m_Leg.*t11.*t15.*4.8e+1;
t157 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*m_Body.*t11.*t16.*6.0e+1;
t160 = g.*l_Leg.*t4.*t9.*t15.*1.6e+1;
t161 = g.*l_Leg.*t4.*t9.*t16.*1.2e+1;
t162 = g.*l_Leg.*t4.*t13.*t15.*4.8e+1;
t163 = g.*l_Leg.*t4.*t13.*t16.*1.2e+1;
t167 = f_Wrist_Bar.*l_Leg.*t5.*t9.*t16.*3.6e+1;
t168 = f_Wrist_Bar.*l_Leg.*t5.*t13.*t16.*3.6e+1;
t170 = l_Body.*l_Leg.*t2.*t3.*t16.*7.2e+1;
t171 = l_Leg.*l_Wrist_Bar.*t2.*t3.*t16.*7.2e+1;
t172 = f_Wrist_Bar.*l_Body.*l_Leg.*l_Wrist_Bar.*t5.*t16.*7.2e+1;
t177 = l_Body.*t5.*t7.*t11.*t16.*3.0;
t178 = l_Body.*t5.*t7.*t12.*t17.*3.0;
t179 = l_Body.*t5.*t8.*t11.*t16.*3.0;
t180 = l_Body.*t5.*t8.*t12.*t17.*3.0;
t181 = l_Wrist_Bar.*t5.*t7.*t11.*t16.*3.0;
t182 = l_Wrist_Bar.*t5.*t7.*t12.*t17.*3.0;
t183 = l_Wrist_Bar.*t5.*t8.*t11.*t16.*3.0;
t184 = l_Wrist_Bar.*t5.*t8.*t12.*t17.*3.0;
t187 = l_Body.*m_Body.*m_Leg.*t5.*t7.*t11.*1.2e+1;
t188 = l_Body.*m_Body.*m_Leg.*t5.*t8.*t11.*1.2e+1;
t189 = l_Wrist_Bar.*m_Body.*m_Leg.*t5.*t7.*t11.*1.2e+1;
t190 = l_Wrist_Bar.*m_Body.*m_Leg.*t5.*t8.*t11.*1.2e+1;
t191 = g.*l_Body.*m_Leg.*t6.*t11.*t15.*1.2e+1;
t192 = g.*l_Body.*m_Body.*t6.*t11.*t16.*2.7e+1;
t193 = g.*l_Wrist_Bar.*m_Leg.*t6.*t11.*t15.*2.4e+1;
t194 = g.*l_Wrist_Bar.*m_Body.*t6.*t11.*t16.*3.0e+1;
t198 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*t3.*t16.*3.6e+1;
t199 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t3.*t15.*3.6e+1;
t200 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t3.*t11.*4.8e+1;
t203 = l_Leg.*l_Wrist_Bar.*t8.*t9.*t15.*4.0e+1;
t204 = l_Body.*l_Leg.*t8.*t13.*t16.*3.6e+1;
t205 = l_Leg.*l_Wrist_Bar.*t8.*t9.*t16.*3.6e+1;
t209 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t8.*t9.*1.0e+2;
t210 = l_Body.*l_Leg.*m_Body.*m_Leg.*t8.*t13.*1.35e+2;
t218 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*t3.*t6.*t16.*1.8e+1;
t219 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t3.*t6.*t15.*1.8e+1;
t234 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*t3.*t11.*t16.*2.4e+1;
t235 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*t3.*t9.*t16.*1.2e+1;
t236 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Leg.*t3.*t9.*t15.*1.2e+1;
t237 = dth_Hip.*dth_Wrist.*m_Body.*m_Leg.*t3.*t9.*t11.*1.6e+1;
t238 = dth_Hip.*dth_Wrist.*m_Body.*m_Leg.*t3.*t11.*t13.*4.8e+1;
t239 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t3.*t7.*t11.*2.4e+1;
t240 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t3.*t8.*t11.*2.4e+1;
t241 = l_Leg.*m_Leg.*t5.*t8.*t10.*t15.*6.0;
t244 = dth_Hip.*dth_Wrist.*l_Body.*m_Body.*t5.*t12.*t16.*2.4e+1;
t245 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*m_Body.*t5.*t12.*t16.*2.4e+1;
t247 = l_Body.*l_Leg.*t8.*t13.*t15.*7.2e+1;
t252 = g.*l_Leg.*m_Leg.*t3.*t6.*t9.*t15.*6.0;
t259 = dth_Hip.*dth_Wrist.*t3.*t9.*t11.*t16.*1.2e+1;
t260 = dth_Hip.*dth_Wrist.*t3.*t11.*t13.*t16.*1.2e+1;
t264 = m_Body.*m_Leg.*t3.*t7.*t9.*t11.*8.0;
t265 = m_Body.*m_Leg.*t3.*t8.*t9.*t11.*8.0;
t266 = m_Body.*m_Leg.*t3.*t7.*t11.*t13.*2.4e+1;
t267 = m_Body.*m_Leg.*t3.*t8.*t11.*t13.*2.4e+1;
t273 = l_Body.*m_Body.*t5.*t7.*t12.*t16.*1.2e+1;
t275 = l_Body.*m_Body.*t5.*t8.*t12.*t16.*1.2e+1;
t276 = l_Leg.*m_Body.*t5.*t8.*t10.*t16.*1.8e+1;
t277 = l_Wrist_Bar.*m_Body.*t5.*t7.*t12.*t16.*1.2e+1;
t278 = l_Wrist_Bar.*m_Body.*t5.*t8.*t12.*t16.*1.2e+1;
t282 = g.*l_Leg.*m_Body.*t3.*t6.*t9.*t16.*-6.0;
t284 = l_Body.*l_Wrist_Bar.*t3.*t7.*t11.*t16.*-1.2e+1;
t285 = l_Body.*l_Wrist_Bar.*t3.*t8.*t11.*t16.*-1.2e+1;
t293 = l_Body.*l_Leg.*m_Body.*t5.*t8.*t13.*t16.*1.8e+1;
t294 = l_Body.*l_Leg.*m_Leg.*t5.*t8.*t13.*t15.*1.8e+1;
t295 = l_Leg.*l_Wrist_Bar.*m_Leg.*t5.*t8.*t9.*t15.*1.8e+1;
t32 = -t25;
t42 = cos(t29);
t43 = sin(t29);
t44 = t29+th_Hip;
t50 = -t30;
t51 = -t31;
t52 = -t33;
t72 = -t54;
t73 = -t55;
t74 = -t56;
t75 = -t57;
t83 = -t63;
t84 = -t64;
t86 = m_Body.*m_Leg.*t9.*t19.*6.0;
t87 = m_Body.*m_Leg.*t9.*t20.*6.0;
t88 = l_Leg.*m_Leg.*t2.*t20.*1.8e+1;
t89 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t19.*9.0;
t90 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t20.*9.0;
t91 = f_Wrist_Bar.*l_Body.*l_Leg.*m_Leg.*t21.*9.0;
t92 = f_Wrist_Bar.*l_Leg.*l_Wrist_Bar.*m_Leg.*t21.*9.0;
t94 = -t68;
t97 = -t70;
t101 = -t76;
t102 = -t77;
t108 = -t85;
t116 = -t93;
t120 = -t98;
t121 = -t99;
t122 = f_Wrist_Bar.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t19.*3.6e+1;
t134 = l_Body.*l_Leg.*m_Leg.*t2.*t21.*1.8e+1;
t135 = l_Leg.*l_Wrist_Bar.*m_Leg.*t2.*t21.*1.8e+1;
t139 = -t104;
t140 = -t105;
t141 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*m_Body.*m_Leg.*t20.*1.8e+1;
t152 = -t109;
t153 = -t112;
t158 = f_Wrist_Bar.*l_Leg.*m_Leg.*t9.*t19.*1.8e+1;
t159 = f_Wrist_Bar.*l_Leg.*m_Leg.*t13.*t19.*1.8e+1;
t165 = -t125;
t166 = -t126;
t169 = -t127;
t173 = -t130;
t174 = -t131;
t175 = -t133;
t185 = -t142;
t186 = -t143;
t195 = -t146;
t196 = -t150;
t197 = -t151;
t201 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*m_Leg.*t9.*t21.*6.0;
t202 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t21.*1.8e+1;
t206 = g.*l_Body.*l_Leg.*m_Body.*m_Leg.*t6.*t20.*9.0;
t207 = -t154;
t208 = -t155;
t211 = -t160;
t212 = -t161;
t213 = -t162;
t214 = -t163;
t215 = -t167;
t216 = -t168;
t217 = -t171;
t220 = t2.*t11.*t16.*t20.*1.8e+1;
t221 = g.*l_Leg.*m_Body.*m_Leg.*t6.*t9.*t21.*3.0;
t222 = -t177;
t223 = -t178;
t224 = -t179;
t225 = -t180;
t226 = f_Wrist_Bar.*l_Body.*t11.*t16.*t21.*9.0;
t227 = f_Wrist_Bar.*l_Wrist_Bar.*t11.*t16.*t21.*9.0;
t228 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t6.*t21.*9.0;
t229 = -t187;
t230 = -t188;
t231 = -t191;
t232 = -t192;
t233 = l_Leg.*m_Body.*m_Leg.*t8.*t10.*t19.*3.0;
t242 = -t200;
t246 = -t203;
t248 = -t205;
t249 = -t209;
t250 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t4.*t19.*1.8e+1;
t251 = g.*l_Leg.*m_Body.*t3.*t6.*t47;
t255 = t3.*t7.*t11.*t47;
t256 = t3.*t8.*t11.*t47;
t257 = t3.*t7.*t11.*t49;
t258 = t3.*t8.*t11.*t49;
t261 = t3.*t7.*t11.*t33;
t262 = t3.*t8.*t11.*t33;
t268 = -t234;
t269 = -t235;
t270 = -t236;
t271 = -t239;
t272 = -t240;
t274 = -t241;
t279 = -t244;
t280 = g.*l_Leg.*m_Body.*m_Leg.*t4.*t9.*t19.*1.2e+1;
t283 = -t252;
t286 = -t273;
t287 = -t275;
t288 = -t276;
t289 = l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t8.*t21.*(9.0./2.0);
t290 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Body.*t11.*t16.*t20.*1.8e+1;
t291 = l_Body.*l_Leg.*m_Body.*m_Leg.*t8.*t13.*t19.*9.0;
t292 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t8.*t9.*t19.*1.2e+1;
t296 = m_Body.*t5.*t205;
t297 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*t11.*t16.*t21.*1.8e+1;
t298 = g.*l_Body.*m_Body.*t6.*t11.*t16.*t20.*9.0;
t299 = l_Leg.*m_Body.*m_Leg.*t8.*t9.*t21.*(9.0./2.0);
t301 = -t293;
t302 = -t294;
t303 = m_Body.*t7.*t11.*t21.*t47;
t304 = dth_Hip.*dth_Wrist.*m_Body.*t9.*t11.*t16.*t21.*1.2e+1;
t305 = l_Body.*l_Wrist_Bar.*m_Body.*t7.*t11.*t16.*t21.*9.0;
t307 = m_Body.*t7.*t9.*t11.*t16.*t21.*-6.0;
t309 = l_Body.*l_Wrist_Bar.*m_Body.*t8.*t11.*t16.*t21.*(2.7e+1./2.0);
t310 = m_Body.*t8.*t9.*t11.*t16.*t21.*(2.1e+1./2.0);
t53 = cos(t44);
t58 = sin(t44);
t113 = -t86;
t114 = -t87;
t115 = -t91;
t164 = -t122;
t176 = -t135;
t243 = -t201;
t253 = -t221;
t254 = -t226;
t263 = -t233;
t281 = -t250;
t300 = -t291;
t306 = -t299;
t308 = -t304;
t311 = -t310;
t312 = t32+t34+t36+t38+t45+t46+t48+t50+t66+t90+t114;
t313 = t35+t37+t39+t47+t49+t51+t52+t65+t67+t89+t113;
t316 = t24+t26+t60+t61+t62+t69+t71+t78+t79+t81+t83+t84+t88+t92+t94+t95+t97+t101+t102+t115+t116+t141+t144+t147+t181+t183+t185+t189+t190+t195+t206+t222+t224+t229+t230+t289+t306;
t317 = t40+t41+t72+t73+t74+t75+t96+t111+t117+t118+t119+t120+t121+t123+t124+t129+t134+t148+t149+t153+t158+t159+t164+t165+t166+t176+t196+t197+t202+t204+t210+t211+t212+t213+t214+t228+t237+t238+t242+t243+t246+t247+t248+t249+t253+t255+t256+t257+t258+t259+t260+t263+t264+t265+t266+t267+t268+t271+t272+t280+t281+t284+t285+t292+t300;
t318 = t80+t82+t100+t103+t106+t107+t108+t110+t128+t132+t136+t137+t138+t139+t140+t145+t152+t156+t157+t169+t170+t172+t173+t174+t175+t182+t184+t186+t193+t194+t198+t199+t207+t208+t215+t216+t217+t218+t219+t220+t223+t225+t227+t231+t232+t245+t254+t269+t270+t274+t277+t278+t279+t282+t283+t286+t287+t288+t290+t295+t296+t297+t298+t301+t302+t305+t307+t308+t309+t311;
t314 = 1.0./t312;
t315 = 1.0./t313;
f_X = dl_Wrist_Bar.*dth_Wrist.*m_Body.*t43.*2.0+dl_Wrist_Bar.*dth_Wrist.*m_Leg.*t43.*2.0-(l_Body.*m_Body.*t8.*t42)./2.0-l_Body.*m_Leg.*t8.*t42-(l_Leg.*m_Leg.*t7.*t53)./2.0-(l_Leg.*m_Leg.*t8.*t53)./2.0+l_Wrist_Bar.*m_Body.*t8.*t42+l_Wrist_Bar.*m_Leg.*t8.*t42+(m_Leg.*t58.*t314.*t316)./4.0-(t22.*t58.*t314.*t318)./4.0-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t53+(m_Body.*t22.*t42.*t315.*t317)./2.0+(m_Leg.*t22.*t42.*t315.*t317)./2.0+(l_Body.*m_Body.*t22.*t43.*t314.*t316)./4.0+(l_Body.*m_Leg.*t22.*t43.*t314.*t316)./2.0-(l_Wrist_Bar.*m_Body.*t22.*t43.*t314.*t316)./2.0-(l_Wrist_Bar.*m_Leg.*t22.*t43.*t314.*t316)./2.0;
if nargout > 1
    f_Y = g.*m_Body+g.*m_Leg-dl_Wrist_Bar.*dth_Wrist.*m_Body.*t42.*2.0-dl_Wrist_Bar.*dth_Wrist.*m_Leg.*t42.*2.0-(l_Body.*m_Body.*t8.*t43)./2.0-l_Body.*m_Leg.*t8.*t43-(l_Leg.*m_Leg.*t7.*t58)./2.0-(l_Leg.*m_Leg.*t8.*t58)./2.0+l_Wrist_Bar.*m_Body.*t8.*t43+l_Wrist_Bar.*m_Leg.*t8.*t43-(m_Leg.*t53.*t314.*t316)./4.0+(t22.*t53.*t314.*t318)./4.0-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t58+(m_Body.*t22.*t43.*t315.*t317)./2.0+(m_Leg.*t22.*t43.*t315.*t317)./2.0-(l_Body.*m_Body.*t22.*t42.*t314.*t316)./4.0-(l_Body.*m_Leg.*t22.*t42.*t314.*t316)./2.0+(l_Wrist_Bar.*m_Body.*t22.*t42.*t314.*t316)./2.0+(l_Wrist_Bar.*m_Leg.*t22.*t42.*t314.*t316)./2.0;
end
end
