/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: saveimages_gs                                      */
/*   TITLE: Getting Started Example for PROC SAVEIMAGES        */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SAVEIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/sample.jpg';
   output out=mylib.input_image addvars=(WIDTH HEIGHT CHANNELCOUNT);
run;

proc saveimages libref=mydirlib data=mylib.input_image path='output/';
run;

