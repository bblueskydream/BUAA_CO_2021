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
static const char *ng0 = "G:/CS_Project/P6/P6_CPU/mips_tb.v";
static int ng1[] = {2, 0};
static unsigned int ng2[] = {12288U, 0U};
static const char *ng3 = "code.txt";
static int ng4[] = {0, 0};
static int ng5[] = {4096, 0};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {4294967292U, 0U};
static int ng8[] = {31, 0};
static int ng9[] = {24, 0};
static int ng10[] = {23, 0};
static int ng11[] = {16, 0};
static int ng12[] = {15, 0};
static int ng13[] = {8, 0};
static int ng14[] = {7, 0};
static const char *ng15 = "%d@%h: *%h <= %h";
static const char *ng16 = "%d@%h: $%d <= %h";



static void Cont_51_0(char *t0)
{
    char t5[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 3848);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3848);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng1)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_rshift(t14, 32, t13, 32, t12, 32);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t14, 32, 2);
    t15 = (t0 + 7128);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t20 = (t0 + 6984);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_52_1(char *t0)
{
    char t5[8];
    char t14[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 4008);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 4008);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1048U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_minus(t14, 32, t13, 32, t12, 32);
    t15 = ((char*)((ng1)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_rshift(t16, 32, t14, 32, t15, 32);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t16, 32, 2);
    t17 = (t0 + 7192);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t5, 8);
    xsi_driver_vfirst_trans(t17, 0, 31);
    t22 = (t0 + 7000);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Initial_54_2(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(54, ng0);

LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4008);
    xsi_vlogfile_readmemh(ng3, 0, t1, 0, 0, 0, 0);
    xsi_set_current_line(56, ng0);
    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 3368);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng5)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t12 = ((char*)((ng4)));
    t13 = (t0 + 3848);
    t16 = (t0 + 3848);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 3848);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 3368);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3368);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng6)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 3368);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, *((unsigned int *)t15), t35, 0LL);
    goto LAB7;

}

static void Initial_59_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);

LAB4:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5480);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB1;

}

static void Always_65_4(char *t0)
{
    char t7[8];
    char t16[8];
    char t44[8];
    char t45[8];
    char t46[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t47;
    int t48;
    char *t49;
    int t50;
    int t51;
    int t52;
    int t53;
    int t54;

LAB0:    t1 = (t0 + 5920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7016);
    *((int *)t2) = 1;
    t3 = (t0 + 5952);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 3848);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3848);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3848);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1368U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng1)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_rshift(t16, 32, t15, 32, t14, 32);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t16, 32, 2);
    t17 = (t0 + 3688);
    xsi_vlogvar_assign_value(t17, t7, 0, 0, 32);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t2);
    t20 = (t18 & t19);
    *((unsigned int *)t7) = t20;
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = (t7 + 4);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t5);
    t23 = (t21 | t22);
    *((unsigned int *)t6) = t23;
    t24 = *((unsigned int *)t6);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB6;

LAB7:
LAB8:    t10 = (t0 + 3528);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 32);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (t18 >> 3);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t4);
    t22 = (t21 >> 3);
    t23 = (t22 & 1);
    *((unsigned int *)t2) = t23;
    t5 = (t7 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB9;

LAB10:
LAB11:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (t18 >> 2);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t4);
    t22 = (t21 >> 2);
    t23 = (t22 & 1);
    *((unsigned int *)t2) = t23;
    t5 = (t7 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB14;

LAB15:
LAB16:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t4);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t2) = t23;
    t5 = (t7 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB19;

LAB20:
LAB21:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t4);
    t22 = (t21 >> 0);
    t23 = (t22 & 1);
    *((unsigned int *)t2) = t23;
    t5 = (t7 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB24;

LAB25:
LAB26:    goto LAB2;

LAB6:    t26 = *((unsigned int *)t7);
    t27 = *((unsigned int *)t6);
    *((unsigned int *)t7) = (t26 | t27);
    t8 = (t3 + 4);
    t9 = (t2 + 4);
    t28 = *((unsigned int *)t3);
    t29 = (~(t28));
    t30 = *((unsigned int *)t8);
    t31 = (~(t30));
    t32 = *((unsigned int *)t2);
    t33 = (~(t32));
    t34 = *((unsigned int *)t9);
    t35 = (~(t34));
    t36 = (t29 & t31);
    t37 = (t33 & t35);
    t38 = (~(t36));
    t39 = (~(t37));
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & t38);
    t41 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t41 & t39);
    t42 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t42 & t38);
    t43 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t43 & t39);
    goto LAB8;

