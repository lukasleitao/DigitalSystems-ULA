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

char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_3407339238_3116782516_init();
    work_a_0176679395_1975455851_init();
    work_a_0783578221_1870412590_init();
    work_a_0822367577_3212880686_init();
    work_a_1130988942_3212880686_init();
    work_a_3505286438_3212880686_init();
    work_a_2312708891_3854041565_init();
    work_a_1068294342_2364312610_init();
    work_a_3329378731_2208033647_init();
    work_a_2028821935_3212880686_init();
    work_a_3735238183_3212880686_init();
    work_a_2187592342_1214131516_init();
    work_a_2303108739_1214131516_init();


    xsi_register_tops("work_a_2303108739_1214131516");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
