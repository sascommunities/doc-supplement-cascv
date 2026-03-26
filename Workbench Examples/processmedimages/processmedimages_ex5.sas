/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: processmedimages_ex5                               */
/*   TITLE: Example 5 for PROC PROCESSMEDIMAGES                */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*    PROC: PROCESSMEDIMAGES                                   */
/***************************************************************/

data mylib.joined(keep=vcimage vcmask _id_ replace=yes);
   set mylib.source_image;
   length vcimage varchar(*);
   vcimage=_image_;

   set mylib.mask_image;
   length vcmask varchar(*);
   vcmask=_image_;
run;

proc processmedimages data=mylib.joined;
   binaryopspecific image=vcmask inputbackground=128 outputbackground=10
      type=mask;
   biomedimage vcimage;
   output out=mylib.output_image encoding=PIXEL addVars=(channeltype);
run;

