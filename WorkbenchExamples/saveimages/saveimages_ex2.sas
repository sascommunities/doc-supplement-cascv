/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: saveimages_ex2                                     */
/*   TITLE: Example 2 for PROC SAVEIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SAVEIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/sample.jpg';
   output out=mylib.input_image;
run;

proc saveimages libref=mydirlib data=mylib.input_image path='output/';
   image _image_ / path=_path_;
run;

