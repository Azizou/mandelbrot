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
    work_m_05202365579093473344_2203017034_init();
    xilinxcorelib_ver_m_04284627112054182733_3433508335_init();
    xilinxcorelib_ver_m_18166792875774041790_2905387511_init();
    xilinxcorelib_ver_m_17738287534884592592_1661385581_init();
    xilinxcorelib_ver_m_10066368518302646626_2770700864_init();
    work_m_04920115474770924055_2189477654_init();
    work_m_05664305865582128711_0615400731_init();
    work_m_03666622697322997955_0745894577_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_03666622697322997955_0745894577");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
