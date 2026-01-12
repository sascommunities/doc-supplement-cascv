/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex14                                 */
/*   TITLE: Example 14 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   pad method=constant b=0 g=0 r=0 left=30 right=30 top=30 bottom=30;
   output out=mylib.output_image;
run;

