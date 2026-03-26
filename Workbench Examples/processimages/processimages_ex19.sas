/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex19                                 */
/*   TITLE: Example 19 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   mutation type=warp_perspective
      homographyvalues=(0.5234375, 0, 50, -0.10546875, 0.5618, 100, -0.00046875, 0, 1);
   output out=mylib.output_image;
run;

