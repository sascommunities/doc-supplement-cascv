/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantimages_ex2                                    */
/*   TITLE: Example 2 for PROC QUANTIMAGES                     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTIMAGES                                        */
/***************************************************************/

proc quantimages data=mylib.input_images;
   quantities blockmeanhash(mode=BLOCK_MEAN_HASH_MODE_1) ahash;
   output out=mylib.quantities copyvars=(_path_);
run;

proc print data=mylib.quantities;
run;

