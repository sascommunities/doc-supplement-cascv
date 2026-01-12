/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex8                                  */
/*   TITLE: Example 8 for PROC PROCESSIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   morphology method=gradient kernelwidth=5 kernelheight=5;
   output out=mylib.output_image;
run;

