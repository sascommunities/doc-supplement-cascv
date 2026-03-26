/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_ex3                                     */
/*   TITLE: Example 3 for PROC LOADIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='myImages/' recurse;
   output out=mylib.images labellevels=-1 addVars=(WIDTH HEIGHT);
run;

proc print data=mylib.images;
run;

