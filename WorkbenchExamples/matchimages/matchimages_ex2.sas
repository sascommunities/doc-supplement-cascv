/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: matchimages_ex2                                    */
/*   TITLE: Example 2 for PROC MATCHIMAGES                     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: MATCHIMAGES                                        */
/***************************************************************/

proc matchimages data=mylib.images;
   queryimage path='sample_rotated.png' libref=querylib;
   method descriptor(type=ORB_BRISK thresholdratio=0.5);
   output out=mylib.desc_match threshold=0.15 highlight;
run;