LAB9:    xsi_set_current_line(68, ng0);
    t6 = (t0 + 1688U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t29 = *((unsigned int *)t8);
    t30 = (t29 >> 24);
    *((unsigned int *)t16) = t30;
    t31 = *((unsigned int *)t9);
    t32 = (t31 >> 24);
    *((unsigned int *)t6) = t32;
    t33 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t33 & 255U);
    t34 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t34 & 255U);
    t10 = (t0 + 3688);
    t11 = (t0 + 3688);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng8)));
    t15 = ((char*)((ng9)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t44 + 4);
    t35 = *((unsigned int *)t17);
    t36 = (!(t35));
    t47 = (t45 + 4);
    t38 = *((unsigned int *)t47);
    t37 = (!(t38));
    t48 = (t36 && t37);
    t49 = (t46 + 4);
    t39 = *((unsigned int *)t49);
    t50 = (!(t39));
    t51 = (t48 && t50);
    if (t51 == 1)
        goto LAB12;

LAB13:    goto LAB11;

LAB12:    t40 = *((unsigned int *)t46);
    t52 = (t40 + 0);
    t41 = *((unsigned int *)t44);
    t42 = *((unsigned int *)t45);
    t53 = (t41 - t42);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t10, t16, t52, *((unsigned int *)t45), t54);
    goto LAB13;

LAB14:    xsi_set_current_line(69, ng0);
    t6 = (t0 + 1688U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t29 = *((unsigned int *)t8);
    t30 = (t29 >> 16);
    *((unsigned int *)t16) = t30;
    t31 = *((unsigned int *)t9);
    t32 = (t31 >> 16);
    *((unsigned int *)t6) = t32;
    t33 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t33 & 255U);
    t34 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t34 & 255U);
    t10 = (t0 + 3688);
    t11 = (t0 + 3688);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng10)));
    t15 = ((char*)((ng11)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t44 + 4);
    t35 = *((unsigned int *)t17);
    t36 = (!(t35));
    t47 = (t45 + 4);
    t38 = *((unsigned int *)t47);
    t37 = (!(t38));
    t48 = (t36 && t37);
    t49 = (t46 + 4);
    t39 = *((unsigned int *)t49);
    t50 = (!(t39));
    t51 = (t48 && t50);
    if (t51 == 1)
        goto LAB17;

LAB18:    goto LAB16;

LAB17:    t40 = *((unsigned int *)t46);
    t52 = (t40 + 0);
    t41 = *((unsigned int *)t44);
    t42 = *((unsigned int *)t45);
    t53 = (t41 - t42);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t10, t16, t52, *((unsigned int *)t45), t54);
    goto LAB18;

LAB19:    xsi_set_current_line(70, ng0);
    t6 = (t0 + 1688U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t29 = *((unsigned int *)t8);
    t30 = (t29 >> 8);
    *((unsigned int *)t16) = t30;
    t31 = *((unsigned int *)t9);
    t32 = (t31 >> 8);
    *((unsigned int *)t6) = t32;
    t33 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t33 & 255U);
    t34 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t34 & 255U);
    t10 = (t0 + 3688);
    t11 = (t0 + 3688);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng12)));
    t15 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t44 + 4);
    t35 = *((unsigned int *)t17);
    t36 = (!(t35));
    t47 = (t45 + 4);
    t38 = *((unsigned int *)t47);
    t37 = (!(t38));
    t48 = (t36 && t37);
    t49 = (t46 + 4);
    t39 = *((unsigned int *)t49);
    t50 = (!(t39));
    t51 = (t48 && t50);
    if (t51 == 1)
        goto LAB22;

