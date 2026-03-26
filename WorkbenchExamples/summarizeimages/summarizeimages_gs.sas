/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: summarizeimages_gs                                 */
/*   TITLE: Getting Started Example for PROC SUMMARIZEIMAGES   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: SUMMARIZEIMAGES                                    */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/images';
   output out=mylib.images;
run;

proc summarizeimages data=mylib.images;
run;

