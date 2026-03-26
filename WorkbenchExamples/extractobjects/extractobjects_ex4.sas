/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: extractobjects_ex4                            */
/*   TITLE: Example 4 for PROC EXTRACTOBJECTS             */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: EXTRACTOBJECTS                                */
/**********************************************************/

proc extractobjects data=mylib.coco_annotations
   coordinateformat=coco maxobjects=2 method=crop;
   output out=mylib.objects format=multiplerows;
run;

proc print data=mylib.objects;
run;

proc displayimages data=mylib.objects;
run;

