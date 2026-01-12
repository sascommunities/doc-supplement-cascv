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

proc loadimages libref=mylib path='path/to/image/lungCT.jpg';
   output out=mylib.source_image;
run;

proc loadimages libref=mylib path='path/to/image/segmentation_image.png';
   output out=mylib.segmentation_image;
run;

proc fedsql sessref=mysess;
   create table joined_table as
      select src._id_, src._image_ as source_image, seg._image_ as seg_image
      from source_image as src, segmentation_image as seg
      where src._id_ = seg._id_;
quit;

proc annotateimages data=mylib.joined_table;
   image source_image;
   segmentation seg_image / colorMap="jet" transparency=20 inputbackground=0;
   output out=mylib.annotated_images;
run;