LAB23:    goto LAB21;

LAB22:    t40 = *((unsigned int *)t46);
    t52 = (t40 + 0);
    t41 = *((unsigned int *)t44);
    t42 = *((unsigned int *)t45);
    t53 = (t41 - t42);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t10, t16, t52, *((unsigned int *)t45), t54);
    goto LAB23;

LAB24:    xsi_set_current_line(71, ng0);
    t6 = (t0 + 1688U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t29 = *((unsigned int *)t8);
    t30 = (t29 >> 0);
    *((unsigned int *)t16) = t30;
    t31 = *((unsigned int *)t9);
    t32 = (t31 >> 0);
    *((unsigned int *)t6) = t32;
    t33 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t33 & 255U);
    t34 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t34 & 255U);
    t10 = (t0 + 3688);
    t11 = (t0 + 3688);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng14)));
    t15 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t44 + 4);
    t35 = *((unsigned int *)t17);
    t36 = (!(t35));
    t47 = (t45 + 4);
    t38 = *((unsigned int *)t47);
    t37 = (!(t38));
    t48 = (t36 && t37);
    t49 = (t46 + 4);
    t39 = *((unsigned int *)t49);
    t50 = (!(t39));
    t51 = (t48 && t50);
    if (t51 == 1)
        goto LAB27;

LAB28:    goto LAB26;

LAB27:    t40 = *((unsigned int *)t46);
    t52 = (t40 + 0);
    t41 = *((unsigned int *)t44);
    t42 = *((unsigned int *)t45);
    t53 = (t41 - t42);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t10, t16, t52, *((unsigned int *)t45), t54);
    goto LAB28;

}

static void Always_74_5(char *t0)
{
    char t15[8];
    char t16[8];
    char t17[8];
    char t38[8];
    char t45[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    char *t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t1 = (t0 + 6168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 7032);
    *((int *)t2) = 1;
    t3 = (t0 + 6200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);

LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 15U);
    if (t12 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB17:    t5 = (t15 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t33 = *((unsigned int *)t15);
    t34 = (t33 & t30);
    t37 = (t34 != 0);
    if (t37 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(75, ng0);
    xsi_set_current_line(75, ng0);
    t13 = ((char*)((ng4)));
    t14 = (t0 + 3368);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 32);

LAB9:    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t15, 0, 8);
    xsi_vlog_signed_less(t15, 32, t4, 32, t5, 32);
    t6 = (t15 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t15);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(75, ng0);
    t7 = ((char*)((ng4)));
    t13 = (t0 + 3848);
    t14 = (t0 + 3848);
    t18 = (t14 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 3848);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 3368);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t16, t17, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t16 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t17 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t4, 32, t5, 32);
    t6 = (t0 + 3368);
    xsi_vlogvar_assign_value(t6, t15, 0, 0, 32);
    goto LAB9;

LAB12:    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t13, t7, 0, *((unsigned int *)t17), t36, 0LL);
    goto LAB13;

LAB14:    *((unsigned int *)t15) = 1;
    goto LAB17;

LAB16:    t4 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(76, ng0);

LAB21:    xsi_set_current_line(77, ng0);
    t6 = (t0 + 3688);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t14 = (t0 + 3848);
    t18 = (t0 + 3848);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3848);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 3528);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t29 = ((char*)((ng1)));
    memset(t38, 0, 8);
    xsi_vlog_unsigned_rshift(t38, 32, t26, 32, t29, 32);
    xsi_vlog_generic_convert_array_indices(t16, t17, t20, t23, 2, 1, t38, 32, 2);
    t39 = (t16 + 4);
    t40 = *((unsigned int *)t39);
    t28 = (!(t40));
    t41 = (t17 + 4);
    t42 = *((unsigned int *)t41);
    t31 = (!(t42));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(78, ng0);
    t2 = xsi_vlog_time(t45, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 3528);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 3688);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t45, 64, (char)118, t4, 32, (char)118, t6, 32, (char)118, t14, 32);
    goto LAB20;

