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
static const char *ng0 = "//Mac/Home/Downloads/pmodjstk_demo_verilog 2/PmodJSTK_Demo/random_box.v";
static unsigned int ng1[] = {350U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};
static int ng10[] = {8, 0};
static unsigned int ng11[] = {300U, 0U};
static unsigned int ng12[] = {0U, 0U};
static unsigned int ng13[] = {1U, 0U};
static int ng14[] = {640, 0};
static int ng15[] = {10, 0};
static int ng16[] = {480, 0};



static void Always_33_0(char *t0)
{
    char t13[8];
    char t15[8];
    char t28[8];
    char t42[8];
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
    unsigned int t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 5280);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);

LAB10:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 8);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 8);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2568);
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
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2568);
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
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 2);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t18 = (t15 + 4);
    t19 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t23 = (t21 >> 8);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = *((unsigned int *)t19);
    t26 = (t25 >> 8);
    t27 = (t26 & 1);
    *((unsigned int *)t18) = t27;
    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t15);
    t31 = (t29 ^ t30);
    *((unsigned int *)t28) = t31;
    t20 = (t13 + 4);
    t32 = (t15 + 4);
    t33 = (t28 + 4);
    t34 = *((unsigned int *)t20);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB19;

LAB20:
LAB21:    t41 = (t0 + 2568);
    t43 = (t0 + 2568);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t42, t45, 2, t46, 32, 1);
    t47 = (t42 + 4);
    t48 = *((unsigned int *)t47);
    t22 = (!(t48));
    if (t22 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 4);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 4);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t18 = (t15 + 4);
    t19 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t23 = (t21 >> 8);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = *((unsigned int *)t19);
    t26 = (t25 >> 8);
    t27 = (t26 & 1);
    *((unsigned int *)t18) = t27;
    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t15);
    t31 = (t29 ^ t30);
    *((unsigned int *)t28) = t31;
    t20 = (t13 + 4);
    t32 = (t15 + 4);
    t33 = (t28 + 4);
    t34 = *((unsigned int *)t20);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB24;

LAB25:
LAB26:    t41 = (t0 + 2568);
    t43 = (t0 + 2568);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t42, t45, 2, t46, 32, 1);
    t47 = (t42 + 4);
    t48 = *((unsigned int *)t47);
    t22 = (!(t48));
    if (t22 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 5);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 5);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memset(t15, 0, 8);
    t18 = (t15 + 4);
    t19 = (t17 + 4);
    t21 = *((unsigned int *)t17);
    t23 = (t21 >> 8);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = *((unsigned int *)t19);
    t26 = (t25 >> 8);
    t27 = (t26 & 1);
    *((unsigned int *)t18) = t27;
    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t15);
    t31 = (t29 ^ t30);
    *((unsigned int *)t28) = t31;
    t20 = (t13 + 4);
    t32 = (t15 + 4);
    t33 = (t28 + 4);
    t34 = *((unsigned int *)t20);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB29;

LAB30:
LAB31:    t41 = (t0 + 2568);
    t43 = (t0 + 2568);
    t44 = (t43 + 72U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t42, t45, 2, t46, 32, 1);
    t47 = (t42 + 4);
    t48 = *((unsigned int *)t47);
    t22 = (!(t48));
    if (t22 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 6);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 6);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 7);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2568);
    t16 = (t0 + 2568);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t15, t18, 2, t19, 32, 1);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (!(t21));
    if (t22 == 1)
        goto LAB36;

LAB37:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 9, 0LL);
    goto LAB8;

LAB11:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB12;

LAB13:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB14;

LAB15:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB16;

LAB17:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB18;

LAB19:    t39 = *((unsigned int *)t28);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t39 | t40);
    goto LAB21;

LAB22:    xsi_vlogvar_wait_assign_value(t41, t28, 0, *((unsigned int *)t42), 1, 0LL);
    goto LAB23;

LAB24:    t39 = *((unsigned int *)t28);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t39 | t40);
    goto LAB26;

LAB27:    xsi_vlogvar_wait_assign_value(t41, t28, 0, *((unsigned int *)t42), 1, 0LL);
    goto LAB28;

