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

proc fedsql sessref=mysess;
   create table joined as
      select src._id_, src._image_ as vcimage, mask._image_ as vcmask
      from source_image as src, mask_image as mask
      where src._id_ = mask._id_;
quit;

proc processmedimages data=mylib.joined;
   binaryopspecific image=vcmask inputbackground=128 outputbackground=10
      type=mask;
   biomedimage vcimage;
   output out=mylib.output_image encoding=PIXEL addVars=(channeltype);
run;

