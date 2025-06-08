%let pgm=utl-update-a-row-in-a-table-using-sas-sql-update-and-r-sqlite-sqldf-update;

%stop_submission;

Update a row in a table using sas sql update and r sqlite sqldf update

github
https://tinyurl.com/5b89j6a3
https://github.com/rogerjdeangelis/utl-update-a-row-in-a-table-using-sas-sql-update-and-r-sqlite-sqldf-update

related to
https://tinyurl.com/2zpazetf
https://communities.sas.com/t5/New-SAS-User/Using-substr-in-Proc-SQL-update/m-p/772303#M31053

Problem replace 99 in table have with 3

/**************************************************************************************************************************/
/*      INPUT                  |     PROCESS                       |         OUTPUT                                       */
/*      =====                  |     =======                       |         ======                                       */
/* SD1.HAVE                    |  1 SAS SQL                        |   SD1.HAVE                                           */
/*                             |  =========                        |                                                      */
/*  C2 C1                      |                                   |    C2 C1                                             */
/*                             |  proc sql;                        |                                                      */
/*  a   1                      |    update                         |    a   1                                             */
/*  b   2                      |      sd1.have                     |    b   2                                             */
/*  c  99 => update to 3       |    set                            |    c   3 => updated to 3                             */
/*  d   4                      |      c1=3                         |    d   4                                             */
/*                             |    where c2='c'                   |                                                      */
/* ptions                      |  ;quit;                           |                                                      */
/* validvarname=upcase;        |                                   |                                                      */
/* ibname sd1 "d:/sd1";        |  ---------------------------------|------------------------------------------------------*/-
/* ata sd1.have;               |  2 R SQL                          |                                                      */
/* nput c1 c2$;                |  =======                          |   R                                                  */
/* ards4;                      |                                   |                                                      */
/*  a                          |  %utl_rbeginx;                    |   C2  C1                                             */
/*  b                          |  parmcards4;                      |                                                      */
/* 9 c                         |  library(haven)                   |    a   1                                             */
/*  d                          |  library(sqldf)                   |    b   2                                             */
/* ;;;                         |  source("c:/oto/fn_tosas9x.R")    |    c   3                                             */
/* un;quit;                    |  options(sqldf.dll =              |    d   4                                             */
/*                             |   "d:/dll/sqlean.dll")            |                                                      */
/*                             |  have<-read_sas(                  |   SAS                                                */
/*                             |   "d:/sd1/have.sas7bdat")         |                                                      */
/*                             |  print(have)                      |   SD1.HAVE                                           */
/*                             |  want <- sqldf(c(                 |                                                      */
/*                             |    "UPDATE                        |    C2  C1                                            */
/*                             |        have                       |                                                      */
/*                             |     SET                           |    a    1                                            */
/*                             |        c1=3                       |    b    2                                            */
/*                             |     WHERE                         |    c    3                                            */
/*                             |         c2='c'"                   |    d    4                                            */
/*                             |   ,"SELECT                        |                                                      */
/*                             |        *                          |                                                      */
/*                             |     FROM                          |                                                      */
/*                             |        main.have"                 |                                                      */
/*                             |  ))                               |                                                      */
/*                             |  want;                            |                                                      */
/*                             |  fn_tosas9x(                      |                                                      */
/*                             |        inp    = want              |                                                      */
/*                             |       ,outlib ="d:/sd1/"          |                                                      */
/*                             |       ,outdsn ="want"             |                                                      */
/*                             |       )                           |                                                      */
/*                             |  ;;;;                             |                                                      */
/*                             |  %utl_rendx;                      |                                                      */
/*                             |                                   |                                                      */
/*                             |  proc print data=sd1.want;        |                                                      */
/*                             |  run;quit;                        |                                                      */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
