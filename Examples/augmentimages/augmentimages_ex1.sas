/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: augmentimages_ex1                             */
/*   TITLE: Example 1 for PROC AUGMENTIMAGES              */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: AUGMENTIMAGES                                 */
/**********************************************************/

proc augmentimages data=mylib.image;
   crop width=250 height=250 sweep(step=250);
   resize width=100 height=100;
   output out=mylib.output;
run;

