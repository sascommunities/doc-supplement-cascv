/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: extractobjects_ex3                            */
/*   TITLE: Example 3 for PROC EXTRACTOBJECTS             */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: EXTRACTOBJECTS                                */
/**********************************************************/

data mylib.yolo_annotations;
   set mylib.images;
   _nObjects_=2;

   _Object0_='object1'; _Object0_x=0.2343; _Object0_y=0.2232;
   _Object0_width=0.4486; _Object0_height=0.3437;

   _Object1_='object2'; _Object1_x=0.6473; _Object1_y=0.4241;
   _Object1_width=0.4397; _Object1_height=0.3281;
run;

proc print data=mylib.yolo_annotations;
run;

proc extractobjects data=mylib.yolo_annotations
   coordinateformat=yolo maxobjects=2 method=highlight;
   output out=mylib.objects;
run;

