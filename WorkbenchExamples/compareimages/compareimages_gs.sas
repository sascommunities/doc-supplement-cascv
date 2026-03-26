/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: compareimages_gs                                   */
/*   TITLE: Getting Started Example for PROC COMPAREIMAGES     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: COMPAREIMAGES                                      */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/images';
   output out=mylib.source_images;
run;

proc print data=mylib.source_images;
run;

proc loadimages libref=mydirlib path='path/to/sample2.png';
   output out=mylib.reference_image;
run;

proc print data=mylib.reference_image;
run;

proc compareimages data=mylib.source_images referencedata=mylib.reference_image;
   output out=mylib.compare_metrics;
run;

proc print data=mylib.compare_metrics;
run;

