/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex10                                 */
/*   TITLE: Example 10 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   bilateralfilter diameter=13 sigmacolor=30 sigmaspace=30;
   convertcolor type=color2gray;
   laplacian kernelsize=1 delta=0 scale=1;
   output out=mylib.output_image;
run;

