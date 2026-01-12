/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex13                                 */
/*   TITLE: Example 13 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   lineartrans method=local_constant_norm;
   normalize type=minmax alpha=0 beta=255;
   rescale type=to_8u;
   output out=mylib.output_image encoding=jpg;
run;

