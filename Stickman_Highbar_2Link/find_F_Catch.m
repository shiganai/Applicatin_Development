function [f_X,f_Y] = find_F_Catch(dl_Wrist_Bar,dth_Hip,dth_Wrist,g,l_Body,l_Leg,l_Wrist_Bar,m_Body,m_Leg,myu,tau_Hip,th_Hip,th_Wrist)
%FIND_F_CATCH
%    [F_X,F_Y] = FIND_F_CATCH(DL_WRIST_BAR,DTH_HIP,DTH_WRIST,G,L_BODY,L_LEG,L_WRIST_BAR,M_BODY,M_LEG,MYU,TAU_HIP,TH_HIP,TH_WRIST)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    23-May-2021 01:16:35

t2 = cos(th_Hip);
t3 = cos(th_Wrist);
t4 = sin(th_Hip);
t5 = sin(th_Wrist);
t6 = dth_Hip.^2;
t7 = dth_Wrist.^2;
t8 = l_Body.^2;
t9 = l_Body.^3;
t10 = l_Leg.^2;
t11 = l_Leg.^3;
t12 = l_Wrist_Bar.^2;
t13 = l_Wrist_Bar.^3;
t14 = m_Body.^2;
t15 = m_Leg.^2;
t16 = m_Leg.^3;
t17 = th_Hip.*2.0;
t21 = 1.0./l_Leg;
t22 = l_Leg.*m_Leg.*tau_Hip.*6.0;
t23 = pi./2.0;
t24 = l_Leg.*m_Body.*tau_Hip.*2.4e+1;
t30 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*9.0e+1;
t36 = l_Body.*l_Leg.*m_Leg.*myu.*tau_Hip.*3.0e+1;
t37 = l_Leg.*l_Wrist_Bar.*m_Body.*myu.*tau_Hip.*4.8e+1;
t38 = l_Leg.*l_Wrist_Bar.*m_Leg.*myu.*tau_Hip.*3.0e+1;
t51 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*tau_Hip.*2.16e+2;
t52 = l_Body.*l_Leg.*m_Body.*myu.*tau_Hip.*-2.4e+1;
t54 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*m_Body.*m_Leg.*5.4e+1;
t55 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*6.0e+1;
t18 = cos(t17);
t19 = t2.^2;
t20 = sin(t17);
t25 = t23+th_Wrist;
t26 = l_Body.*l_Wrist_Bar.*t14.*4.8e+1;
t27 = l_Body.*l_Wrist_Bar.*t15.*2.4e+1;
t28 = m_Body.*m_Leg.*t8.*4.0e+1;
t29 = m_Body.*m_Leg.*t12.*6.0e+1;
t31 = l_Body.*m_Body.*t2.*tau_Hip.*3.6e+1;
t32 = l_Body.*m_Leg.*t2.*tau_Hip.*3.6e+1;
t33 = l_Wrist_Bar.*m_Body.*t2.*tau_Hip.*3.6e+1;
t34 = l_Wrist_Bar.*m_Leg.*t2.*tau_Hip.*3.6e+1;
t35 = l_Body.*myu.*t24;
t44 = -t30;
t47 = t10.*t15.*tau_Hip.*6.0;
t48 = m_Body.*m_Leg.*t10.*tau_Hip.*2.4e+1;
t53 = -t36;
t56 = t8.*t14.*1.6e+1;
t57 = t8.*t15.*1.2e+1;
t58 = t12.*t14.*4.8e+1;
t59 = t12.*t15.*1.2e+1;
t60 = l_Body.*l_Wrist_Bar.*m_Body.*t4.*tau_Hip.*7.2e+1;
t61 = l_Body.*l_Wrist_Bar.*m_Leg.*t4.*tau_Hip.*1.44e+2;
t62 = g.*l_Body.*l_Leg.*t5.*t15.*6.0;
t63 = g.*l_Leg.*l_Wrist_Bar.*t5.*t15.*6.0;
t65 = g.*l_Body.*l_Leg.*m_Body.*m_Leg.*t5.*2.7e+1;
t66 = g.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t5.*3.0e+1;
t67 = t8.*t14.*tau_Hip.*2.4e+1;
t69 = l_Body.*l_Wrist_Bar.*t14.*tau_Hip.*7.2e+1;
t70 = l_Body.*l_Wrist_Bar.*t15.*tau_Hip.*1.44e+2;
t71 = m_Body.*m_Leg.*t8.*tau_Hip.*9.6e+1;
t73 = m_Body.*m_Leg.*t12.*tau_Hip.*1.44e+2;
t74 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*t14.*2.4e+1;
t75 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*t15.*1.2e+1;
t76 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*t14.*4.8e+1;
t77 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*l_Wrist_Bar.*t15.*1.2e+1;
t78 = -t54;
t80 = m_Body.*t4.*t8.*tau_Hip.*2.4e+1;
t84 = m_Body.*myu.*t2.*t8.*tau_Hip.*1.2e+1;
t85 = g.*l_Body.*l_Leg.*t5.*t14.*1.2e+1;
t87 = g.*l_Leg.*l_Wrist_Bar.*t5.*t14.*2.4e+1;
t88 = l_Body.*l_Leg.*m_Body.*m_Leg.*t2.*tau_Hip.*7.2e+1;
t89 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*tau_Hip.*7.2e+1;
t95 = t8.*t15.*tau_Hip.*7.2e+1;
t96 = t12.*t14.*tau_Hip.*7.2e+1;
t97 = t12.*t15.*tau_Hip.*7.2e+1;
t102 = l_Body.*l_Leg.*m_Body.*m_Leg.*myu.*t4.*tau_Hip.*1.8e+1;
t103 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t4.*tau_Hip.*3.6e+1;
t104 = m_Leg.*t4.*t8.*tau_Hip.*7.2e+1;
t105 = m_Body.*t4.*t12.*tau_Hip.*7.2e+1;
t106 = m_Leg.*t4.*t12.*tau_Hip.*7.2e+1;
t107 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*t10.*t16.*1.2e+1;
t108 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*t10.*t16.*1.2e+1;
t109 = l_Leg.*m_Body.*m_Leg.*t7.*t9.*2.5e+1;
t110 = l_Leg.*m_Body.*m_Leg.*t7.*t13.*6.0e+1;
t112 = l_Body.*l_Leg.*t2.*t15.*tau_Hip.*7.2e+1;
t113 = l_Leg.*l_Wrist_Bar.*t2.*t15.*tau_Hip.*7.2e+1;
t122 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*m_Leg.*myu.*t8.*2.0e+1;
t127 = g.*l_Body.*t5.*t10.*t16.*6.0;
t128 = g.*l_Wrist_Bar.*t5.*t10.*t16.*6.0;
t130 = g.*l_Leg.*t3.*t30;
t134 = l_Body.*l_Leg.*myu.*t4.*t15.*tau_Hip.*3.6e+1;
t135 = l_Leg.*l_Wrist_Bar.*myu.*t4.*t15.*tau_Hip.*3.6e+1;
t138 = dth_Hip.*dth_Wrist.*l_Body.*t4.*t10.*t15.*6.0;
t139 = dth_Hip.*dth_Wrist.*l_Body.*t4.*t11.*t16.*6.0;
t140 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*t4.*t10.*t15.*6.0;
t141 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*t4.*t11.*t16.*6.0;
t142 = g.*l_Leg.*myu.*t5.*t8.*t14.*4.0;
t143 = dth_Hip.*dth_Wrist.*l_Body.*m_Body.*m_Leg.*t4.*t10.*2.4e+1;
t144 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*m_Body.*m_Leg.*t4.*t10.*2.4e+1;
t145 = l_Leg.*t7.*t9.*t14.*8.0;
t146 = l_Leg.*t7.*t9.*t15.*1.2e+1;
t147 = l_Leg.*t7.*t13.*t14.*4.8e+1;
t148 = l_Leg.*t7.*t13.*t15.*1.2e+1;
t150 = g.*l_Leg.*m_Body.*m_Leg.*myu.*t5.*t8.*1.0e+1;
t154 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Leg.*t10.*t14.*2.4e+1;
t155 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Body.*t10.*t15.*5.4e+1;
t156 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*m_Leg.*t10.*t14.*4.8e+1;
t157 = dl_Wrist_Bar.*dth_Wrist.*l_Wrist_Bar.*m_Body.*t10.*t15.*6.0e+1;
t158 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*myu.*t8.*t14.*8.0;
t164 = g.*l_Leg.*m_Body.*m_Leg.*t3.*t8.*-4.0e+1;
t165 = g.*l_Leg.*m_Body.*m_Leg.*t3.*t12.*-6.0e+1;
t170 = l_Body.*t4.*t6.*t10.*t15.*3.0;
t171 = l_Body.*t4.*t6.*t11.*t16.*3.0;
t172 = l_Body.*t4.*t7.*t10.*t15.*3.0;
t173 = l_Body.*t4.*t7.*t11.*t16.*3.0;
t174 = l_Wrist_Bar.*t4.*t6.*t10.*t15.*3.0;
t175 = l_Wrist_Bar.*t4.*t6.*t11.*t16.*3.0;
t176 = l_Wrist_Bar.*t4.*t7.*t10.*t15.*3.0;
t177 = l_Wrist_Bar.*t4.*t7.*t11.*t16.*3.0;
t180 = l_Body.*m_Body.*m_Leg.*t4.*t6.*t10.*1.2e+1;
t181 = l_Body.*m_Body.*m_Leg.*t4.*t7.*t10.*1.2e+1;
t182 = l_Wrist_Bar.*m_Body.*m_Leg.*t4.*t6.*t10.*1.2e+1;
t183 = l_Wrist_Bar.*m_Body.*m_Leg.*t4.*t7.*t10.*1.2e+1;
t184 = g.*l_Body.*m_Leg.*t5.*t10.*t14.*1.2e+1;
t185 = g.*l_Body.*m_Body.*t5.*t10.*t15.*2.7e+1;
t186 = g.*l_Wrist_Bar.*m_Leg.*t5.*t10.*t14.*2.4e+1;
t187 = g.*l_Wrist_Bar.*m_Body.*t5.*t10.*t15.*3.0e+1;
t193 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*t2.*t15.*3.6e+1;
t194 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t2.*t14.*3.6e+1;
t195 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*t10.*4.8e+1;
t199 = l_Leg.*l_Wrist_Bar.*t7.*t8.*t14.*4.0e+1;
t200 = l_Body.*l_Leg.*t7.*t12.*t15.*3.6e+1;
t201 = l_Leg.*l_Wrist_Bar.*t7.*t8.*t15.*3.6e+1;
t206 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t7.*t8.*1.0e+2;
t207 = l_Body.*l_Leg.*m_Body.*m_Leg.*t7.*t12.*1.35e+2;
t208 = g.*l_Leg.*t3.*t8.*t14.*-1.6e+1;
t209 = g.*l_Leg.*t3.*t8.*t15.*-1.2e+1;
t210 = g.*l_Leg.*t3.*t12.*t14.*-4.8e+1;
t211 = g.*l_Leg.*t3.*t12.*t15.*-1.2e+1;
t213 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*t2.*t5.*t15.*1.8e+1;
t214 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Leg.*t2.*t5.*t14.*1.8e+1;
t226 = dth_Hip.*dth_Wrist.*m_Body.*myu.*t8.*t10.*t15.*6.0;
t230 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Leg.*t2.*t8.*t14.*1.2e+1;
t231 = dth_Hip.*dth_Wrist.*m_Body.*m_Leg.*t2.*t8.*t10.*1.6e+1;
t232 = dth_Hip.*dth_Wrist.*m_Body.*m_Leg.*t2.*t10.*t12.*4.8e+1;
t233 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*myu.*t10.*t15.*1.8e+1;
t234 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*t6.*t10.*2.4e+1;
t235 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t2.*t7.*t10.*2.4e+1;
t236 = l_Leg.*m_Leg.*t4.*t7.*t9.*t14.*6.0;
t241 = dth_Hip.*dth_Wrist.*l_Body.*m_Body.*t4.*t11.*t15.*2.4e+1;
t242 = dth_Hip.*dth_Wrist.*l_Wrist_Bar.*m_Body.*t4.*t11.*t15.*2.4e+1;
t243 = g.*l_Body.*l_Leg.*m_Body.*m_Leg.*myu.*t2.*t4.*t5.*9.0;
t246 = l_Body.*l_Leg.*t7.*t12.*t14.*7.2e+1;
t250 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Leg.*myu.*t4.*t8.*t14.*6.0;
t252 = g.*l_Leg.*m_Body.*t2.*t5.*t8.*t15.*6.0;
t253 = g.*l_Leg.*m_Leg.*t2.*t5.*t8.*t14.*6.0;
t258 = t2.*t6.*t8.*t10.*t15.*6.0;
t259 = t2.*t7.*t8.*t10.*t15.*6.0;
t260 = t2.*t6.*t10.*t12.*t15.*6.0;
t261 = t2.*t7.*t10.*t12.*t15.*6.0;
t262 = m_Body.*myu.*t6.*t8.*t10.*t15.*3.0;
t263 = m_Body.*myu.*t7.*t8.*t10.*t15.*3.0;
t269 = l_Body.*l_Wrist_Bar.*t2.*t6.*t10.*t15.*1.2e+1;
t270 = l_Body.*l_Wrist_Bar.*t2.*t7.*t10.*t15.*1.2e+1;
t272 = m_Body.*m_Leg.*t2.*t6.*t8.*t10.*8.0;
t273 = m_Body.*m_Leg.*t2.*t7.*t8.*t10.*8.0;
t274 = m_Body.*m_Leg.*t2.*t6.*t10.*t12.*2.4e+1;
t275 = m_Body.*m_Leg.*t2.*t7.*t10.*t12.*2.4e+1;
t276 = l_Body.*l_Wrist_Bar.*m_Body.*myu.*t6.*t10.*t15.*9.0;
t277 = l_Body.*l_Wrist_Bar.*m_Body.*myu.*t7.*t10.*t15.*9.0;
t278 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*t2.*t10.*t15.*-2.4e+1;
t280 = g.*l_Leg.*m_Leg.*myu.*t4.*t5.*t8.*t14.*3.0;
t283 = l_Body.*m_Body.*t4.*t6.*t11.*t15.*1.2e+1;
t284 = l_Body.*m_Body.*t4.*t7.*t11.*t15.*1.2e+1;
t285 = l_Leg.*m_Body.*t4.*t7.*t9.*t15.*1.8e+1;
t286 = l_Wrist_Bar.*m_Body.*t4.*t6.*t11.*t15.*1.2e+1;
t287 = l_Wrist_Bar.*m_Body.*t4.*t7.*t11.*t15.*1.2e+1;
t293 = m_Body.*m_Leg.*myu.*t4.*t6.*t8.*t10.*4.0;
t294 = m_Body.*m_Leg.*myu.*t4.*t7.*t8.*t10.*4.0;
t295 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*myu.*t4.*t8.*t15.*2.4e+1;
t296 = dth_Hip.*dth_Wrist.*m_Body.*m_Leg.*myu.*t4.*t8.*t10.*8.0;
t300 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t4.*t10.*-2.4e+1;
t313 = l_Body.*l_Leg.*m_Body.*t4.*t7.*t12.*t15.*1.8e+1;
t314 = l_Body.*l_Leg.*m_Leg.*t4.*t7.*t12.*t14.*1.8e+1;
t315 = l_Leg.*l_Wrist_Bar.*m_Leg.*t4.*t7.*t8.*t14.*1.8e+1;
t317 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t4.*t6.*t10.*-1.2e+1;
t318 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t4.*t7.*t10.*-1.2e+1;
t328 = l_Leg.*l_Wrist_Bar.*m_Body.*t4.*t7.*t8.*t15.*-3.6e+1;
t332 = g.*l_Body.*m_Body.*myu.*t2.*t4.*t5.*t10.*t15.*9.0;
t39 = cos(t25);
t40 = sin(t25);
t41 = t25+th_Hip;
t42 = -t26;
t43 = -t27;
t49 = -t33;
t50 = -t34;
t64 = l_Wrist_Bar.*myu.*t31;
t68 = -t47;
t72 = -t48;
t79 = l_Leg.*m_Leg.*t19.*tau_Hip.*1.8e+1;
t81 = -t60;
t82 = -t61;
t83 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*t18.*1.8e+1;
t86 = -t62;
t90 = l_Body.*l_Leg.*m_Leg.*t20.*tau_Hip.*1.8e+1;
t91 = l_Leg.*l_Wrist_Bar.*m_Leg.*t20.*tau_Hip.*1.8e+1;
t92 = -t65;
t93 = l_Leg.*m_Leg.*myu.*t20.*tau_Hip.*9.0;
t94 = -t67;
t98 = -t71;
t99 = -t73;
t100 = -t74;
t101 = -t75;
t111 = m_Body.*m_Leg.*t8.*t18.*1.2e+1;
t114 = -t84;
t115 = -t85;
t116 = -t88;
t119 = -t95;
t120 = -t96;
t121 = -t97;
t123 = g.*l_Leg.*t3.*t26;
t124 = g.*l_Leg.*t3.*t27;
t125 = g.*l_Leg.*t3.*t28;
t126 = g.*l_Leg.*t3.*t29;
t129 = m_Body.*m_Leg.*myu.*t8.*t20.*3.0;
t131 = l_Body.*l_Leg.*m_Leg.*myu.*t18.*tau_Hip.*1.8e+1;
t132 = l_Leg.*l_Wrist_Bar.*m_Leg.*myu.*t18.*tau_Hip.*1.8e+1;
t133 = l_Body.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t20.*9.0;
t136 = -t103;
t137 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*m_Body.*m_Leg.*t19.*1.8e+1;
t149 = -t108;
t151 = -t110;
t153 = -t112;
t159 = g.*l_Leg.*t3.*t56;
t160 = g.*l_Leg.*t3.*t57;
t161 = g.*l_Leg.*t3.*t58;
t162 = g.*l_Leg.*t3.*t59;
t163 = -t122;
t166 = -t128;
t169 = -t135;
t178 = -t138;
t179 = -t141;
t188 = -t142;
t189 = -t143;
t190 = -t147;
t191 = -t148;
t192 = -t150;
t196 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*m_Leg.*t8.*t20.*6.0;
t197 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t20.*1.8e+1;
t198 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*l_Leg.*m_Body.*m_Leg.*myu.*t20.*9.0;
t202 = g.*l_Body.*l_Leg.*m_Body.*m_Leg.*t5.*t19.*9.0;
t203 = -t156;
t204 = -t157;
t205 = -t158;
t212 = t10.*t15.*t19.*tau_Hip.*1.8e+1;
t215 = g.*l_Leg.*m_Body.*m_Leg.*t5.*t8.*t20.*3.0;
t216 = -t170;
t217 = -t172;
t218 = -t175;
t219 = -t177;
t220 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t5.*t20.*9.0;
t221 = -t180;
t222 = -t181;
t223 = -t186;
t224 = -t187;
t225 = myu.*t10.*t15.*t20.*tau_Hip.*9.0;
t227 = l_Leg.*m_Body.*m_Leg.*t7.*t9.*t18.*3.0;
t228 = dth_Hip.*dth_Wrist.*t2.*t10.*t27;
t229 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*m_Body.*t2.*t57;
t237 = -t193;
t238 = -t194;
t239 = -t195;
t245 = -t199;
t247 = -t201;
t248 = -t206;
t254 = l_Wrist_Bar.*myu.*t143;
t255 = -t213;
t256 = -t214;
t264 = dth_Hip.*dth_Wrist.*t2.*t10.*t57;
t265 = dth_Hip.*dth_Wrist.*t2.*t10.*t59;
t267 = g.*l_Leg.*m_Body.*m_Leg.*myu.*t5.*t8.*t18.*6.0;
t268 = -t226;
t281 = -t234;
t282 = -t235;
t288 = -t242;
t289 = -t243;
t292 = l_Leg.*m_Body.*m_Leg.*myu.*t7.*t9.*t20.*3.0;
t297 = g.*l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t3.*t18.*-1.8e+1;
t298 = l_Wrist_Bar.*myu.*t180;
t299 = l_Wrist_Bar.*myu.*t181;
t301 = -t262;
t302 = -t263;
t303 = g.*l_Leg.*m_Body.*m_Leg.*myu.*t3.*t8.*t20.*-3.0;
t304 = -t269;
t305 = -t270;
t306 = g.*l_Leg.*m_Body.*myu.*t4.*t5.*t57;
t307 = -t286;
t308 = -t287;
t309 = l_Body.*l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*t7.*t20.*(9.0./2.0);
t310 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Body.*t10.*t15.*t19.*1.8e+1;
t311 = l_Body.*l_Leg.*m_Body.*m_Leg.*t7.*t12.*t18.*9.0;
t316 = m_Body.*t4.*t201;
t319 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*t10.*t15.*t20.*1.8e+1;
t320 = dl_Wrist_Bar.*dth_Wrist.*l_Body.*m_Body.*myu.*t10.*t15.*t20.*9.0;
t321 = l_Body.*l_Leg.*m_Body.*m_Leg.*myu.*t7.*t12.*t20.*9.0;
t322 = l_Leg.*l_Wrist_Bar.*m_Body.*m_Leg.*myu.*t7.*t8.*t20.*1.2e+1;
t323 = g.*l_Body.*m_Body.*t5.*t10.*t15.*t19.*9.0;
t324 = l_Leg.*m_Body.*m_Leg.*t7.*t8.*t20.*(9.0./2.0);
t327 = -t315;
t329 = m_Body.*t6.*t8.*t10.*t15.*t20.*6.0;
t330 = dth_Hip.*dth_Wrist.*m_Body.*t10.*t20.*t57;
t331 = l_Body.*l_Wrist_Bar.*m_Body.*t6.*t10.*t15.*t20.*9.0;
t337 = t19.*t226;
t338 = t19.*t233;
t340 = t19.*t262;
t341 = t19.*t263;
t342 = t19.*t276;
t343 = t19.*t277;
t344 = dth_Hip.*dth_Wrist.*l_Body.*l_Wrist_Bar.*m_Body.*myu.*t10.*t15.*t19.*-1.8e+1;
t345 = l_Body.*l_Wrist_Bar.*m_Body.*t7.*t10.*t15.*t20.*(2.7e+1./2.0);
t346 = l_Body.*l_Wrist_Bar.*m_Body.*myu.*t6.*t10.*t15.*t19.*-9.0;
t347 = l_Body.*l_Wrist_Bar.*m_Body.*myu.*t7.*t10.*t15.*t19.*-9.0;
t348 = m_Body.*t7.*t8.*t10.*t15.*t20.*(2.1e+1./2.0);
t45 = cos(t41);
t46 = sin(t41);
t117 = -t91;
t118 = -t93;
t152 = -t111;
t167 = -t132;
t168 = -t133;
t240 = -t196;
t244 = -t198;
t249 = -t212;
t251 = g.*l_Leg.*t3.*t83;
t257 = -t215;
t266 = g.*l_Leg.*t3.*t129;
t271 = -t227;
t279 = g.*l_Leg.*t3.*t133;
t290 = dl_Wrist_Bar.*dth_Wrist.*l_Leg.*myu.*t111;
t291 = g.*l_Leg.*t3.*t111;
t312 = l_Leg.*l_Wrist_Bar.*t7.*t111;
t325 = -t310;
t326 = -t311;
t333 = -t319;
t334 = -t322;
t335 = -t323;
t336 = -t324;
t339 = -t331;
t349 = -t345;
t350 = t28+t29+t42+t43+t44+t56+t57+t58+t59+t83+t129+t152+t168;
t352 = t22+t24+t31+t32+t49+t50+t55+t63+t66+t76+t77+t78+t79+t86+t87+t92+t100+t101+t115+t118+t137+t140+t144+t174+t176+t178+t182+t183+t189+t202+t216+t217+t221+t222+t244+t289+t309+t336;
t353 = t37+t38+t52+t53+t64+t80+t81+t82+t90+t104+t105+t106+t109+t114+t117+t123+t124+t130+t131+t145+t146+t151+t163+t164+t165+t167+t188+t190+t191+t192+t197+t200+t205+t207+t208+t209+t210+t211+t220+t231+t232+t239+t240+t245+t246+t247+t248+t257+t258+t259+t260+t261+t264+t265+t267+t271+t272+t273+t274+t275+t278+t279+t281+t282+t290+t291+t292+t293+t294+t296+t297+t300+t303+t304+t305+t312+t317+t318+t321+t326+t334;
t354 = t51+t68+t69+t70+t72+t89+t94+t98+t99+t102+t107+t113+t116+t119+t120+t121+t127+t134+t136+t139+t149+t153+t154+t155+t166+t169+t171+t173+t179+t184+t185+t203+t204+t218+t219+t223+t224+t225+t229+t230+t233+t236+t237+t238+t241+t249+t250+t252+t253+t255+t256+t268+t276+t277+t280+t283+t284+t285+t288+t295+t301+t302+t306+t307+t308+t313+t314+t320+t325+t327+t328+t329+t330+t332+t333+t335+t337+t339+t340+t341+t344+t346+t347+t348+t349;
t351 = 1.0./t350;
f_X = dl_Wrist_Bar.*dth_Wrist.*m_Body.*t40.*2.0+dl_Wrist_Bar.*dth_Wrist.*m_Leg.*t40.*2.0-(l_Body.*m_Body.*t7.*t39)./2.0-l_Body.*m_Leg.*t7.*t39-(l_Leg.*m_Leg.*t6.*t45)./2.0-(l_Leg.*m_Leg.*t7.*t45)./2.0+l_Wrist_Bar.*m_Body.*t7.*t39+l_Wrist_Bar.*m_Leg.*t7.*t39+m_Leg.*t46.*t351.*t352+t21.*t46.*t351.*t354-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t45+m_Body.*t21.*t39.*t351.*t353+m_Leg.*t21.*t39.*t351.*t353+l_Body.*m_Body.*t21.*t40.*t351.*t352+l_Body.*m_Leg.*t21.*t40.*t351.*t352.*2.0-l_Wrist_Bar.*m_Body.*t21.*t40.*t351.*t352.*2.0-l_Wrist_Bar.*m_Leg.*t21.*t40.*t351.*t352.*2.0;
if nargout > 1
    f_Y = g.*m_Body+g.*m_Leg-dl_Wrist_Bar.*dth_Wrist.*m_Body.*t39.*2.0-dl_Wrist_Bar.*dth_Wrist.*m_Leg.*t39.*2.0-(l_Body.*m_Body.*t7.*t40)./2.0-l_Body.*m_Leg.*t7.*t40-(l_Leg.*m_Leg.*t6.*t46)./2.0-(l_Leg.*m_Leg.*t7.*t46)./2.0+l_Wrist_Bar.*m_Body.*t7.*t40+l_Wrist_Bar.*m_Leg.*t7.*t40-m_Leg.*t45.*t351.*t352-t21.*t45.*t351.*t354-dth_Hip.*dth_Wrist.*l_Leg.*m_Leg.*t46+m_Body.*t21.*t40.*t351.*t353+m_Leg.*t21.*t40.*t351.*t353-l_Body.*m_Body.*t21.*t39.*t351.*t352-l_Body.*m_Leg.*t21.*t39.*t351.*t352.*2.0+l_Wrist_Bar.*m_Body.*t21.*t39.*t351.*t352.*2.0+l_Wrist_Bar.*m_Leg.*t21.*t39.*t351.*t352.*2.0;
end
end