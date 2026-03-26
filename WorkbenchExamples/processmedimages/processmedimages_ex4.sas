/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex4                               */
/*   TITLE: Example 4 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc processmedimages data=mylib.biomed;
   clamp type=basic low=0 high=50;
   output out=mylib.clamped encoding=PIXEL addVars=(channeltype);
run;

proc print data=mylib.clamped;
run;

