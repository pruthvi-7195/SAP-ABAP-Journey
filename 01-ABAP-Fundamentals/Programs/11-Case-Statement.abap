REPORT z_day2_case.

DATA lv_grade TYPE c LENGTH 1.

lv_grade = 'A'.

CASE lv_grade.

  WHEN 'A'.
    WRITE 'Excellent'.

  WHEN 'B'.
    WRITE 'Good'.

  WHEN 'C'.
    WRITE 'Average'.

  WHEN 'D'.
    WRITE 'Needs Improvement'.

  WHEN OTHERS.
    WRITE 'Invalid Grade'.

ENDCASE.
