/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: compareimages_ex2                             */
/*   TITLE: Example 2 for PROC COMPAREIMAGES              */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*   PROCS: COMPAREIMAGES                                 */
/**********************************************************/

proc compareimages data=mylib.source_images referencedata=mylib.reference_image;
   pairing pairall;
   method combinedchannels;
   output out=mylib.compare_metrics;
run;

proc print data=mylib.compare_metrics;
run;

