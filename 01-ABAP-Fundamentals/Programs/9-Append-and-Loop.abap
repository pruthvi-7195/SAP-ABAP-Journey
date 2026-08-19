REPORT z_day2_append_loop.

TYPES:
  BEGIN OF lty_student,
    id    TYPE i,
    name  TYPE char10,
    marks TYPE i,
  END OF lty_student.

DATA:
  lt_student TYPE TABLE OF lty_student,
  ls_student TYPE lty_student.

ls_student-id = 1.
ls_student-name = 'Pruthvi'.
ls_student-marks = 85.

APPEND ls_student TO lt_student.

CLEAR ls_student.

ls_student-id = 2.
ls_student-name = 'Rahul'.
ls_student-marks = 78.

APPEND ls_student TO lt_student.

CLEAR ls_student.

ls_student-id = 3.
ls_student-name = 'Anil'.
ls_student-marks = 92.

APPEND ls_student TO lt_student.

LOOP AT lt_student INTO ls_student.

  WRITE: / 'ID:', ls_student-id,
           'Name:', ls_student-name,
           'Marks:', ls_student-marks.

ENDLOOP.
