/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: condenseimages_ex5                                 */
/*   TITLE: Example 5 for PROC CONDENSEIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: CONDENSEIMAGES                                     */
/***************************************************************/

proc condenseimages data=mylib.flat_images width=2 height=2 numchannels=COLOR;
   input c1 c2 c3 c4-12;
   output out=mylib.wide_image;
run;

