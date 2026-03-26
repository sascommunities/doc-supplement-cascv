/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: condenseimages_ex2                                 */
/*   TITLE: Example 2 for PROC CONDENSEIMAGES                  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: CONDENSEIMAGES                                     */
/***************************************************************/

proc condenseimages data=mylib.flat_images width=3 height=3;
   numchannels=COLOR groupedchannels;
   output out=mylib.wide_image;
run;

