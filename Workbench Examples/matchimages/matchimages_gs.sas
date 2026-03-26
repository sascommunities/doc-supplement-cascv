/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: matchimages_gs                                     */
/*   TITLE: Getting Started Example for PROC MATCHIMAGES       */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: MATCHIMAGES                                        */
/***************************************************************/

proc loadimages libref=mydirlib path='myImages/';
   output out=mylib.images;
run;

proc print data=mylib.images;
run;

proc matchimages data=mylib.images;
   queryimage libref=mydirlib path='query.jpg';
   output out=mylib.match_metrics;
run;

proc print data=mylib.match_metrics;
run;

