/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: extractobjects_gs                                  */
/*   TITLE: Getting Started Example for PROC EXTRACTOBJECTS    */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: EXTRACTOBJECTS                                     */
/***************************************************************/

proc loadimages libref=mylib path='path/to/birds.png';
   output out=mylib.images addvars=(width height);
run;
proc print data=mylib.images;
run;
proc displayimages data=mylib.images;
run;

proc fedsql sessref=mysess;
   create table images_annotations as
   select
      *,
      2 as "_nObjects_",

      'bird0' as "_Object0_",
      4 as "_Object0_x", 23 as "_Object0_y",
      201 as "_Object0_width", 144 as "_Object0_height",

      'bird1' as "_Object1_",
      191 as "_Object1_x", 116 as "_Object1_y",
      197 as "_Object1_width", 147 as "_Object1_height"
   from
      images;
quit;

proc print data=mylib.images_annotations;
run;

proc extractobjects data=mylib.images_annotations
   coordinateformat=rect maxobjects=2;
   output out=mylib.objects;
run;

proc print data=mylib.objects;
run;
proc displayimages data=mylib.objects;
run;

