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

proc fedsql sessref=mysess;
   create table coco_annotations as
   select
      *,
      2 as "_nObjects_",

      'bird0' as "_Object0_", 0.92 as "_P_Object0_",
      4 as "_Object0_xmin", 23 as "_Object0_ymin",
      205 as "_Object0_xmax", 177 as "_Object0_ymax",

      'bird1' as "_Object1_", 0.84 as "_P_Object1_",
      191 as "_Object1_xmin", 116 as "_Object1_ymin",
      388 as "_Object1_xmax", 263 as "_Object1_ymax"
   from
      images;
quit;

proc print data=mylib.coco_annotations;
run;

proc extractobjects data=mylib.coco_annotations
   coordinateformat=coco maxobjects=2 method=highlight;
   output out=mylib.objects;
run;