LAB29:    t39 = *((unsigned int *)t28);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t39 | t40);
    goto LAB31;

LAB32:    xsi_vlogvar_wait_assign_value(t41, t28, 0, *((unsigned int *)t42), 1, 0LL);
    goto LAB33;

LAB34:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB35;

LAB36:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t15), 1, 0LL);
    goto LAB37;

}

static void Always_59_1(char *t0)
{
    char t13[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5296);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng13)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);

LAB9:    xsi_set_current_line(63, ng0);
    t11 = ((char*)((ng11)));
    t12 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 10, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(68, ng0);

LAB13:    xsi_set_current_line(69, ng0);
    t4 = ((char*)((ng13)));
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t13, t4, 8);
    t5 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t5, t13, 0, 0, 10, 0LL);
    goto LAB12;

LAB16:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(73, ng0);

LAB21:    xsi_set_current_line(74, ng0);
    t28 = (t0 + 2568);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 9, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

}

static void Cont_79_2(char *t0)
{
    char t6[8];
    char t11[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng14)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t4, 10, t5, 32);
    t7 = (t0 + 2728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng15)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_mod(t11, 32, t9, 10, t10, 32);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_minus(t12, 32, t6, 32, t11, 32);
    t13 = (t0 + 5424);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 1023U;
    t19 = t18;
    t20 = (t12 + 4);
    t21 = *((unsigned int *)t12);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t13, 0, 9);
    t26 = (t0 + 5312);
    *((int *)t26) = 1;

LAB1:    return;
}

static void Cont_80_3(char *t0)
{
    char t6[8];
    char t11[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng16)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t4, 9, t5, 32);
    t7 = (t0 + 2888);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng15)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_mod(t11, 32, t9, 9, t10, 32);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_minus(t12, 32, t6, 32, t11, 32);
    t13 = (t0 + 5488);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 511U;
    t19 = t18;
    t20 = (t12 + 4);
    t21 = *((unsigned int *)t12);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t13, 0, 8);
    t26 = (t0 + 5328);
    *((int *)t26) = 1;

LAB1:    return;
}

static void Cont_82_4(char *t0)
{
    char t5[8];
    char t8[8];
    char t23[8];
    char t26[8];
    char t34[8];
    char t66[8];
    char t81[8];
    char t82[8];
    char t86[8];
    char t94[8];
    char t126[8];
    char t141[8];
    char t142[8];
    char t146[8];
    char t154[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    char *t83;
    char *t84;
    char *t85;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    int t118;
    int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t139;
    char *t140;
    char *t143;
    char *t144;
    char *t145;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    char *t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    char *t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    int t178;
    int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    char *t186;
    char *t187;
    char *t188;
    char *t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    unsigned int t194;
    unsigned int t195;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    char *t199;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t6 = (t4 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t3) > *((unsigned int *)t4))
        goto LAB6;

LAB7:    memset(t8, 0, 8);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t9) != 0)
        goto LAB11;

LAB12:    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB13;

LAB14:    memcpy(t34, t8, 8);

LAB15:    memset(t66, 0, 8);
    t67 = (t34 + 4);
    t68 = *((unsigned int *)t67);
    t69 = (~(t68));
    t70 = *((unsigned int *)t34);
    t71 = (t70 & t69);
    t72 = (t71 & 1U);
    if (t72 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t67) != 0)
        goto LAB30;

LAB31:    t74 = (t66 + 4);
    t75 = *((unsigned int *)t66);
    t76 = *((unsigned int *)t74);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB32;

LAB33:    memcpy(t94, t66, 8);

LAB34:    memset(t126, 0, 8);
    t127 = (t94 + 4);
    t128 = *((unsigned int *)t127);
    t129 = (~(t128));
    t130 = *((unsigned int *)t94);
    t131 = (t130 & t129);
    t132 = (t131 & 1U);
    if (t132 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t127) != 0)
        goto LAB49;

LAB50:    t134 = (t126 + 4);
    t135 = *((unsigned int *)t126);
    t136 = *((unsigned int *)t134);
    t137 = (t135 || t136);
    if (t137 > 0)
        goto LAB51;

LAB52:    memcpy(t154, t126, 8);

