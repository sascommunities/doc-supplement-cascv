/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex6                               */
/*   TITLE: Example 6 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc processmedimages data=mylib.source_image convert;
   biolabel type=basic;
   output out=mylib.face_labeled_image;
run;

proc processmedimages data=mylib.source_image convert;
   biolabel type=basic connectivity=vertex;
   output out=mylib.vertex_labeled_image;
run;

