/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: flattenimages_ex3                                  */
/*   TITLE: Example 3 for PROC FLATTENIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: FLATTENIMAGES                                      */
/***************************************************************/

proc flattenimages data=mylib.images width=2 height=2 numchannels=COLOR;
   output out=mylib.flat_image groupchannels;
run;

