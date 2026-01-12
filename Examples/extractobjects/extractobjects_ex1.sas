/**********************************************************/
/*          S A S   S A M P L E   L I B R A R Y           */
/*                                                        */
/*    NAME: extractobjects_ex1                            */
/*   TITLE: Example 1 for PROC EXTRACTOBJECTS             */
/* PRODUCT: Machine Learning                              */
/*  SYSTEM: ALL                                           */
/*    KEYS:                                               */
/*    PROC: EXTRACTOBJECTS                                */
/**********************************************************/

proc extractobjects data=mylib.images_annotations
   coordinateformat=rect maxobjects=1;
   output out=mylib.objects;
run;

