/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantmedimages_ex1                                 */
/*   TITLE: Example 1 for PROC QUANTMEDIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTMEDIMAGES                                     */
/***************************************************************/

proc quantmedimages data=mylib.input_image;
   quantities histogram(bins=5 min=0 max=100);
   output out=mylib.quantities;
run;

proc print data=mylib.quantities;
run;

