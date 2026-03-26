/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: augmentimages_ex5                             */
/*   TITLE: Example 5 for PROC AUGMENTIMAGES              */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: AUGMENTIMAGES                                 */
/**********************************************************/

proc augmentimages data=mylib.image;
   occlude height=200 width=200 sweep(step=100);
   output out=mylib.output;
run;

