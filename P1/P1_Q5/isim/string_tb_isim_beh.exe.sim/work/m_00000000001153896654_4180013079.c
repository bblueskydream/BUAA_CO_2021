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
static const char *ng0 = "D:/ISE_CODE/P1_Q5/string.v";
static unsigned int ng1[] = {2U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static int ng4[] = {48, 0};
static int ng5[] = {57, 0};
static int ng6[] = {43, 0};
static int ng7[] = {42, 0};
static unsigned int ng8[] = {1U, 0U};



static void Cont_35_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2496);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 4080);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 3984);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng2)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng3)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}

static void Always_37_1(char *t0)
{
    char t6[8];
    char t32[8];
    char t34[8];
    char t35[8];
    char t38[8];
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
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
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
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    int t95;
    char *t96;
    char *t97;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1616U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
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
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(50, ng0);

LAB75:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB76:    t5 = (t0 + 472);
    t7 = *((char **)t5);
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t7, 32);
    if (t58 == 1)
        goto LAB77;

LAB78:    t2 = ((char*)((ng8)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t58 == 1)
        goto LAB79;

LAB80:    t2 = ((char*)((ng1)));
    t58 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t58 == 1)
        goto LAB81;

LAB82:
LAB83:
LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng3)));
    t29 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB12;

LAB17:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(43, ng0);

LAB22:    xsi_set_current_line(44, ng0);
    t28 = (t0 + 2336);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng2)));
    memset(t32, 0, 8);
    xsi_vlog_unsigned_add(t32, 32, t30, 1, t31, 32);
    t33 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 1, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB24;

LAB23:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB24;

LAB27:    if (*((unsigned int *)t3) < *((unsigned int *)t2))
        goto LAB26;

LAB25:    *((unsigned int *)t6) = 1;

LAB26:    memset(t32, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t8) != 0)
        goto LAB30;

LAB31:    t22 = (t32 + 4);
    t14 = *((unsigned int *)t32);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB32;

LAB33:    memcpy(t38, t32, 8);

LAB34:    t66 = (t38 + 4);
    t67 = *((unsigned int *)t66);
    t68 = (~(t67));
    t69 = *((unsigned int *)t38);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB53;

LAB50:    if (t18 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t6) = 1;

LAB53:    memset(t32, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t8) != 0)
        goto LAB56;

LAB57:    t22 = (t32 + 4);
    t42 = *((unsigned int *)t32);
    t43 = (!(t42));
    t44 = *((unsigned int *)t22);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB58;

LAB59:    memcpy(t38, t32, 8);

LAB60:    t66 = (t38 + 4);
    t90 = *((unsigned int *)t66);
    t91 = (~(t90));
    t92 = *((unsigned int *)t38);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB72;

LAB73:
LAB74:
LAB49:    goto LAB21;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB26;

LAB28:    *((unsigned int *)t32) = 1;
    goto LAB31;

LAB30:    t21 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB31;

LAB32:    t28 = (t0 + 1776U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t30 = (t29 + 4);
    if (*((unsigned int *)t30) != 0)
        goto LAB36;

LAB35:    t31 = (t28 + 4);
    if (*((unsigned int *)t31) != 0)
        goto LAB36;

LAB39:    if (*((unsigned int *)t29) > *((unsigned int *)t28))
        goto LAB38;

LAB37:    *((unsigned int *)t34) = 1;

LAB38:    memset(t35, 0, 8);
    t36 = (t34 + 4);
    t17 = *((unsigned int *)t36);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t36) != 0)
        goto LAB42;

LAB43:    t24 = *((unsigned int *)t32);
    t25 = *((unsigned int *)t35);
    t26 = (t24 & t25);
    *((unsigned int *)t38) = t26;
    t39 = (t32 + 4);
    t40 = (t35 + 4);
    t41 = (t38 + 4);
    t27 = *((unsigned int *)t39);
    t42 = *((unsigned int *)t40);
    t43 = (t27 | t42);
    *((unsigned int *)t41) = t43;
    t44 = *((unsigned int *)t41);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB34;

LAB36:    t33 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB38;

LAB40:    *((unsigned int *)t35) = 1;
    goto LAB43;

LAB42:    t37 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB43;

