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
static const char *ng0 = "//Mac/Home/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/FP_conversion/FP_conversion_TB.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_43_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);

LAB4:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(51, ng0);

LAB6:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1768);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 12, t6, 32);
    t8 = (t0 + 1768);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 12);
    goto LAB6;

LAB8:    goto LAB1;

}


extern void work_m_00000000003853563406_2671788094_init()
{
	static char *pe[] = {(void *)Initial_43_0};
	xsi_register_didat("work_m_00000000003853563406_2671788094", "isim/FP_conversion_TB_isim_beh.exe.sim/work/m_00000000003853563406_2671788094.didat");
	xsi_register_executes(pe);
}
