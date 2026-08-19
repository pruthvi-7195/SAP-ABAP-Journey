REPORT z_day2_internal_table.

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE i,
  END OF lty_data.

DATA lt_data TYPE TABLE OF lty_data.
DATA ls_data TYPE lty_data.

ls_data-id = 1.
ls_data-name = 'Pruthvi'.
ls_data-age = 22.

APPEND ls_data TO lt_data.

CLEAR ls_data.

ls_data-id = 2.
ls_data-name = 'Rahul'.
ls_data-age = 24.

APPEND ls_data TO lt_data.

CLEAR ls_data.

ls_data-id = 3.
ls_data-name = 'Anil'.
ls_data-age = 20.

APPEND ls_data TO lt_data.

LOOP AT lt_data INTO ls_data.

  WRITE: / ls_data-id,
           ls_data-name,
           ls_data-age.

ENDLOOP.