LAB44:    t46 = *((unsigned int *)t38);
    t47 = *((unsigned int *)t41);
    *((unsigned int *)t38) = (t46 | t47);
    t48 = (t32 + 4);
    t49 = (t35 + 4);
    t50 = *((unsigned int *)t32);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t35);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t62 & t60);
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t64 & t60);
    t65 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t65 & t61);
    goto LAB46;

LAB47:    xsi_set_current_line(46, ng0);
    t72 = ((char*)((ng1)));
    t73 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t73, t72, 0, 0, 2, 0LL);
    goto LAB49;

LAB52:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB53;

LAB54:    *((unsigned int *)t32) = 1;
    goto LAB57;

LAB56:    t21 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB57;

LAB58:    t28 = (t0 + 1776U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng7)));
    memset(t34, 0, 8);
    t30 = (t29 + 4);
    t31 = (t28 + 4);
    t46 = *((unsigned int *)t29);
    t47 = *((unsigned int *)t28);
    t50 = (t46 ^ t47);
    t51 = *((unsigned int *)t30);
    t52 = *((unsigned int *)t31);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t30);
    t56 = *((unsigned int *)t31);
    t57 = (t55 | t56);
    t60 = (~(t57));
    t61 = (t54 & t60);
    if (t61 != 0)
        goto LAB64;

LAB61:    if (t57 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t34) = 1;

LAB64:    memset(t35, 0, 8);
    t36 = (t34 + 4);
    t62 = *((unsigned int *)t36);
    t63 = (~(t62));
    t64 = *((unsigned int *)t34);
    t65 = (t64 & t63);
    t67 = (t65 & 1U);
    if (t67 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t36) != 0)
        goto LAB67;

LAB68:    t68 = *((unsigned int *)t32);
    t69 = *((unsigned int *)t35);
    t70 = (t68 | t69);
    *((unsigned int *)t38) = t70;
    t39 = (t32 + 4);
    t40 = (t35 + 4);
    t41 = (t38 + 4);
    t71 = *((unsigned int *)t39);
    t74 = *((unsigned int *)t40);
    t75 = (t71 | t74);
    *((unsigned int *)t41) = t75;
    t76 = *((unsigned int *)t41);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB69;

LAB70:
LAB71:    goto LAB60;

LAB63:    t33 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB64;

LAB65:    *((unsigned int *)t35) = 1;
    goto LAB68;

LAB67:    t37 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB68;

LAB69:    t78 = *((unsigned int *)t38);
    t79 = *((unsigned int *)t41);
    *((unsigned int *)t38) = (t78 | t79);
    t48 = (t32 + 4);
    t49 = (t35 + 4);
    t80 = *((unsigned int *)t48);
    t81 = (~(t80));
    t82 = *((unsigned int *)t32);
    t58 = (t82 & t81);
    t83 = *((unsigned int *)t49);
    t84 = (~(t83));
    t85 = *((unsigned int *)t35);
    t59 = (t85 & t84);
    t86 = (~(t58));
    t87 = (~(t59));
    t88 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t88 & t86);
    t89 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t89 & t87);
    goto LAB71;

LAB72:    xsi_set_current_line(48, ng0);
    t72 = (t0 + 472);
    t73 = *((char **)t72);
    t72 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t72, t73, 0, 0, 2, 0LL);
    goto LAB74;

LAB77:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 472);
    t8 = *((char **)t5);
    t5 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t5, t8, 0, 0, 2, 0LL);
    goto LAB83;

LAB79:    xsi_set_current_line(54, ng0);

LAB84:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1776U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB86;

LAB85:    t8 = (t3 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB86;

LAB89:    if (*((unsigned int *)t5) < *((unsigned int *)t3))
        goto LAB88;

LAB87:    *((unsigned int *)t6) = 1;

LAB88:    memset(t32, 0, 8);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t22) != 0)
        goto LAB92;

LAB93:    t29 = (t32 + 4);
    t14 = *((unsigned int *)t32);
    t15 = *((unsigned int *)t29);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB94;

LAB95:    memcpy(t38, t32, 8);

LAB96:    t73 = (t38 + 4);
    t67 = *((unsigned int *)t73);
    t68 = (~(t67));
    t69 = *((unsigned int *)t38);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB109;

LAB110:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB115;

LAB112:    if (t18 != 0)
        goto LAB114;

LAB113:    *((unsigned int *)t6) = 1;

LAB115:    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB116;

LAB117:    if (*((unsigned int *)t21) != 0)
        goto LAB118;

