/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex4                                  */
/*   TITLE: Example 4 for PROC PROCESSIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   laplacian kernelsize=1 delta=0 scale=1;
   output out=mylib.output_image;
run;

