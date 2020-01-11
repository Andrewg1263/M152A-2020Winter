/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//Mac/Home/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab0/Part_2/Counter/Counter.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};



static void Always_27_0(char *t0)
{
    char t13[8];
    char t14[8];
    char t33[8];
    char t43[8];
    char t70[8];
    char t85[8];
    char t114[8];
    char t129[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    unsigned int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    int t136;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(33, ng0);

LAB10:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t14, 0, 8);
    t5 = (t14 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 0);
    t15 = (t10 & 1);
    *((unsigned int *)t5) = t15;
    memset(t13, 0, 8);
    t12 = (t14 + 4);
    t16 = *((unsigned int *)t12);
    t17 = (~(t16));
    t18 = *((unsigned int *)t14);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t12) == 0)
        goto LAB11;

LAB13:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;

LAB14:    t22 = (t13 + 4);
    t23 = (t14 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    *((unsigned int *)t13) = t25;
    *((unsigned int *)t22) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB16;

LAB15:    t30 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t30 & 1U);
    t31 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t31 & 1U);
    t32 = (t0 + 1608);
    t34 = (t0 + 1608);
    t35 = (t34 + 72U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t33, t36, 2, t37, 32, 1);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (!(t39));
    if (t40 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 0);
    t15 = (t10 & 1);
    *((unsigned int *)t5) = t15;
    t12 = (t0 + 1608);
    t21 = (t12 + 56U);
    t22 = *((char **)t21);
    memset(t14, 0, 8);
    t23 = (t14 + 4);
    t32 = (t22 + 4);
    t16 = *((unsigned int *)t22);
    t17 = (t16 >> 1);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t32);
    t20 = (t19 >> 1);
    t24 = (t20 & 1);
    *((unsigned int *)t23) = t24;
    t25 = *((unsigned int *)t13);
    t26 = *((unsigned int *)t14);
    t27 = (t25 ^ t26);
    *((unsigned int *)t33) = t27;
    t34 = (t13 + 4);
    t35 = (t14 + 4);
    t36 = (t33 + 4);
    t28 = *((unsigned int *)t34);
    t29 = *((unsigned int *)t35);
    t30 = (t28 | t29);
    *((unsigned int *)t36) = t30;
    t31 = *((unsigned int *)t36);
    t39 = (t31 != 0);
    if (t39 == 1)
        goto LAB19;

LAB20:
LAB21:    t37 = (t0 + 1608);
    t38 = (t0 + 1608);
    t44 = (t38 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t43, t45, 2, t46, 32, 1);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t47);
    t40 = (!(t48));
    if (t40 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 1);
    t15 = (t10 & 1);
    *((unsigned int *)t5) = t15;
    t12 = (t0 + 1608);
    t21 = (t12 + 56U);
    t22 = *((char **)t21);
    memset(t14, 0, 8);
    t23 = (t14 + 4);
    t32 = (t22 + 4);
    t16 = *((unsigned int *)t22);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t32);
    t20 = (t19 >> 0);
    t24 = (t20 & 1);
    *((unsigned int *)t23) = t24;
    t25 = *((unsigned int *)t13);
    t26 = *((unsigned int *)t14);
    t27 = (t25 & t26);
    *((unsigned int *)t33) = t27;
    t34 = (t13 + 4);
    t35 = (t14 + 4);
    t36 = (t33 + 4);
    t28 = *((unsigned int *)t34);
    t29 = *((unsigned int *)t35);
    t30 = (t28 | t29);
    *((unsigned int *)t36) = t30;
    t31 = *((unsigned int *)t36);
    t39 = (t31 != 0);
    if (t39 == 1)
        goto LAB24;

LAB25:
LAB26:    t44 = (t0 + 1608);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memset(t43, 0, 8);
    t47 = (t43 + 4);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t46);
    t65 = (t64 >> 2);
    t66 = (t65 & 1);
    *((unsigned int *)t43) = t66;
    t67 = *((unsigned int *)t63);
    t68 = (t67 >> 2);
    t69 = (t68 & 1);
    *((unsigned int *)t47) = t69;
    t71 = *((unsigned int *)t33);
    t72 = *((unsigned int *)t43);
    t73 = (t71 ^ t72);
    *((unsigned int *)t70) = t73;
    t74 = (t33 + 4);
    t75 = (t43 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB27;

LAB28:
LAB29:    t84 = (t0 + 1608);
    t86 = (t0 + 1608);
    t87 = (t86 + 72U);
    t88 = *((char **)t87);
    t89 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t85, t88, 2, t89, 32, 1);
    t90 = (t85 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (!(t91));
    if (t92 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 1);
    t15 = (t10 & 1);
    *((unsigned int *)t5) = t15;
    t12 = (t0 + 1608);
    t21 = (t12 + 56U);
    t22 = *((char **)t21);
    memset(t14, 0, 8);
    t23 = (t14 + 4);
    t32 = (t22 + 4);
    t16 = *((unsigned int *)t22);
    t17 = (t16 >> 0);
    t18 = (t17 & 1);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t32);
    t20 = (t19 >> 0);
    t24 = (t20 & 1);
    *((unsigned int *)t23) = t24;
    t25 = *((unsigned int *)t13);
    t26 = *((unsigned int *)t14);
    t27 = (t25 & t26);
    *((unsigned int *)t33) = t27;
    t34 = (t13 + 4);
    t35 = (t14 + 4);
    t36 = (t33 + 4);
    t28 = *((unsigned int *)t34);
    t29 = *((unsigned int *)t35);
    t30 = (t28 | t29);
    *((unsigned int *)t36) = t30;
    t31 = *((unsigned int *)t36);
    t39 = (t31 != 0);
    if (t39 == 1)
        goto LAB32;