LAB22:    t43 = *((unsigned int *)t16);
    t44 = *((unsigned int *)t17);
    t35 = (t43 - t44);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t17), t36, 0LL);
    goto LAB23;

}

static void Always_82_6(char *t0)
{
    char t4[8];
    char t33[8];
    char t46[8];
    char t62[8];
    char t70[8];
    char t108[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
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
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;

LAB0:    t1 = (t0 + 6416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 7048);
    *((int *)t2) = 1;
    t3 = (t0 + 6448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);

LAB5:    xsi_set_current_line(83, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t8) == 0)
        goto LAB6;

LAB8:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB11;

LAB10:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB12;

LAB13:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB10;

LAB12:    xsi_set_current_line(83, ng0);

LAB15:    xsi_set_current_line(84, ng0);
    t31 = (t0 + 2168U);
    t32 = *((char **)t31);
    memset(t33, 0, 8);
    t31 = (t32 + 4);
    t34 = *((unsigned int *)t31);
    t35 = (~(t34));
    t36 = *((unsigned int *)t32);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t31) != 0)
        goto LAB18;

LAB19:    t40 = (t33 + 4);
    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t40);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB20;

LAB21:    memcpy(t70, t33, 8);

LAB22:    t102 = (t70 + 4);
    t103 = *((unsigned int *)t102);
    t104 = (~(t103));
    t105 = *((unsigned int *)t70);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB14;

LAB16:    *((unsigned int *)t33) = 1;
    goto LAB19;

LAB18:    t39 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB19;

LAB20:    t44 = (t0 + 2328U);
    t45 = *((char **)t44);
    t44 = ((char*)((ng4)));
    memset(t46, 0, 8);
    t47 = (t45 + 4);
    t48 = (t44 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t44);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB24;

LAB23:    if (t58 != 0)
        goto LAB25;

LAB26:    memset(t62, 0, 8);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t63) != 0)
        goto LAB29;

LAB30:    t71 = *((unsigned int *)t33);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t74 = (t33 + 4);
    t75 = (t62 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB22;

LAB24:    *((unsigned int *)t46) = 1;
    goto LAB26;

LAB25:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t62) = 1;
    goto LAB30;

LAB29:    t69 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB30;

LAB31:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t33 + 4);
    t85 = (t62 + 4);
    t86 = *((unsigned int *)t33);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t85);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t98 & t96);
    t99 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB33;

LAB34:    xsi_set_current_line(84, ng0);

LAB37:    xsi_set_current_line(85, ng0);
    t109 = xsi_vlog_time(t108, 1000.0000000000000, 1000.0000000000000);
    t110 = (t0 + 2648U);
    t111 = *((char **)t110);
    t110 = (t0 + 2328U);
    t112 = *((char **)t110);
    t110 = (t0 + 2488U);
    t113 = *((char **)t110);
    xsi_vlogfile_write(1, 0, 0, ng16, 5, t0, (char)118, t108, 64, (char)118, t111, 32, (char)118, t112, 5, (char)118, t113, 32);
    goto LAB36;

}

static void Always_90_7(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 6664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 6472);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t24, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}


extern void work_m_00000000001292392995_1131260308_init()
{
	static char *pe[] = {(void *)Cont_51_0,(void *)Cont_52_1,(void *)Initial_54_2,(void *)Initial_59_3,(void *)Always_65_4,(void *)Always_74_5,(void *)Always_82_6,(void *)Always_90_7};
	xsi_register_didat("work_m_00000000001292392995_1131260308", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000001292392995_1131260308.didat");
	xsi_register_executes(pe);
}
