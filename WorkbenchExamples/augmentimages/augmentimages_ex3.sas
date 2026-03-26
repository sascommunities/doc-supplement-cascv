/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: augmentimages_ex3                             */
/*   TITLE: Example 3 for PROC AUGMENTIMAGES              */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: AUGMENTIMAGES                                 */
/**********************************************************/

proc augmentimages data=mylib.image;
   crop width=250 height=250 sweep(step=250);
   output out=mylib.output_patches;
run;

proc augmentimages data=mylib.output_patches;
   mutate fliphorizontal flipvertical rotateleft
      rotateright pyramidup pyramiddown lighten darken;
   output out=mylib.output;
run;