LAB53:    t186 = (t0 + 5552);
    t187 = (t186 + 56U);
    t188 = *((char **)t187);
    t189 = (t188 + 56U);
    t190 = *((char **)t189);
    memset(t190, 0, 8);
    t191 = 1U;
    t192 = t191;
    t193 = (t154 + 4);
    t194 = *((unsigned int *)t154);
    t191 = (t191 & t194);
    t195 = *((unsigned int *)t193);
    t192 = (t192 & t195);
    t196 = (t190 + 4);
    t197 = *((unsigned int *)t190);
    *((unsigned int *)t190) = (t197 | t191);
    t198 = *((unsigned int *)t196);
    *((unsigned int *)t196) = (t198 | t192);
    xsi_driver_vfirst_trans(t186, 0, 0);
    t199 = (t0 + 5344);
    *((int *)t199) = 1;

LAB1:    return;
LAB5:    t7 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t8) = 1;
    goto LAB12;

LAB11:    t15 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB12;

LAB13:    t20 = (t0 + 1688U);
    t21 = *((char **)t20);
    t20 = (t0 + 2008U);
    t22 = *((char **)t20);
    memset(t23, 0, 8);
    t20 = (t21 + 4);
    if (*((unsigned int *)t20) != 0)
        goto LAB17;

LAB16:    t24 = (t22 + 4);
    if (*((unsigned int *)t24) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t21) > *((unsigned int *)t22))
        goto LAB18;

LAB19:    memset(t26, 0, 8);
    t27 = (t23 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (t30 & t29);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t27) != 0)
        goto LAB23;

LAB24:    t35 = *((unsigned int *)t8);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t8 + 4);
    t39 = (t26 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB15;

LAB17:    t25 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB19;

LAB18:    *((unsigned int *)t23) = 1;
    goto LAB19;

LAB21:    *((unsigned int *)t26) = 1;
    goto LAB24;

LAB23:    t33 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB24;

LAB25:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t8 + 4);
    t49 = (t26 + 4);
    t50 = *((unsigned int *)t8);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB27;

LAB28:    *((unsigned int *)t66) = 1;
    goto LAB31;

LAB30:    t73 = (t66 + 4);
    *((unsigned int *)t66) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB31;

LAB32:    t78 = (t0 + 1528U);
    t79 = *((char **)t78);
    t78 = (t0 + 1848U);
    t80 = *((char **)t78);
    t78 = ((char*)((ng15)));
    memset(t81, 0, 8);
    xsi_vlog_unsigned_add(t81, 32, t80, 10, t78, 32);
    memset(t82, 0, 8);
    t83 = (t79 + 4);
    if (*((unsigned int *)t83) != 0)
        goto LAB36;

LAB35:    t84 = (t81 + 4);
    if (*((unsigned int *)t84) != 0)
        goto LAB36;

LAB39:    if (*((unsigned int *)t79) < *((unsigned int *)t81))
        goto LAB37;

LAB38:    memset(t86, 0, 8);
    t87 = (t82 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t82);
    t91 = (t90 & t89);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t87) != 0)
        goto LAB42;

LAB43:    t95 = *((unsigned int *)t66);
    t96 = *((unsigned int *)t86);
    t97 = (t95 & t96);
    *((unsigned int *)t94) = t97;
    t98 = (t66 + 4);
    t99 = (t86 + 4);
    t100 = (t94 + 4);
    t101 = *((unsigned int *)t98);
    t102 = *((unsigned int *)t99);
    t103 = (t101 | t102);
    *((unsigned int *)t100) = t103;
    t104 = *((unsigned int *)t100);
    t105 = (t104 != 0);
    if (t105 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB34;

LAB36:    t85 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t85) = 1;
    goto LAB38;

LAB37:    *((unsigned int *)t82) = 1;
    goto LAB38;

LAB40:    *((unsigned int *)t86) = 1;
    goto LAB43;

LAB42:    t93 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB43;

