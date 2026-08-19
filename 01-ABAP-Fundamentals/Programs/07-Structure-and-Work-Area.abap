REPORT z_day2_structure.

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE i,
  END OF lty_data.

DATA ls_data TYPE lty_data.

ls_data-id = 1.
ls_data-name = 'Pruthvi'.
ls_data-age = 22.

WRITE: / 'ID   :', ls_data-id,
       / 'Name :', ls_data-name,
       / 'Age  :', ls_data-age.
