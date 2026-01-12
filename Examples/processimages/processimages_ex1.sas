/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex1                                  */
/*   TITLE: Example 1 for PROC PROCESSIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   crop width=100 height=100 x=400 y=400;
   output out=mylib.output_image;
run;