LAB119:    t28 = (t32 + 4);
    t42 = *((unsigned int *)t32);
    t43 = (!(t42));
    t44 = *((unsigned int *)t28);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB120;

LAB121:    memcpy(t38, t32, 8);

LAB122:    t72 = (t38 + 4);
    t90 = *((unsigned int *)t72);
    t91 = (~(t90));
    t92 = *((unsigned int *)t38);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB134;

LAB135:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);

LAB136:
LAB111:    goto LAB83;

LAB81:    xsi_set_current_line(62, ng0);

LAB137:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1776U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB139;

LAB138:    t8 = (t3 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB139;

LAB142:    if (*((unsigned int *)t5) < *((unsigned int *)t3))
        goto LAB141;

LAB140:    *((unsigned int *)t6) = 1;

LAB141:    memset(t32, 0, 8);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB143;

LAB144:    if (*((unsigned int *)t22) != 0)
        goto LAB145;

LAB146:    t29 = (t32 + 4);
    t14 = *((unsigned int *)t32);
    t15 = *((unsigned int *)t29);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB147;

LAB148:    memcpy(t38, t32, 8);

LAB149:    t73 = (t38 + 4);
    t67 = *((unsigned int *)t73);
    t68 = (~(t67));
    t69 = *((unsigned int *)t38);
    t70 = (t69 & t68);
    t71 = (t70 != 0);
    if (t71 > 0)
        goto LAB162;

LAB163:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t7);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB168;

LAB165:    if (t18 != 0)
        goto LAB167;

LAB166:    *((unsigned int *)t6) = 1;

LAB168:    memset(t32, 0, 8);
    t21 = (t6 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB169;

LAB170:    if (*((unsigned int *)t21) != 0)
        goto LAB171;

LAB172:    t28 = (t32 + 4);
    t42 = *((unsigned int *)t32);
    t43 = (!(t42));
    t44 = *((unsigned int *)t28);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB173;

LAB174:    memcpy(t38, t32, 8);

LAB175:    t72 = (t38 + 4);
    t90 = *((unsigned int *)t72);
    t91 = (~(t90));
    t92 = *((unsigned int *)t38);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB187;

LAB188:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);

LAB189:
LAB164:    goto LAB83;

LAB86:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB88;

LAB90:    *((unsigned int *)t32) = 1;
    goto LAB93;

LAB92:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB93;

LAB94:    t30 = (t0 + 1776U);
    t31 = *((char **)t30);
    t30 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t33 = (t31 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB98;

LAB97:    t36 = (t30 + 4);
    if (*((unsigned int *)t36) != 0)
        goto LAB98;

LAB101:    if (*((unsigned int *)t31) > *((unsigned int *)t30))
        goto LAB100;

LAB99:    *((unsigned int *)t34) = 1;

LAB100:    memset(t35, 0, 8);
    t39 = (t34 + 4);
    t17 = *((unsigned int *)t39);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t39) != 0)
        goto LAB104;

LAB105:    t24 = *((unsigned int *)t32);
    t25 = *((unsigned int *)t35);
    t26 = (t24 & t25);
    *((unsigned int *)t38) = t26;
    t41 = (t32 + 4);
    t48 = (t35 + 4);
    t49 = (t38 + 4);
    t27 = *((unsigned int *)t41);
    t42 = *((unsigned int *)t48);
    t43 = (t27 | t42);
    *((unsigned int *)t49) = t43;
    t44 = *((unsigned int *)t49);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB106;

LAB107:
LAB108:    goto LAB96;

LAB98:    t37 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB100;

LAB102:    *((unsigned int *)t35) = 1;
    goto LAB105;

LAB104:    t40 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB105;

LAB106:    t46 = *((unsigned int *)t38);
    t47 = *((unsigned int *)t49);
    *((unsigned int *)t38) = (t46 | t47);
    t66 = (t32 + 4);
    t72 = (t35 + 4);
    t50 = *((unsigned int *)t32);
    t51 = (~(t50));
    t52 = *((unsigned int *)t66);
    t53 = (~(t52));
    t54 = *((unsigned int *)t35);
    t55 = (~(t54));
    t56 = *((unsigned int *)t72);
    t57 = (~(t56));
    t59 = (t51 & t53);
    t95 = (t55 & t57);
    t60 = (~(t59));
    t61 = (~(t95));
    t62 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t62 & t60);
    t63 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t63 & t61);
    t64 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t64 & t60);
    t65 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t65 & t61);
    goto LAB108;

