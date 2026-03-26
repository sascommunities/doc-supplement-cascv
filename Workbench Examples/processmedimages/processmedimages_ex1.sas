/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex1                               */
/*   TITLE: Example 1 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc processmedimages data=mylib.input_image convert;
   crop imagesize=(5,2);
   output out=mylib.cropped encoding=PIXEL addVars=(width height depth);
run;

proc print data=mylib.cropped;
run;

