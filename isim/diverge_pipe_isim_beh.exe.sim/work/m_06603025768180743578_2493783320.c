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
static const char *ng0 = "/home/bluelabuser/Desktop/Temp/fractal/diverge_pipe.v";
static int ng1[] = {2, 0};
static int ng2[] = {31, 0};
static int ng3[] = {0, 0};
static int ng4[] = {32, 0};
static unsigned int ng5[] = {0U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {67108864U, 0U, 0U, 0U};
static int ng8[] = {1, 0};



static void NetDecl_50_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;

LAB0:    t1 = (t0 + 6040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3208);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 15);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 15);
    t15 = (t14 & 1);
    *((unsigned int *)t8) = t15;
    memset(t4, 0, 8);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t7);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t16) != 0)
        goto LAB6;

LAB7:    t23 = (t4 + 4);
    t24 = *((unsigned int *)t4);
    t25 = *((unsigned int *)t23);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB8;

LAB9:    t31 = *((unsigned int *)t4);
    t32 = (~(t31));
    t33 = *((unsigned int *)t23);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t37, 8);

LAB16:    t38 = (t0 + 7760);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memset(t42, 0, 8);
    t43 = 65535U;
    t44 = t43;
    t45 = (t3 + 4);
    t46 = *((unsigned int *)t3);
    t43 = (t43 & t46);
    t47 = *((unsigned int *)t45);
    t44 = (t44 & t47);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t49 | t43);
    t50 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t50 | t44);
    xsi_driver_vfirst_trans(t38, 0, 15U);
    t51 = (t0 + 7600);
    *((int *)t51) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t22 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB7;

LAB8:    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t27, 0, 8);
    xsi_vlog_unsigned_unary_minus(t27, 16, t30, 16);
    goto LAB9;

LAB10:    t35 = (t0 + 3208);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 16, t27, 16, t37, 16);
    goto LAB16;

LAB14:    memcpy(t3, t27, 8);
    goto LAB16;

}

static void NetDecl_51_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;

LAB0:    t1 = (t0 + 6288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3368);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 15);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 15);
    t15 = (t14 & 1);
    *((unsigned int *)t8) = t15;
    memset(t4, 0, 8);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (~(t17));
    t19 = *((unsigned int *)t7);
    t20 = (t19 & t18);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t16) != 0)
        goto LAB6;

LAB7:    t23 = (t4 + 4);
    t24 = *((unsigned int *)t4);
    t25 = *((unsigned int *)t23);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB8;

LAB9:    t31 = *((unsigned int *)t4);
    t32 = (~(t31));
    t33 = *((unsigned int *)t23);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t37, 8);

LAB16:    t38 = (t0 + 7824);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memset(t42, 0, 8);
    t43 = 65535U;
    t44 = t43;
    t45 = (t3 + 4);
    t46 = *((unsigned int *)t3);
    t43 = (t43 & t46);
    t47 = *((unsigned int *)t45);
    t44 = (t44 & t47);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t49 | t43);
    t50 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t50 | t44);
    xsi_driver_vfirst_trans(t38, 0, 15U);
    t51 = (t0 + 7616);
    *((int *)t51) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t22 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB7;

LAB8:    t28 = (t0 + 3368);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t27, 0, 8);
    xsi_vlog_unsigned_unary_minus(t27, 16, t30, 16);
    goto LAB9;

LAB10:    t35 = (t0 + 3368);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 16, t27, 16, t37, 16);
    goto LAB16;

LAB14:    memcpy(t3, t27, 8);
    goto LAB16;

}

static void NetDecl_52_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 6536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_multiply(t5, 32, t3, 16, t4, 16);
    t2 = (t0 + 7888);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8);
    xsi_driver_vfirst_trans(t2, 0, 31U);
    t10 = (t0 + 7632);
    *((int *)t10) = 1;

LAB1:    return;
}

