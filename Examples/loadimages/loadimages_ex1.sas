/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_ex1                                     */
/*   TITLE: Example 1 for PROC LOADIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mylib path='sample.jpg';
   output out=mylib.image;
run;

proc print data=mylib.image;
run;

