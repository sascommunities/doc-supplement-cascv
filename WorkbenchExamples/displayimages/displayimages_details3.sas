/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: displayimages_details3                             */
/*   TITLE: Details Example 3 for PROC DISPLAYIMAGES           */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: DISPLAYIMAGES                                      */
/***************************************************************/

proc template;
   define DataLayout ACAS.DisplayImages.Default;
      Region / columns=2 column_widths=(50% 50%);
         Image Image;
      EndRegion;
   end;
run;

