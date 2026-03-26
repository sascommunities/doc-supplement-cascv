/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex3                               */
/*   TITLE: Example 3 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc processmedimages data=mylib.input_image convert;
   pad type=CONSTANT constant=1 dimensions=(-1, 1, -2, 2)
      sizes=(128, 128, 128, 128);
   output out=mylib.padded encoding=PIXEL addVars=(width height channeltype);
run;

proc print data=mylib.padded;
run;