static void NetDecl_53_3(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 6784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_multiply(t5, 32, t3, 16, t4, 16);
    t2 = (t0 + 7952);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8);
    xsi_driver_vfirst_trans(t2, 0, 31U);
    t10 = (t0 + 7648);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_60_4(char *t0)
{
    char t7[8];
    char t8[8];
    char t10[8];
    char t11[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    int t20;
    char *t21;
    unsigned int t22;
    int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;

LAB0:    t1 = (t0 + 7032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7664);
    *((int *)t2) = 1;
    t3 = (t0 + 7064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t6 = *((char **)t4);
    memset(t7, 0, 8);
    xsi_vlog_signed_multiply(t7, 32, t5, 16, t6, 16);
    t4 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_lshift(t8, 32, t7, 32, t4, 32);
    t9 = (t0 + 5128);
    t13 = (t0 + 5128);
    t14 = (t13 + 72U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng2)));
    t17 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t10, t11, t12, ((int*)(t15)), 2, t16, 32, 1, t17, 32, 1);
    t18 = (t10 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (!(t19));
    t21 = (t11 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t20 && t23);
    t25 = (t12 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t22 = (t19 >> 31);
    t26 = (t22 & 1);
    *((unsigned int *)t7) = t26;
    t29 = *((unsigned int *)t6);
    t31 = (t29 >> 31);
    t32 = (t31 & 1);
    *((unsigned int *)t5) = t32;
    t9 = (t0 + 5128);
    t13 = (t0 + 5128);
    t14 = (t13 + 72U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t8, t15, 2, t16, 32, 1);
    t17 = (t8 + 4);
    t35 = *((unsigned int *)t17);
    t20 = (!(t35));
    if (t20 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t29 = *((unsigned int *)t12);
    t30 = (t29 + 0);
    t31 = *((unsigned int *)t10);
    t32 = *((unsigned int *)t11);
    t33 = (t31 - t32);
    t34 = (t33 + 1);
    xsi_vlogvar_assign_value(t9, t8, t30, *((unsigned int *)t11), t34);
    goto LAB7;

LAB8:    xsi_vlogvar_assign_value(t9, t7, 0, *((unsigned int *)t8), 1);
    goto LAB9;

}

static void Always_65_5(char *t0)
{
    char t6[16];
    char t8[16];
    char t9[16];
    char t12[8];
    char t15[8];
    char t23[16];
    char t24[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    t1 = (t0 + 7280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7680);
    *((int *)t2) = 1;
    t3 = (t0 + 7312);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 16, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_multiply(t6, 34, t3, 16, t4, 16);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = (t0 + 1368U);
    t7 = *((char **)t2);
    xsi_vlog_unsigned_multiply(t8, 34, t5, 16, t7, 16);
    t2 = ((char*)((ng5)));
    t10 = (t0 + 1528U);
    t11 = *((char **)t10);
    t10 = ((char*)((ng6)));
    t13 = (t0 + 1528U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t13 = (t15 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 15);
    t19 = (t18 & 1);
    *((unsigned int *)t15) = t19;
    t20 = *((unsigned int *)t16);
    t21 = (t20 >> 15);
    t22 = (t21 & 1);
    *((unsigned int *)t13) = t22;
    xsi_vlog_mul_concat(t12, 4, 1, t10, 1U, t15, 1);
    xsi_vlogtype_concat(t9, 34, 32, 3U, t12, 4, t11, 16, t2, 12);
    xsi_vlog_unsigned_minus(t23, 34, t8, 34, t9, 34);
    xsi_vlog_unsigned_minus(t24, 34, t6, 34, t23, 34);
    t25 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 34, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t7 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 12);
    *((unsigned int *)t12) = t18;
    t19 = *((unsigned int *)t7);
    t20 = (t19 >> 12);
    *((unsigned int *)t5) = t20;
    t21 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t21 & 65535U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 65535U);
    t10 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 16, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4808);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5128);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    xsi_vlog_get_part_select_value(t8, 33, t5, 32, 0);
    xsi_vlogtype_concat(t6, 34, 34, 2U, t8, 33, t2, 1);
    t7 = ((char*)((ng5)));
    t10 = (t0 + 1688U);
    t11 = *((char **)t10);
    t10 = ((char*)((ng6)));
    t13 = (t0 + 1688U);
    t14 = *((char **)t13);
    memset(t15, 0, 8);
    t13 = (t15 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 15);
    t19 = (t18 & 1);
    *((unsigned int *)t15) = t19;
    t20 = *((unsigned int *)t16);
    t21 = (t20 >> 15);
    t22 = (t21 & 1);
    *((unsigned int *)t13) = t22;
    xsi_vlog_mul_concat(t12, 4, 1, t10, 1U, t15, 1);
    xsi_vlogtype_concat(t9, 34, 34, 3U, t12, 4, t11, 16, t7, 14);
    xsi_vlog_unsigned_add(t23, 34, t6, 34, t9, 34);
    t25 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t25, t23, 0, 0, 33, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t7 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = (t17 >> 14);
    *((unsigned int *)t12) = t18;
    t19 = *((unsigned int *)t7);
    t20 = (t19 >> 14);
    *((unsigned int *)t5) = t20;
    t21 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t21 & 65535U);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 65535U);
    t10 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 16, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 2808U);
    t4 = *((char **)t2);
    xsi_vlog_unsigned_add(t6, 33, t3, 32, t4, 32);
    t2 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t2, t6, 0, 0, 33, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t6, t4, 16);
    t5 = (t4 + 8);
    t19 = *((unsigned int *)t5);
    t20 = (t19 & 1U);
    t17 = t20;
    t7 = (t4 + 12);
    t21 = *((unsigned int *)t7);
    t22 = (t21 & 1U);
    t18 = t22;
    t26 = (t20 != 0);
    if (t26 == 1)
        goto LAB6;

