/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processimages_ex24                                 */
/*   TITLE: Example 24 for PROC PROCESSIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: PROCESSIMAGES                                      */
/***************************************************************/

proc processimages data=mylib.input_image;
   rescale type=to_8u scale=2 delta=-128;
   output out=mylib.output_image;
run;