LAB44:    t106 = *((unsigned int *)t94);
    t107 = *((unsigned int *)t100);
    *((unsigned int *)t94) = (t106 | t107);
    t108 = (t66 + 4);
    t109 = (t86 + 4);
    t110 = *((unsigned int *)t66);
    t111 = (~(t110));
    t112 = *((unsigned int *)t108);
    t113 = (~(t112));
    t114 = *((unsigned int *)t86);
    t115 = (~(t114));
    t116 = *((unsigned int *)t109);
    t117 = (~(t116));
    t118 = (t111 & t113);
    t119 = (t115 & t117);
    t120 = (~(t118));
    t121 = (~(t119));
    t122 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t122 & t120);
    t123 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t123 & t121);
    t124 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t124 & t120);
    t125 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t125 & t121);
    goto LAB46;

LAB47:    *((unsigned int *)t126) = 1;
    goto LAB50;

LAB49:    t133 = (t126 + 4);
    *((unsigned int *)t126) = 1;
    *((unsigned int *)t133) = 1;
    goto LAB50;

LAB51:    t138 = (t0 + 1688U);
    t139 = *((char **)t138);
    t138 = (t0 + 2008U);
    t140 = *((char **)t138);
    t138 = ((char*)((ng15)));
    memset(t141, 0, 8);
    xsi_vlog_unsigned_add(t141, 32, t140, 9, t138, 32);
    memset(t142, 0, 8);
    t143 = (t139 + 4);
    if (*((unsigned int *)t143) != 0)
        goto LAB55;

LAB54:    t144 = (t141 + 4);
    if (*((unsigned int *)t144) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t139) < *((unsigned int *)t141))
        goto LAB56;

LAB57:    memset(t146, 0, 8);
    t147 = (t142 + 4);
    t148 = *((unsigned int *)t147);
    t149 = (~(t148));
    t150 = *((unsigned int *)t142);
    t151 = (t150 & t149);
    t152 = (t151 & 1U);
    if (t152 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t147) != 0)
        goto LAB61;

LAB62:    t155 = *((unsigned int *)t126);
    t156 = *((unsigned int *)t146);
    t157 = (t155 & t156);
    *((unsigned int *)t154) = t157;
    t158 = (t126 + 4);
    t159 = (t146 + 4);
    t160 = (t154 + 4);
    t161 = *((unsigned int *)t158);
    t162 = *((unsigned int *)t159);
    t163 = (t161 | t162);
    *((unsigned int *)t160) = t163;
    t164 = *((unsigned int *)t160);
    t165 = (t164 != 0);
    if (t165 == 1)
        goto LAB63;

LAB64:
LAB65:    goto LAB53;

LAB55:    t145 = (t142 + 4);
    *((unsigned int *)t142) = 1;
    *((unsigned int *)t145) = 1;
    goto LAB57;

LAB56:    *((unsigned int *)t142) = 1;
    goto LAB57;

LAB59:    *((unsigned int *)t146) = 1;
    goto LAB62;

LAB61:    t153 = (t146 + 4);
    *((unsigned int *)t146) = 1;
    *((unsigned int *)t153) = 1;
    goto LAB62;

LAB63:    t166 = *((unsigned int *)t154);
    t167 = *((unsigned int *)t160);
    *((unsigned int *)t154) = (t166 | t167);
    t168 = (t126 + 4);
    t169 = (t146 + 4);
    t170 = *((unsigned int *)t126);
    t171 = (~(t170));
    t172 = *((unsigned int *)t168);
    t173 = (~(t172));
    t174 = *((unsigned int *)t146);
    t175 = (~(t174));
    t176 = *((unsigned int *)t169);
    t177 = (~(t176));
    t178 = (t171 & t173);
    t179 = (t175 & t177);
    t180 = (~(t178));
    t181 = (~(t179));
    t182 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t182 & t180);
    t183 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t183 & t181);
    t184 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t184 & t180);
    t185 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t185 & t181);
    goto LAB65;

}


extern void work_m_00000000001187339017_3902278235_init()
{
	static char *pe[] = {(void *)Always_33_0,(void *)Always_59_1,(void *)Cont_79_2,(void *)Cont_80_3,(void *)Cont_82_4};
	xsi_register_didat("work_m_00000000001187339017_3902278235", "isim/random_box_tb_isim_beh.exe.sim/work/m_00000000001187339017_3902278235.didat");
	xsi_register_executes(pe);
}
