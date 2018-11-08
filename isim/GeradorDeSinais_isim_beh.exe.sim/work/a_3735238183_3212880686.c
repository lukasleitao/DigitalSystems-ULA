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
static const char *ng0 = "/home/lukas/ISE_PROJETOS/ULAv2/ULA.vhd";



static void work_a_3735238183_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 5064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9608);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB14:    t6 = (t0 + 9611);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB15:    t9 = (t0 + 9614);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB16:    t12 = (t0 + 9617);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t15 = (t0 + 9620);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB18:    t18 = (t0 + 9623);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB19:    t21 = (t0 + 9626);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB11;

LAB20:    t24 = (t0 + 9629);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 9632);
    t4 = (t0 + 5992);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(121, ng0);

LAB25:    t2 = (t0 + 5880);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(122, ng0);
    t27 = (t0 + 2152U);
    t28 = *((char **)t27);
    t27 = (t0 + 5992);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 4U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB11:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB12:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t2 = (t0 + 5992);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 4U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 5880);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}

static void work_a_3735238183_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 5312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9636);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 9639);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 6056);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(132, ng0);

LAB13:    t2 = (t0 + 5896);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(133, ng0);
    t9 = (t0 + 3272U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t9 = (t0 + 6056);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB6:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t2 = (t0 + 6056);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t11;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 5896);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_3735238183_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 5560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 9642);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 9645);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 6120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(137, ng0);

LAB13:    t2 = (t0 + 5912);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(138, ng0);
    t9 = (t0 + 3592U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t9 = (t0 + 6120);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB4;

LAB6:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t2 = (t0 + 6120);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t11;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 5912);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}


extern void work_a_3735238183_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3735238183_3212880686_p_0,(void *)work_a_3735238183_3212880686_p_1,(void *)work_a_3735238183_3212880686_p_2};
	xsi_register_didat("work_a_3735238183_3212880686", "isim/GeradorDeSinais_isim_beh.exe.sim/work/a_3735238183_3212880686.didat");
	xsi_register_executes(pe);
}
