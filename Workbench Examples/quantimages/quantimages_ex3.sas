/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantimages_ex3                                    */
/*   TITLE: Example 3 for PROC QUANTIMAGES                     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTIMAGES                                        */
/***************************************************************/

proc quantimages data=mylib.input_images;
   quantities marrhildrethhash(alpha=2 scale=4) phash;
   output out=mylib.quantities copyvars=(_path_);
run;

proc print data=mylib.quantities;
run;

