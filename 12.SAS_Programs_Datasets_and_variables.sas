/* SAS Program  */

/* 1. Series of Insructions written in SAS language */
/* 2. File name extension '.sas ' */
/* 3. Rules for writting a SAS Program  */

/*   I. Every Statement end with a semicolon (;) */
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

/* III. Statements can continue in two lines  */
/*  IV. Statements can be on the same line as other statements */

DaTa DemO; VAr_1 = 30; VaR_2 = 40; RuN;

/*  V. Statement can be start in any column */

data demo4;
      var_1 = 20;
      var_2 = 30;
  run;
  
/*  VI. Adding Coments  */  
/*     a. Single line comments start with '*' and end with ";"         */

*      b. Multiple line comments start with "/*" and end with '*/' ;

/* SAS have different colors for each codes it is used to identifying */


/* 3. SAS datasets names extension ".sas7bdat" */
/* 4. Variables, Observations, Data Portion and Description Portion */
/* 5. DATA types */
/*    a. Charecter  ( default SAS Consider Numberic )*/
/*    b. Numeric  ( add $ to specify Charecter) */

/* 6. Missing values  */
/*   a. Variables or charecter appears Blank */
/*   b. Numeric appears dot "." */

/* 7.Descripter Portion  */
/*   Proc Contents output   */
/*     It contains  */
/*     a. Name of the Dataset */
/*     b. Creation and Modification data and time */
/*     c. Numbers of variables and observation  */
/*     d. Complete path of the data set */
/*     e. varaibles */
/*     f. data type */



/* Variables and Variables naming rules  */

/* Creating and Modifying the variables in SAS is very easy */
/* Variablename =  expression */

data test:
   var_a = 25;  *for Numeric;
   var_b = "Simha"; *for Charecter;
   run;
  
/* Some other Rules: */
/* 1. Can be Max 32 bytes or charectes only  */
/* 2. Can variable name start with letter or Underscore(_) */
/* 3. Can only contains numbers, letters or underscore(_) */
/* 4. Names can contains lower and upper case letters  */
/*   Eg: Variable, vAriBle, VARIABLE all are same  */
    





  

  
