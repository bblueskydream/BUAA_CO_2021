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
static const char *ng0 = "G:/CS_Project/P6/P6_CPU/MU_DIV.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};



static void Cont_34_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5432);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5304);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_35_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5320);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_36_2(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 4736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB5;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB7:    t22 = (t0 + 5560);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 5336);
    *((int *)t35) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t6) = 1;
    goto LAB7;

LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Always_38_3(char *t0)
{
    char t13[8];
    char t32[8];
    char t35[16];
    char t36[16];
    char t37[16];
    char t38[8];
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
    char *t33;
    int t34;

LAB0:    t1 = (t0 + 4984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5352);
    *((int *)t2) = 1;
    t3 = (t0 + 5016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 2120U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
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
        goto LAB11;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB13:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(47, ng0);

LAB18:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);

LAB19:    t2 = ((char*)((ng2)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng3)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng5)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng6)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng7)));
    t34 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t34 == 1)
        goto LAB30;

LAB31:
LAB32:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB8;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(44, ng0);

LAB17:    xsi_set_current_line(45, ng0);
    t28 = (t0 + 3320);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng2)));
    memset(t32, 0, 8);
    xsi_vlog_unsigned_minus(t32, 32, t30, 4, t31, 32);
    t33 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 4, 0LL);
    goto LAB16;

LAB20:    xsi_set_current_line(49, ng0);

LAB33:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1800U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB32;

LAB22:    xsi_set_current_line(55, ng0);

LAB38:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1800U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB39;

LAB40:
LAB41:    goto LAB32;

LAB24:    xsi_set_current_line(61, ng0);

LAB43:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1800U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB32;

LAB26:    xsi_set_current_line(68, ng0);

LAB48:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1800U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB49;

LAB50:
LAB51:    goto LAB32;

LAB28:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 1320U);
    t5 = *((char **)t4);
    t4 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB32;

LAB30:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 1320U);
    t5 = *((char **)t4);
    t4 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB32;

LAB34:    xsi_set_current_line(50, ng0);

LAB37:    xsi_set_current_line(51, ng0);
    t11 = (t0 + 1320U);
    t12 = *((char **)t11);
    t11 = (t0 + 1480U);
    t21 = *((char **)t11);
    xsi_vlog_unsigned_multiply(t35, 64, t12, 32, t21, 32);
    t11 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t11, t35, 0, 0, 32, 0LL);
    t22 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t22, t35, 32, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 472);
    t4 = *((char **)t2);
    t2 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 4, 0LL);
    goto LAB36;

LAB39:    xsi_set_current_line(56, ng0);

LAB42:    xsi_set_current_line(57, ng0);
    t11 = (t0 + 1320U);
    t12 = *((char **)t11);
    xsi_vlogtype_sign_extend(t35, 64, t12, 32);
    t11 = (t0 + 1480U);
    t21 = *((char **)t11);
    xsi_vlogtype_sign_extend(t36, 64, t21, 32);
    xsi_vlog_signed_multiply(t37, 64, t35, 64, t36, 64);
    t11 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t11, t37, 0, 0, 32, 0LL);
    t22 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t22, t37, 32, 0, 32, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 472);
    t4 = *((char **)t2);
    t2 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 4, 0LL);
    goto LAB41;

LAB44:    xsi_set_current_line(62, ng0);

LAB47:    xsi_set_current_line(63, ng0);
    t11 = (t0 + 1320U);
    t12 = *((char **)t11);
    t11 = (t0 + 1480U);
    t21 = *((char **)t11);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_mod(t13, 32, t12, 32, t21, 32);
    t11 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1320U);
    t4 = *((char **)t2);
    t2 = (t0 + 1480U);
    t5 = *((char **)t2);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_divide(t13, 32, t4, 32, t5, 32);
    t2 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t2, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 608);
    t4 = *((char **)t2);
    t2 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 4, 0LL);
    goto LAB46;

LAB49:    xsi_set_current_line(69, ng0);

LAB52:    xsi_set_current_line(70, ng0);
    t11 = (t0 + 1320U);
    t12 = *((char **)t11);
    t11 = (t0 + 1480U);
    t21 = *((char **)t11);
    memset(t38, 0, 8);
    xsi_vlog_signed_mod(t38, 32, t12, 32, t21, 32);
    t11 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t11, t38, 0, 0, 32, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1320U);
    t4 = *((char **)t2);
    t2 = (t0 + 1480U);
    t5 = *((char **)t2);
    memset(t38, 0, 8);
    xsi_vlog_signed_divide(t38, 32, t4, 32, t5, 32);
    t2 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t2, t38, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 608);
    t4 = *((char **)t2);
    t2 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 4, 0LL);
    goto LAB51;

}


extern void work_m_00000000003929439482_4111503280_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Cont_35_1,(void *)Cont_36_2,(void *)Always_38_3};
	xsi_register_didat("work_m_00000000003929439482_4111503280", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000003929439482_4111503280.didat");
	xsi_register_executes(pe);
}
