REPORT z_day1_rectangle.

DATA lv_length    TYPE i.
DATA lv_width     TYPE i.
DATA lv_area      TYPE i.
DATA lv_perimeter TYPE i.

lv_length = 10.
lv_width  = 5.

lv_area      = lv_length * lv_width.
lv_perimeter = 2 * ( lv_length + lv_width ).

WRITE: / '===== RECTANGLE =====',
       / 'Length    :', lv_length,
       / 'Width     :', lv_width,
       / 'Area      :', lv_area,
       / 'Perimeter :', lv_perimeter.