LAB109:    xsi_set_current_line(56, ng0);
    t96 = ((char*)((ng1)));
    t97 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t97, t96, 0, 0, 2, 0LL);
    goto LAB111;

LAB114:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB115;

LAB116:    *((unsigned int *)t32) = 1;
    goto LAB119;

LAB118:    t22 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB119;

LAB120:    t29 = (t0 + 1776U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng7)));
    memset(t34, 0, 8);
    t31 = (t30 + 4);
    t33 = (t29 + 4);
    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t29);
    t50 = (t46 ^ t47);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t33);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t31);
    t56 = *((unsigned int *)t33);
    t57 = (t55 | t56);
    t60 = (~(t57));
    t61 = (t54 & t60);
    if (t61 != 0)
        goto LAB126;

LAB123:    if (t57 != 0)
        goto LAB125;

LAB124:    *((unsigned int *)t34) = 1;

LAB126:    memset(t35, 0, 8);
    t37 = (t34 + 4);
    t62 = *((unsigned int *)t37);
    t63 = (~(t62));
    t64 = *((unsigned int *)t34);
    t65 = (t64 & t63);
    t67 = (t65 & 1U);
    if (t67 != 0)
        goto LAB127;

LAB128:    if (*((unsigned int *)t37) != 0)
        goto LAB129;

LAB130:    t68 = *((unsigned int *)t32);
    t69 = *((unsigned int *)t35);
    t70 = (t68 | t69);
    *((unsigned int *)t38) = t70;
    t40 = (t32 + 4);
    t41 = (t35 + 4);
    t48 = (t38 + 4);
    t71 = *((unsigned int *)t40);
    t74 = *((unsigned int *)t41);
    t75 = (t71 | t74);
    *((unsigned int *)t48) = t75;
    t76 = *((unsigned int *)t48);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB131;

LAB132:
LAB133:    goto LAB122;

LAB125:    t36 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB126;

LAB127:    *((unsigned int *)t35) = 1;
    goto LAB130;

LAB129:    t39 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB130;

LAB131:    t78 = *((unsigned int *)t38);
    t79 = *((unsigned int *)t48);
    *((unsigned int *)t38) = (t78 | t79);
    t49 = (t32 + 4);
    t66 = (t35 + 4);
    t80 = *((unsigned int *)t49);
    t81 = (~(t80));
    t82 = *((unsigned int *)t32);
    t58 = (t82 & t81);
    t83 = *((unsigned int *)t66);
    t84 = (~(t83));
    t85 = *((unsigned int *)t35);
    t59 = (t85 & t84);
    t86 = (~(t58));
    t87 = (~(t59));
    t88 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t88 & t86);
    t89 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t89 & t87);
    goto LAB133;

LAB134:    xsi_set_current_line(58, ng0);
    t73 = (t0 + 472);
    t96 = *((char **)t73);
    t73 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t73, t96, 0, 0, 2, 0LL);
    goto LAB136;

LAB139:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB141;

LAB143:    *((unsigned int *)t32) = 1;
    goto LAB146;

LAB145:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB146;

LAB147:    t30 = (t0 + 1776U);
    t31 = *((char **)t30);
    t30 = ((char*)((ng5)));
    memset(t34, 0, 8);
    t33 = (t31 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB151;

LAB150:    t36 = (t30 + 4);
    if (*((unsigned int *)t36) != 0)
        goto LAB151;

LAB154:    if (*((unsigned int *)t31) > *((unsigned int *)t30))
        goto LAB153;

LAB152:    *((unsigned int *)t34) = 1;

LAB153:    memset(t35, 0, 8);
    t39 = (t34 + 4);
    t17 = *((unsigned int *)t39);
    t18 = (~(t17));
    t19 = *((unsigned int *)t34);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB155;

LAB156:    if (*((unsigned int *)t39) != 0)
        goto LAB157;

LAB158:    t24 = *((unsigned int *)t32);
    t25 = *((unsigned int *)t35);
    t26 = (t24 & t25);
    *((unsigned int *)t38) = t26;
    t41 = (t32 + 4);
    t48 = (t35 + 4);
    t49 = (t38 + 4);
    t27 = *((unsigned int *)t41);
    t42 = *((unsigned int *)t48);
    t43 = (t27 | t42);
    *((unsigned int *)t49) = t43;
    t44 = *((unsigned int *)t49);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB159;

LAB160:
LAB161:    goto LAB149;

LAB151:    t37 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB153;

LAB155:    *((unsigned int *)t35) = 1;
    goto LAB158;

LAB157:    t40 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB158;

LAB159:    t46 = *((unsigned int *)t38);
    t47 = *((unsigned int *)t49);
    *((unsigned int *)t38) = (t46 | t47);
    t66 = (t32 + 4);
    t72 = (t35 + 4);
    t50 = *((unsigned int *)t32);
    t51 = (~(t50));
    t52 = *((unsigned int *)t66);
    t53 = (~(t52));
    t54 = *((unsigned int *)t35);
    t55 = (~(t54));
    t56 = *((unsigned int *)t72);
    t57 = (~(t56));
    t59 = (t51 & t53);
    t95 = (t55 & t57);
    t60 = (~(t59));
    t61 = (~(t95));
    t62 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t62 & t60);
    t63 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t63 & t61);
    t64 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t64 & t60);
    t65 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t65 & t61);
    goto LAB161;

