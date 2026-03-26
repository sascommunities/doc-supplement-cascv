/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: displayimages_details1                             */
/*   TITLE: Details Example 1 for PROC DISPLAYIMAGES           */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: DISPLAYIMAGES                                      */
/***************************************************************/

proc displayimages data=mylib.images(firstobs=2 obs=4);
run;