LAB7:    t28 = (t22 != 0);
    if (t28 == 1)
        goto LAB8;

LAB9:    t13 = (t6 + 8);
    t30 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t30 & 3U);
    t14 = (t6 + 12);
    t31 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t31 & 3U);
    t16 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t16, t6, 0, 0, 34, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    xsi_vlog_unsigned_greater(t6, 33, t4, 33, t5, 33);
    t7 = (t6 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t6);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(91, ng0);

LAB19:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB12:    goto LAB2;

LAB6:    t10 = (t6 + 8);
    t27 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t27 | 4294967294U);
    goto LAB7;

LAB8:    t11 = (t6 + 12);
    t29 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t29 | 4294967294U);
    goto LAB9;

LAB10:    xsi_set_current_line(81, ng0);

LAB13:    xsi_set_current_line(82, ng0);
    t10 = (t0 + 2008U);
    t11 = *((char **)t10);
    t10 = (t11 + 4);
    t22 = *((unsigned int *)t10);
    t26 = (~(t22));
    t27 = *((unsigned int *)t11);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(86, ng0);

LAB18:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memcpy(t12, t3, 8);
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t12, 0, 0, 8, 0LL);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(82, ng0);

LAB17:    xsi_set_current_line(83, ng0);
    t13 = (t0 + 1848U);
    t14 = *((char **)t13);
    t13 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t13, t14, 0, 0, 8, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB16;

}


extern void work_m_06603025768180743578_2493783320_init()
{
	static char *pe[] = {(void *)NetDecl_50_0,(void *)NetDecl_51_1,(void *)NetDecl_52_2,(void *)NetDecl_53_3,(void *)Always_60_4,(void *)Always_65_5};
	xsi_register_didat("work_m_06603025768180743578_2493783320", "isim/diverge_pipe_isim_beh.exe.sim/work/m_06603025768180743578_2493783320.didat");
	xsi_register_executes(pe);
}