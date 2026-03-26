/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_gs                                      */
/*   TITLE: Getting Started Example for PROC LOADIMAGES        */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='myImages/sample.jpg';
   output out=mylib.images;
run;

proc print data=mylib.images;
run;

