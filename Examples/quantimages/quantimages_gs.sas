/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantimages_gs                                     */
/*   TITLE: Getting Started Example for PROC QUANTIMAGES       */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTIMAGES                                        */
/***************************************************************/

proc loadimages libref=mylib path='path/to/images';
   output out=mylib.input_images;
run;

proc quantimages data=mylib.input_images;
   quantities maximum minimum;
   output out=mylib.quantities copyvars=(_path_);
run;

proc print data=mylib.quantities;
run;

