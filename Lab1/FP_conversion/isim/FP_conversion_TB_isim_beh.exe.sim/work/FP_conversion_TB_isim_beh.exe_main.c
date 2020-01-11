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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001413637263_0285908859_init();
    work_m_00000000003552323071_2480358918_init();
    work_m_00000000003642010556_3865691683_init();
    work_m_00000000003174313052_3546419924_init();
    work_m_00000000003853563406_2671788094_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003853563406_2671788094");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
