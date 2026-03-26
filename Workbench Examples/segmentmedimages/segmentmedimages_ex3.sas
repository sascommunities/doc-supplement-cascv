/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: segmentmedimages_ex3                          */
/*   TITLE: Example 3 for PROC SEGMENTMEDIMAGES           */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*   PROCS: SEGMENTMEDIMAGES                              */
/**********************************************************/

proc segmentmedimages data=mylib.torso;
   method regiongrowing(type=basic(seed=((6 9)) thresholdlow=-75
      thresholdhigh=60));
   output out=mylib.mask copyvars=(_path_ _id_);
run;

