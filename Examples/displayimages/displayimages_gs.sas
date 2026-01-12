/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: displayimages_gs                                   */
/*   TITLE: Getting Started Example for PROC DISPLAYIMAGES     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: DISPLAYIMAGES                                      */
/***************************************************************/

proc loadimages libref=mylib path='myImages/';
   output out=mylib.images;
run;

proc displayimages data=mylib.images;
run;