LAB162:    xsi_set_current_line(64, ng0);
    t96 = (t0 + 472);
    t97 = *((char **)t96);
    t96 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t96, t97, 0, 0, 2, 0LL);
    goto LAB164;

LAB167:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB168;

LAB169:    *((unsigned int *)t32) = 1;
    goto LAB172;

LAB171:    t22 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB172;

LAB173:    t29 = (t0 + 1776U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng7)));
    memset(t34, 0, 8);
    t31 = (t30 + 4);
    t33 = (t29 + 4);
    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t29);
    t50 = (t46 ^ t47);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t33);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t31);
    t56 = *((unsigned int *)t33);
    t57 = (t55 | t56);
    t60 = (~(t57));
    t61 = (t54 & t60);
    if (t61 != 0)
        goto LAB179;

LAB176:    if (t57 != 0)
        goto LAB178;

LAB177:    *((unsigned int *)t34) = 1;

LAB179:    memset(t35, 0, 8);
    t37 = (t34 + 4);
    t62 = *((unsigned int *)t37);
    t63 = (~(t62));
    t64 = *((unsigned int *)t34);
    t65 = (t64 & t63);
    t67 = (t65 & 1U);
    if (t67 != 0)
        goto LAB180;

LAB181:    if (*((unsigned int *)t37) != 0)
        goto LAB182;

LAB183:    t68 = *((unsigned int *)t32);
    t69 = *((unsigned int *)t35);
    t70 = (t68 | t69);
    *((unsigned int *)t38) = t70;
    t40 = (t32 + 4);
    t41 = (t35 + 4);
    t48 = (t38 + 4);
    t71 = *((unsigned int *)t40);
    t74 = *((unsigned int *)t41);
    t75 = (t71 | t74);
    *((unsigned int *)t48) = t75;
    t76 = *((unsigned int *)t48);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB184;

LAB185:
LAB186:    goto LAB175;

LAB178:    t36 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB179;

LAB180:    *((unsigned int *)t35) = 1;
    goto LAB183;

LAB182:    t39 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB183;

LAB184:    t78 = *((unsigned int *)t38);
    t79 = *((unsigned int *)t48);
    *((unsigned int *)t38) = (t78 | t79);
    t49 = (t32 + 4);
    t66 = (t35 + 4);
    t80 = *((unsigned int *)t49);
    t81 = (~(t80));
    t82 = *((unsigned int *)t32);
    t58 = (t82 & t81);
    t83 = *((unsigned int *)t66);
    t84 = (~(t83));
    t85 = *((unsigned int *)t35);
    t59 = (t85 & t84);
    t86 = (~(t58));
    t87 = (~(t59));
    t88 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t88 & t86);
    t89 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t89 & t87);
    goto LAB186;

LAB187:    xsi_set_current_line(66, ng0);
    t73 = ((char*)((ng8)));
    t96 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t96, t73, 0, 0, 2, 0LL);
    goto LAB189;

}


extern void work_m_00000000001153896654_4180013079_init()
{
	static char *pe[] = {(void *)Cont_35_0,(void *)Always_37_1};
	xsi_register_didat("work_m_00000000001153896654_4180013079", "isim/string_tb_isim_beh.exe.sim/work/m_00000000001153896654_4180013079.didat");
	xsi_register_executes(pe);
}
