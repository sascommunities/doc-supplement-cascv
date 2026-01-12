/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: saveimages_ex3                                     */
/*   TITLE: Example 3 for PROC SAVEIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SAVEIMAGES                                         */
/***************************************************************/

proc loadimages libref=mylib path='path/to/images' recurse;
   output out=mylib.labeled_images labellevels=2;
run;

proc saveimages libref=mylib data=mylib.labeled_images path='path/to/output/'
   labellevels=2;
run;

