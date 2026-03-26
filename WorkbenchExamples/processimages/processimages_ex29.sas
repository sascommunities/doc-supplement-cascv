/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex29                                 */
/*   TITLE: Example 29 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   binaryopspecific type=multiply image=_image2_ dimension=_dimension2_
      resolution=_resolution2_ imageformat=_imageFormat2_ scale=1/255;
   output out=mylib.output_image copyvars=_channelType_;
run;

