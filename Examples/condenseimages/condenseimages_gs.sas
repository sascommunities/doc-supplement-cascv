/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: condenseimages_gs                                  */
/*   TITLE: Getting Started Example for PROC CONDENSEIMAGES    */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: CONDENSEIMAGES                                     */
/***************************************************************/

proc loadimages libref=mylib path='path/to/images/sample.jpg';
   output out=mylib.input_image addvars=(WIDTH HEIGHT CHANNELCOUNT);
run;

proc flattenimages data=mylib.input_image width=32 height=32 numchannels=COLOR;
   output out=mylib.flat_image;
run;

proc print data=mylib.flat_image;
run;

proc condenseimages data=mylib.flat_image width=32 height=32 numchannels=COLOR;
   output out=mylib.wide_image;
run;

proc print data=mylib.wide_image;
run;

