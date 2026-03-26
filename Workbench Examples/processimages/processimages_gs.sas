/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_gs                                   */
/*   TITLE: Getting Started Example for PROC PROCESSIMAGES     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc loadimages libref=mydirlib path="path/to/images/sample.jpg";
   output out=mylib.input_image;
run;

proc processimages data=mylib.input_image;
   resize width=400 height=400;
   output out=mylib.resized_image;
run;

