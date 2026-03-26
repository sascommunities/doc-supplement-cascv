/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_gs                                */
/*   TITLE: Getting Started Example for PROC PROCESSMEDIMAGES  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/sample.tif';
   output out=mylib.input_image addvars=(width height channelcount channeltype);
run;

proc processmedimages data=mylib.input_image convert;
   crop imagesize=(2,3);
   output out=mylib.imported convert;
run;

proc print data=mylib.imported;
run;

