/*
In SAS arithmetic mean is calculated using PROC MEANS
*/
*Syntax;
Proc Means data = dataset;
Class Variables;
var variables;

*Dataset   : Is the name of the dataset used;
*Variables : are the names of the variables from the dataset;

*Example-1;

proc means data=sashelp.cars mean sum maxdec=2;
run;

* Means of select variables;

PROC MEANS DATA = sashelp.CARS mean SUM MAXDEC=2 ;
var horsepower invoice EngineSize;
RUN;

* Means by Class;

PROC MEANS DATA = sashelp.CARS mean SUM MAXDEC=2;
class make type;
var horsepower;
RUN;

/*
In SAS the SD values is measured using PROC MEAN as well as PROC SURVEYMEANS
*/
*1. Syntax:  Using PROC MEANS ;

PROC means DATA = dataset STD;

*Example-1;

PROC SQL;
create table CARS1 as
SELECT make, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc means data = CARS1 STD;
run;

*1. Syntax:  Using PROC SURVEYMEANS ;

PROC SURVEYMEANS options statistic-keywords ;
BY variables ;
CLASS variables ;
VAR variables ;

*BY : Indicates the variables used to create  group of observations.;
*CLASS : Indicates the variables used for categorical variables;
*VAR : Indicates the variables for which SD will be calculated;

*Example-1 ;

proc surveymeans data = CARS1 STD;
class type;
var type horsepower;
ods output statistics = rectangle;   /*the ODS OUTPUT statement puts all output objects that have the */
run;                                 /*same output-path into one SAS data set, regardless of any conflicting variables in the output objects.*/
proc print data = rectangle;
run;

*Example-2 (Using BY option);

proc surveymeans data = CARS1 STD;
var horsepower;
BY make;
ods output statistics = rectangle;
run;
proc print data = rectangle;
run;

/* FREQYUENCY */
*SAS provides a procedure called PROC FREQ to calculate the frequency distribution of data points in a data set*/

*Syntax;

PROC FREQ DATA = Dataset ;
TABLES Variable_1 ;
BY Variable_2 ;

* variavle_1 : Is the name of the dataset whose frequency distribution needs to be calculated;
* Varaible_2 : IS the variable which categorised the frequency dtribution results;

* Example-1;
PROC FREQ DATA = cars1 ;
TABLES make ;
BY type ;

*Example-2 : Single variable Frequency distribution ;
PROC SQL;
create table CARS1 as
SELECT make, model, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc FREQ data = CARS1 ;
tables horsepower; 
by make;
run;

* Example-3 : Multiple Variable Frequency Distribution ;

proc FREQ data = CARS1 ;
tables make type; 
run;

* Example-4 : Frequency Distribution with Weight ;

proc FREQ data = CARS1 ;
tables make type; 
weight horsepower;
run;



