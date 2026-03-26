/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: flattenimages_gs                                   */
/*   TITLE: Getting Started Example for PROC FLATTENIMAGES     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: FLATTENIMAGES                                      */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/sample.jpg';
   output out=mylib.wide_image addvars=(WIDTH HEIGHT CHANNELCOUNT);
run;

proc flattenimages data=mylib.wide_image width=5 height=5 numchannels=GRAYSCALE;
   output out=mylib.flat_image;
run;

proc print data=mylib.flat_image;
run;

