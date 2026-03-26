/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantimages_ex1                                    */
/*   TITLE: Example 1 for PROC QUANTIMAGES                     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTIMAGES                                        */
/***************************************************************/

proc quantimages data=mylib.input_images;
   quantities mean std minimum maximum pixelcount;
   output out=mylib.quantities copyvars=(_path_ _id_);
run;

proc print data=mylib.quantities;
run;

