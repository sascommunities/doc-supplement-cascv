/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: annotateimages_ex1                                 */
/*   TITLE: Example 1 for PROC ANNOTATEIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: ANNOTATEIMAGES                                     */
/***************************************************************/

proc annotateimages data=mylib.joined_table;
   lines shapes / b=0 g=128 r=255 thickness=2;
   points shapes / b=0 g=0 r=255 radius=2;
   output out=mylib.output_image;
run;

