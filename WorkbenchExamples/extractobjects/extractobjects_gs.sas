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

proc loadimages libref=mydirlib path='path/to/birds.png';
   output out=mylib.images addvars=(width height);
run;
proc print data=mylib.images;
run;
proc displayimages data=mylib.images;
run;

data mylib.images_annotations;
   set mylib.images;
   _nObjects_=2;

   _Object0_='bird0'; _Object0_x=4; _Object0_y=23;
   _Object0_width=201; _Object0_height=144;

   _Object1_='bird1'; _Object1_x=191; _Object1_y=116;
   _Object1_width=197; _Object1_height=147;
run;

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

