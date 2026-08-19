REPORT z_day2_if_else.

DATA lv_age TYPE i.

lv_age = 22.

IF lv_age GT 18.

  WRITE 'Adult'.

ELSEIF lv_age EQ 18.

  WRITE 'Exactly 18'.

ELSE.

  WRITE 'Minor'.

ENDIF.
