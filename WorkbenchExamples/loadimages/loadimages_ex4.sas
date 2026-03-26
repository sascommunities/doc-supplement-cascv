/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_ex4                                     */
/*   TITLE: Example 4 for PROC LOADIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='myDICOMDirectory' series(dicom) recurse;
   output out=mylib.medical_images;
run;

proc print data=mylib.medical_images;
run;

