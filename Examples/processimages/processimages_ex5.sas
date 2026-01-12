/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex5                                  */
/*   TITLE: Example 5 for PROC PROCESSIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   normalize type=minmax alpha=50 beta=200;
   output out=mylib.output_image;
run;

