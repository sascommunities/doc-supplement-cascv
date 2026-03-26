/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: augmentimages_gs                                   */
/*   TITLE: Getting Started Example for PROC AUGMENTIMAGES     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: AUGMENTIMAGES                                      */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/sample.jpg';
   output out=mylib.image;
run;

proc augmentimages data=mylib.image;
   mutate darken rotateright fliphorizontal;
   resize width=416 height=416;
   output out=mylib.augmented_images;
run;

proc displayimages data=mylib.augmented_images;
run;

