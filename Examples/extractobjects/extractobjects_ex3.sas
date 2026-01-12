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

proc fedsql sessref=mysess;
   create table yolo_annotations as
   select
      *,
      2 as "_nObjects_",

      'object1' as "_Object0_",
      0.2343 as "_Object0_x", 0.2232 as "_Object0_y",
      0.4486 as "_Object0_width", 0.3437 as "_Object0_height",

      'object2' as "_Object1_",
      0.6473 as "_Object1_x", 0.4241 as "_Object1_y",
      0.4397 as "_Object1_width", 0.3281 as "_Object1_height"
   from
      images;
quit;

proc print data=mylib.yolo_annotations;
run;

proc extractobjects data=mylib.yolo_annotations
   coordinateformat=yolo maxobjects=2 method=highlight;
   output out=mylib.objects;
run;

