/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex23                                 */
/*   TITLE: Example 23 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   medianfilter kernelsize=3;
   output out=mylib.output_image;
run;

