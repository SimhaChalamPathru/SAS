/* T-test
The SAS procedure named PROC TTEST is used to carry out t tests on a single variable and pair of variables.
Syntax 
PROC TTEST DATA = dataset;
VAR variable;
CLASS Variable;
PAIRED Variable_1 * Variable_2;

Example-1 */

PROC SQL;
create table CARS1 as
SELECT make, type, invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc ttest data = cars1 alpha = 0.05 h0 = 0;
 	var horsepower;
   run;

/* Paied T-test 

Example - 2*/

proc ttest data = cars1 ;
   paired weight*length;
   run;

/* two sample t-test
 Example - 3 */

 proc ttest data = cars1 sides = 2 alpha = 0.05 h0 = 0;
   title "Two sample t-test example";
   class make; 
   var horsepower;
   run;

/* Correlation Analysis 
SAS provides the procedure PROC CORR to find the correlation coefficients between a pair of variables in a dataset
Syntax
PROC CORR DATA = dataset options;
VAR variable;

Example - 1 */

PROC SQL;
create table CARS1 as
SELECT invoice,make, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;

proc corr data = cars1 ;
VAR horsepower weight ;
BY make;
run;

/* Correlation Between All the variable 
Example - 2 */

proc corr data = cars1 ;
run;

/* Correlation Matrix 
Example - 3 */

proc corr data = cars1 plots = matrix ;
VAR horsepower weight ;
run;

/* Linear Regression 
In SAS the procedure PROC REG is used to find the linear regression model between two variables
Syntax 
PROC REG DATA = dataset;
MODEL variable_1 = variable_2;

Example - 1 */

PROC SQL;
create table CARS1 as
SELECT invoice, horsepower, length, weight
   FROM 
   SASHELP.CARS
   WHERE make in ('Audi','BMW')
;
RUN;
proc reg data = cars1;
model horsepower = weight ;
run;

/* Chi-sq test
SAS uses PROC FREQ along with the option chisq to determine the result of Chi-Square test
Syntax 
PROC FREQ DATA = dataset;
TABLES variables 
/CHISQ TESTP = (percentage values);

Percentage values : In the TESTP statement the precentage level of the variable 

Example -1 */

proc freq data = sashelp.cars;
tables type 
/chisq 
testp = (0.20 0.12 0.18 0.10 0.25 0.15);

run;

/* Two way Chi-sq 

Example-2 */

proc freq data = sashelp.cars;
tables type*origin 
/chisq 
;
run;


/* Fisher Exact Test 
Fisher's exact test is a statistical test used to determine if there are nonrandom associations
between two categorical variables.In SAS this is carried out using PROC FREQ.

Syntax: 
PROC FREQ DATA = dataset ;
TABLES Variable_1*Variable_2 / fisher;

Example - 1 */
data temp;
input  Test1 Test2 Result @@;
datalines;
1 1 3 1 2 1 2 1 1 2 2 3
;
proc freq; 
tables Test1*Test2 / fisher;
run;

/* Repeated Measure analysis 
In the repeated measures design, each trial represents the measurement of the same characteristic under a different condition.
In SAS PROC GLM is used to carry out repeated measure analysis.

Syntax: 
PROC GLM DATA = dataset;
   CLASS variable;
   MODEL variables = group / NOUNI;
   REPEATED TRIAL n;

Example - 1 */

DATA temp;
   INPUT person group $ r1 r2 r3 r4;
CARDS;
1 A  2  1  6  5
2 A  5  4 11  9
3 A  6 14 12 10
4 A  2  4  5  8
5 A  0  5 10  9
6 B  9 11 16 13
7 B  12 4 13 14
8 B  15 9 13  8
9 B  6  8 12  5
10 B 5  7 11  9
;
RUN;

PROC PRINT DATA = temp ;
RUN;

   PROC GLM DATA = temp;
   CLASS group;
   MODEL r1-r4 = group / NOUNI ;
   REPEATED trial 5;
RUN;

/* ANOVA ONE WAY 
In SAS it is done using PROC ANOVA

Syntax :
PROC ANOVA dataset ;
CLASS Variable;
MODEL Variable1 = variable2 ;
MEANS ;

dataset is the name of the dataset.

CLASS       : gives the variables the variable used as classification variable.
MODEL       : defines the model to be fit using certain variables from the dataset.
Variable_1 and Variable_2 : are the variable names of the dataset used in analysis.
MEANS       :defines the type of computation and comparison of means.

Example - 1 */

PROC ANOVA DATA = SASHELP.CARS;
CLASS type;
MODEL horsepower = type;
RUN;

/* ANOVA with MEANS 
the model by applying the MEANS statement in which we use Turkey's Studentized method to compare the mean values of various car types

Example - 2 */

PROC ANOVA DATA = SASHELP.CARS;
CLASS type;
MODEL horsepower = type;
MEANS type / tukey lines;
RUN;

