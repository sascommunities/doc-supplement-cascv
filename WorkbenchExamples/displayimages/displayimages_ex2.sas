/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: displayimages_ex2                                  */
/*   TITLE: Example 2 for PROC DISPLAYIMAGES                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: DISPLAYIMAGES                                      */
/***************************************************************/

proc template;
   define DataLayout MyCustomTemplate;
      Region / columns=4;
         Entry  "ID="  _id_ " TYPE=" _type_;
         Image Image;
      EndRegion;
   end;
run;

proc displayimages data=mylib.images template="MyCustomTemplate";
   var _id_ _type_;
   orderby descending _id_;
   resize height=128 width=128;
run;

