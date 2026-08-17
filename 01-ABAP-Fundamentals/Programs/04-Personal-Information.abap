REPORT z_day1_personal_info.

DATA lv_name   TYPE string.
DATA lv_age    TYPE i.
DATA lv_college TYPE string.
DATA lv_branch TYPE string.

lv_name    = 'Pruthvi'.
lv_age     = 22.
lv_college = 'JNTUA'.
lv_branch  = 'Computer Science'.

WRITE: / '===== PERSONAL INFORMATION =====',
       / 'Name   :', lv_name,
       / 'Age    :', lv_age,
       / 'College:', lv_college,
       / 'Branch :', lv_branch.
