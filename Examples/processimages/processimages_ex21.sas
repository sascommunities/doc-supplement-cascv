/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex21                                 */
/*   TITLE: Example 21 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   boxfilter kernelheight=5 kernelwidth=5;
   output out=mylib.output_image;
run;

