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
    work_m_14211595945733324701_2493783320_init();
    work_m_05202365579093473344_2203017034_init();
    xilinxcorelib_ver_m_04284627112054182733_3433508335_init();
    xilinxcorelib_ver_m_18166792875774041790_2905387511_init();
    xilinxcorelib_ver_m_17738287534884592592_1661385581_init();
    xilinxcorelib_ver_m_10066368518302646626_2770700864_init();
    work_m_04920115474770924055_0115168226_init();
    work_m_16317688634636289791_0615400731_init();
    work_m_12556049860000548784_2381339282_init();
    work_m_11811169857204546130_1919348379_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_11811169857204546130_1919348379");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}