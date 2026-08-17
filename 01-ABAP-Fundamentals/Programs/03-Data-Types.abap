REPORT z_day1_data_types.

DATA lv_number TYPE i.
DATA lv_name   TYPE string.
DATA lv_grade  TYPE c LENGTH 1.
DATA lv_date   TYPE d.
DATA lv_time   TYPE t.

lv_number = 100.
lv_name   = 'ABAP'.
lv_grade  = 'A'.

WRITE: / 'Number:', lv_number,
       / 'Name:', lv_name,
       / 'Grade:', lv_grade,
       / 'Date:', lv_date,
       / 'Time:', lv_time.
