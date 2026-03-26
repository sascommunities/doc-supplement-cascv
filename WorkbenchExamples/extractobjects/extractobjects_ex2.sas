/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: extractobjects_ex2                            */
/*   TITLE: Example 2 for PROC EXTRACTOBJECTS             */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: EXTRACTOBJECTS                                */
/**********************************************************/

data mylib.coco_annotations;
   set mylib.images;
   _nObjects_=2;

   _Object0_='bird0'; _P_Object0_=0.92;
   _Object0_xmin=4; _Object0_ymin=23;
   _Object0_xmax=205; _Object0_ymax=177;

   _Object1_='bird1'; _P_Object1_=0.84;
   _Object1_xmin=191; _Object1_ymin=116;
   _Object1_xmax=388; _Object1_ymax=263;
run;

proc print data=mylib.coco_annotations;
run;

proc extractobjects data=mylib.coco_annotations
   coordinateformat=coco maxobjects=2 method=highlight;
   output out=mylib.objects;
run;

