/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: saveimages_ex4                                     */
/*   TITLE: Example 4 for PROC SAVEIMAGES                      */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: SAVEIMAGES                                         */
/***************************************************************/

proc loadimages libref=mylib path='path/to/PatientsDICOM' recurse;
   output out=mylib.patient_images labellevels=1;
run;

proc saveimages libref=mylib data=mylib.patient_images path='PatientsSave'
   labellevels=1 encoding=jpg series(digits=4 start=1);
run;

