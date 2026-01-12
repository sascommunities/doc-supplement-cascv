/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: segmentmedimages_gs                                */
/*   TITLE: Getting Started Example for PROC SEGMENTMEDIMAGES  */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SEGMENTMEDIMAGES                                   */
/***************************************************************/

proc loadimages libref=mylib path='path/to/lung_nodule.nii';
   output out=mylib.torso;
run;

proc print data=mylib.torso;
run;

proc processmedimages data=mylib.torso;
   output out=mylib.torso_2d encoding=jpg export;
run;

proc print data=mylib.torso_2d;
run;

proc displayimages data=mylib.torso_2d(obs=4);
run;

proc segmentmedimages data=mylib.torso;
   method regiongrowing(type=connected(multiplier=2 seed=((17 24 0) (16 31 0)
      (13 25 0))));
   output out=mylib.mask;
run;

proc print data=mylib.mask;
run;

proc processmedimages data=mylib.mask;
   output out=mylib.mask_2d encoding=jpg export;
run;

proc print data=mylib.mask_2d;
run;

proc displayimages data=mylib.mask_2d(obs=4);
run;

