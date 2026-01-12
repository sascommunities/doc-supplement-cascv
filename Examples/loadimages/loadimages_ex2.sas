/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_ex2                                     */
/*   TITLE: Example 2 for PROC LOADIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mylib pathfile='list.txt';
   output out=mylib.images;
run;

proc print data=mylib.images;
run;

