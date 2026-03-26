/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loaddicomdata_ex1                                  */
/*   TITLE: Example 1 for PROC LOADDICOMDATA                   */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADDICOMDATA                                      */
/***************************************************************/

proc loaddicomdata libref=mydirlib path='sample.dcm';
   output out=mylib.dicom_data
      addkeywords=('PatientAge' 'ProcedureCodeSequence' 'BodyPartExamined')
      addtags=('0010|0040' '0018,9321{1}0018,9328');
run;

proc print data=mylib.dicom_data;
run;

