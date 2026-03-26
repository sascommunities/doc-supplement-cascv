/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: segmentmedimages_ex4                          */
/*   TITLE: Example 4 for PROC SEGMENTMEDIMAGES           */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*   PROCS: SEGMENTMEDIMAGES                              */
/**********************************************************/

proc segmentmedimages data=mylib.torso;
   method watershed(type=isolated(seed1=(20 20 0 0) seed2=(0 0 0 0)
      region1intensity=255 region2intensity=0) threshold=0.005);
   output out=mylib.mask;
run;

