/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: quantmedimages_gs                                  */
/*   TITLE: Getting Started Example for PROC QUANTMEDIMAGES    */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: QUANTMEDIMAGES                                     */
/***************************************************************/

proc loadimages libref=myimglib path='path/to/image.nii';
   output out=mylib.input_image;
run;

proc quantmedimages data=mylib.input_image;
   quantities minimum maximum mean std;
   output out=mylib.quantities;
run;

proc print data=mylib.quantities;
run;

