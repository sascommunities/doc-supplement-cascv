/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex7                               */
/*   TITLE: Example 7 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

data mylib.imrt(replace=yes);
   set mylib.imdata;
   length _image_ varchar(*);

   set mylib.rtdata;
run;

proc processmedimages data=mylib.imrt;
   roi2mask pixelintensity=image;
   output out=mylib.output_image convert;
run;

