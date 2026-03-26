/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex9                                  */
/*   TITLE: Example 9 for PROC PROCESSIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   gaussianfilter kernelwidth=21 kernelheight=21;
   output out=mylib.output_image;
run;

proc processimages data=mylib.input_image;
   gaussianfilterspecific kernelwidth="kWidthCol" kernelheight="kHeightCol";
   output out=mylib.output_image;
run;

