/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: augmentimages_ex4                             */
/*   TITLE: Example 4 for PROC AUGMENTIMAGES              */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: AUGMENTIMAGES                                 */
/**********************************************************/

proc augmentimages data=mylib.image;
   mutate fliphorizontal rotateleft pyramidup darken;
   output out=mylib.output writerandomly;
run;