LAB33:
LAB34:    t44 = (t0 + 1608);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memset(t43, 0, 8);
    t47 = (t43 + 4);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t46);
    t65 = (t64 >> 2);
    t66 = (t65 & 1);
    *((unsigned int *)t43) = t66;
    t67 = *((unsigned int *)t63);
    t68 = (t67 >> 2);
    t69 = (t68 & 1);
    *((unsigned int *)t47) = t69;
    t71 = *((unsigned int *)t33);
    t72 = *((unsigned int *)t43);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t74 = (t33 + 4);
    t75 = (t43 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB35;

LAB36:
LAB37:    t87 = (t0 + 1608);
    t88 = (t87 + 56U);
    t89 = *((char **)t88);
    memset(t85, 0, 8);
    t90 = (t85 + 4);
    t107 = (t89 + 4);
    t108 = *((unsigned int *)t89);
    t109 = (t108 >> 3);
    t110 = (t109 & 1);
    *((unsigned int *)t85) = t110;
    t111 = *((unsigned int *)t107);
    t112 = (t111 >> 3);
    t113 = (t112 & 1);
    *((unsigned int *)t90) = t113;
    t115 = *((unsigned int *)t70);
    t116 = *((unsigned int *)t85);
    t117 = (t115 ^ t116);
    *((unsigned int *)t114) = t117;
    t118 = (t70 + 4);
    t119 = (t85 + 4);
    t120 = (t114 + 4);
    t121 = *((unsigned int *)t118);
    t122 = *((unsigned int *)t119);
    t123 = (t121 | t122);
    *((unsigned int *)t120) = t123;
    t124 = *((unsigned int *)t120);
    t125 = (t124 != 0);
    if (t125 == 1)
        goto LAB38;

LAB39:
LAB40:    t128 = (t0 + 1608);
    t130 = (t0 + 1608);
    t131 = (t130 + 72U);
    t132 = *((char **)t131);
    t133 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t129, t132, 2, t133, 32, 1);
    t134 = (t129 + 4);
    t135 = *((unsigned int *)t134);
    t136 = (!(t135));
    if (t136 == 1)
        goto LAB41;

LAB42:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(29, ng0);

LAB9:    xsi_set_current_line(30, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB14;

LAB16:    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t23);
    *((unsigned int *)t13) = (t26 | t27);
    t28 = *((unsigned int *)t22);
    t29 = *((unsigned int *)t23);
    *((unsigned int *)t22) = (t28 | t29);
    goto LAB15;

LAB17:    xsi_vlogvar_wait_assign_value(t32, t13, 0, *((unsigned int *)t33), 1, 0LL);
    goto LAB18;

LAB19:    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t36);
    *((unsigned int *)t33) = (t41 | t42);
    goto LAB21;

LAB22:    xsi_vlogvar_wait_assign_value(t37, t33, 0, *((unsigned int *)t43), 1, 0LL);
    goto LAB23;

LAB24:    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t36);
    *((unsigned int *)t33) = (t41 | t42);
    t37 = (t13 + 4);
    t38 = (t14 + 4);
    t48 = *((unsigned int *)t13);
    t49 = (~(t48));
    t50 = *((unsigned int *)t37);
    t51 = (~(t50));
    t52 = *((unsigned int *)t14);
    t53 = (~(t52));
    t54 = *((unsigned int *)t38);
    t55 = (~(t54));
    t40 = (t49 & t51);
    t56 = (t53 & t55);
    t57 = (~(t40));
    t58 = (~(t56));
    t59 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t59 & t57);
    t60 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t60 & t58);
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t57);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    goto LAB26;

LAB27:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    goto LAB29;

LAB30:    xsi_vlogvar_wait_assign_value(t84, t70, 0, *((unsigned int *)t85), 1, 0LL);
    goto LAB31;

LAB32:    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t36);
    *((unsigned int *)t33) = (t41 | t42);
    t37 = (t13 + 4);
    t38 = (t14 + 4);
    t48 = *((unsigned int *)t13);
    t49 = (~(t48));
    t50 = *((unsigned int *)t37);
    t51 = (~(t50));
    t52 = *((unsigned int *)t14);
    t53 = (~(t52));
    t54 = *((unsigned int *)t38);
    t55 = (~(t54));
    t40 = (t49 & t51);
    t56 = (t53 & t55);
    t57 = (~(t40));
    t58 = (~(t56));
    t59 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t59 & t57);
    t60 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t60 & t58);
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t57);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    goto LAB34;

LAB35:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t33 + 4);
    t86 = (t43 + 4);
    t91 = *((unsigned int *)t33);
    t93 = (~(t91));
    t94 = *((unsigned int *)t84);
    t95 = (~(t94));
    t96 = *((unsigned int *)t43);
    t97 = (~(t96));
    t98 = *((unsigned int *)t86);
    t99 = (~(t98));
    t92 = (t93 & t95);
    t100 = (t97 & t99);
    t101 = (~(t92));
    t102 = (~(t100));
    t103 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t103 & t101);
    t104 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t104 & t102);
    t105 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t105 & t101);
    t106 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t106 & t102);
    goto LAB37;

LAB38:    t126 = *((unsigned int *)t114);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t114) = (t126 | t127);
    goto LAB40;

LAB41:    xsi_vlogvar_wait_assign_value(t128, t114, 0, *((unsigned int *)t129), 1, 0LL);
    goto LAB42;

}


extern void work_m_00000000000767092830_1448365076_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000000767092830_1448365076", "isim/Counter_TB_isim_beh.exe.sim/work/m_00000000000767092830_1448365076.didat");
	xsi_register_executes(pe);
}
