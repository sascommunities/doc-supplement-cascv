/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: matchimages_ex1                                    */
/*   TITLE: Example 1 for PROC MATCHIMAGES                     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: MATCHIMAGES                                        */
/***************************************************************/

proc matchimages data=mylib.images;
   queryimage path='sample.png' libref=querylib;
   method template;
   output out=mylib.temp_match threshold=0.15 highlight;
run;

