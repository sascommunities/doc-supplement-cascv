/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: annotateimages_gs                                  */
/*   TITLE: Getting Started Example for PROC ANNOTATEIMAGES    */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: ANNOTATEIMAGES                                     */
/***************************************************************/

proc loadimages libref=mydirlib path='path/to/image/lungCT.jpg';
   output out=mylib.source_image;
run;

proc loadimages libref=mydirlib path='path/to/image/segmentation_image.png';
   output out=mylib.segmentation_image;
run;

data mylib.joined_table(keep=source_image seg_image _id_ replace=yes);
   set mylib.source_image;
   length source_image varchar(*);
   source_image=_image_;

   set mylib.segmentation_image;
   length seg_image varchar(*);
   seg_image=_image_;
run;

proc annotateimages data=mylib.joined_table;
   image source_image;
   segmentation seg_image / colorMap="jet" transparency=20 inputbackground=0;
   output out=mylib.annotated_images;
run;

