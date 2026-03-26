/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex2                               */
/*   TITLE: Example 2 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc processmedimages data=mylib.input_image convert;
   rescale type=CHANNELTYPE_8U;
   histogrameq alpha=.9 beta=.9 radius=10;
   output out=mylib.processed encoding=PIXEL addVars=(channeltype);
run;

proc print data=mylib.processed;
run;

