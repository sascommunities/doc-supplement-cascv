/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantmedimages_ex2                                 */
/*   TITLE: Example 2 for PROC QUANTMEDIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTMEDIMAGES                                     */
/***************************************************************/

proc quantmedimages data=mylib.input_image region=component;
   quantities content(usespacing) perimeter boundingbox;
   biolabel type=basic connectivity=vertex;
   output out=mylib.quantities;
run;

proc print data=mylib.quantities;
run;

