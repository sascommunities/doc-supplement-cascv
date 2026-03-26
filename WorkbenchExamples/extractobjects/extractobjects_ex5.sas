/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: extractobjects_ex5                            */
/*   TITLE: Example 5 for PROC EXTRACTOBJECTS             */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: EXTRACTOBJECTS                                */
/**********************************************************/

proc extractobjects data=mylib.yolo_annotations
   coordinateformat=yolo maxobjects=2 method=crop;
   output out=mylib.objects format=multiplecolumns;
run;

proc print data=mylib.objects;
run;

proc displayimages data=mylib.objects;
   image _image0_;
run;

proc displayimages data=mylib.objects;
   image _image1_;
run;

