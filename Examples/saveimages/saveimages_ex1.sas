/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: saveimages_ex1                                     */
/*   TITLE: Example 1 for PROC SAVEIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SAVEIMAGES                                         */
/***************************************************************/

proc loadimages libref=mylib path='path/to/sample.jpg';
  output out=mylib.input_image;
run;

proc saveimages libref=mylib data=mylib.input_image path='output/';
run;

