/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: summarizeimages_ex1                                */
/*   TITLE: Example 1 for PROC SUMMARIZEIMAGES                 */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: SUMMARIZEIMAGES                                    */
/***************************************************************/

proc summarizeimages data=mylib.images;
   image myImage;
run;

