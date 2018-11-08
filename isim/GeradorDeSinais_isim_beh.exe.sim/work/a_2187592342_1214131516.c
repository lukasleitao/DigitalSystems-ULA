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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/lukas/ISE_PROJETOS/ULAv2/contador.vhd";



static void work_a_2187592342_1214131516_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    int t12;
    char *t13;
    int t14;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t1 = (t0 + 3344);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t13 = *((char **)t11);
    *((int *)t13) = t12;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)1);
    if (t10 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t3 = (t12 >= 300000000);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t14 = (t12 + 1);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t14;

LAB14:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)1);
    t3 = t7;
    goto LAB9;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1512U);
    t11 = *((char **)t2);
    t12 = *((int *)t11);
    t2 = (t0 + 1968U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((int *)t2) = t12;
    goto LAB11;

LAB13:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    goto LAB14;

}


extern void work_a_2187592342_1214131516_init()
{
	static char *pe[] = {(void *)work_a_2187592342_1214131516_p_0};
	xsi_register_didat("work_a_2187592342_1214131516", "isim/GeradorDeSinais_isim_beh.exe.sim/work/a_2187592342_1214131516.didat");
	xsi_register_executes(pe);
}
