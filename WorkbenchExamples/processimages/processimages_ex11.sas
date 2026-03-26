/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex11                                 */
/*   TITLE: Example 11 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   customfilter kernelwidth=2 kernelheight=3 kernelvalues=(1, 1, -2, -2, 1, 1);
   output out=mylib.output_image;
run;

