Youtube: SAS Programming Tutorials TrenoVision


/*SAS;
1970

Informatica ,

Data Management
Analysis
Reports 

*/

SAS Contains 5 WINDOWS:

1.Editor - use to write a program 

2.Log    - To see the execution status 
        4 colors 
        Black : simple shows the codes which we wrote in Editor Window
        Blue  : Excection details like summary date time etc.
        Red   : syntax errors]
        Green : Warning 

3.Output - reports will displyed in Output window
           This is the only window after execution of report is redirected to Output window
           
4.Explorer - libraries and files 

5.results - To navigate output window
            Multiples executated reports are available in results window  



Ends with Semicolon only (;)

data new;                 after DATA (---)  --- = dataset Name
input name$ age;          Input order & cards order must be same Then only SAS can understand
cards;
simha 24 male
run;                      Close with RUN step only 
proc print data = new;     Blue colors key words are SAS Keywords 
run;


/* SAS file 
 there are two tytpes of files 
 1. white  - datasets
             columns - variables
             rows    - observations
           
 2. yellow - catelog 
 
 
 SAS have TWO steps:
 
 1. data step
             start with DATA 
             ends with  RUN
             
    DATASET have 1. DATA portion  - data portion
                 2. Descriptor Portion - proc content ( No.of obs, variables,time etc.)
             
 2. Proc Step ( Proc means procedure which process the DATA set based procedure we give )
  
  
  
  
 As a SAS programers (ROLE)
 
 Work flow
 rawdata --> Data step --> Dataset--> Process through PROC Step--> Generate Reports
 
 To retrive all contents of SASHELP library
 
 */
proc contents data =  sashelp._all_;
run;

Ctrl + F = to find the file
ctrl + C = Copy
ctrl + X = Cut
ctrl + V = paste


/* Libraries ;
Permanent Libraries - sashelp, sasuser
Temporary Libraries - Work (default library)

   Temporary is different and default (work) is different 
   we can create temporary libraries 
   default dataset will redirected to work library

            
Permanent - Whatever the data we save in these (sashelp, sasuser) library will not delete untile
            unless we delete  */

data sashelp.new;

/*            
Temporary - Whatever the data we save in temporary library it will delete once we close the SAS version
*/
 data new;  (default work library)
 libname simha 'c:/simha/hema/baby' ( Temparary library)
  
 
 libname ( is open statement  - we won't start with data, proc )
 
 libname <dataset name> '<data location>';
 
 libname simha 'c:/simha/hema/baby' ( Temparary library)
 
 
 
 To create Permanent Library:
 
 GO to ______ give the name 
 browge the file location
 and the select enable startup than ok --> the permanent library will create.
 
 dataset names are 2 levels
 1. one level name  - only dataset name         EX: NEW
 2. Two level name  - Contains lib name         EX: sashelp.new
 
 To close SAS : write "Bye" then enter 
 
 
 




            





 
 
            
 


