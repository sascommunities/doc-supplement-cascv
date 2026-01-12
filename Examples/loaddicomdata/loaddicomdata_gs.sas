/***************************************************************/
/*          S A S   S A M P L E   L I B R A R Y                */
/*                                                             */
/*    NAME: loaddicomdata_gs                                   */
/*   TITLE: Getting Started Example for PROC LOADDICOMDATA     */
/* PRODUCT: Machine Learning                                   */
/*  SYSTEM: ALL                                                */
/*    KEYS:                                                    */
/*   PROCS: LOADDICOMDATA                                      */
/***************************************************************/

proc loaddicomdata libref=mylib path='path/to/dicom/sample.dcm';
   output out=mylib.dicom_data addkeywords=('PatientAge' 'PatientSex');
run;

proc print data=mylib.dicom_data;
run;

