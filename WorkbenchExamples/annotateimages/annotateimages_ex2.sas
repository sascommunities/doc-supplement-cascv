/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: annotateimages_ex2                                 */
/*   TITLE: Example 2 for PROC ANNOTATEIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: ANNOTATEIMAGES                                     */
/***************************************************************/

proc annotateimages data=mylib.merged;
   segmentation _image2_ / colormap="autumn" transparency=50;
   output out=mylib.output_image;
run;

