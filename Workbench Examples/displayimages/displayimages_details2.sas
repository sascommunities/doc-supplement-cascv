/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: displayimages_details2                             */
/*   TITLE: Details Example 2 for PROC DISPLAYIMAGES           */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: DISPLAYIMAGES                                      */
/***************************************************************/

ods listing close;
ods html5 options(bitmap_mode="inline");
proc displayimages data=mylib.images;
run;
ods html5 close;
ods listing;

