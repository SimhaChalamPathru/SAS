/* SAS Program 

1. Series of Insructions written in SAS language
2. File name extension '.sas '
3. Rules for writting a SAS Program 
  I. Every Statement end with a semicolon (;) */
data demo;
var_1 = 30;
var_2 = 40;
run;

/* /*   II. Statements can be UPPER CASE or LOWER CASE ( It is not a Case sensitive except variable names in tables) 
UPPER CASE */

DATA DEMO;
VAR_1 = 30;
VAR_2 = 40;
RUN;

/* LOWER CASE */

data demo;
var_1 = 30;
var_2 = 40;
run;

/* MIXED CASE */

DaTa DemO;
VAr_1 = 30;
VaR_2 = 40;
RuN;
/* ( It is not a Case sensitive except variable names in tables) */

/* III. Statements can continue in two lines 
    IV. 
DaTa DemO; VAr_1 = 30; VaR_2 = 40; RuN;
