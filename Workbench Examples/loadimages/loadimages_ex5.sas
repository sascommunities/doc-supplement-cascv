/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loadimages_ex5                                     */
/*   TITLE: Example 5 for PROC LOADIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADIMAGES                                         */
/***************************************************************/

proc loadimages libref=mydirlib path='myDICOMDirectory/000000.dcm';
   output out=mylib.medical_images
      addVars=(WIDTH HEIGHT DEPTH)
      addTags=('0008,0060' '0010,0010')
      addKeywords=('Manufacturer' 'PatientSex');
run;

proc print data=mylib.medical_images;
run;

