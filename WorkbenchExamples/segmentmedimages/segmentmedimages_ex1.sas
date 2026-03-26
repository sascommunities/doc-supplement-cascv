/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: segmentmedimages_ex1                          */
/*   TITLE: Example 1 for PROC SEGMENTMEDIMAGES           */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*   PROCS: SEGMENTMEDIMAGES                              */
/**********************************************************/

proc segmentmedimages data=mylib.torso;
   method kmeans(type=basic(regions=2));
   output out=mylib.mask encoding=pixel;
run;

