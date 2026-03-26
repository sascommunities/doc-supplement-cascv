/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: segmentmedimages_ex2                          */
/*   TITLE: Example 2 for PROC SEGMENTMEDIMAGES           */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*   PROCS: SEGMENTMEDIMAGES                              */
/**********************************************************/

proc segmentmedimages data=mylib.torso;
   method kmeans(type=seeded(intensities=(140 3 790 100 576)));
   output out=mylib.mask;
run;

