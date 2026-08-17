REPORT z_day1_calculator.

DATA lv_a TYPE i.
DATA lv_b TYPE i.

DATA lv_sum  TYPE i.
DATA lv_diff TYPE i.
DATA lv_prod TYPE i.
DATA lv_div  TYPE i.

lv_a = 25.
lv_b = 5.

lv_sum  = lv_a + lv_b.
lv_diff = lv_a - lv_b.
lv_prod = lv_a * lv_b.
lv_div  = lv_a / lv_b.

WRITE: / '===== CALCULATOR =====',
       / 'A =', lv_a,
       / 'B =', lv_b,
       / 'Addition       :', lv_sum,
       / 'Subtraction    :', lv_diff,
       / 'Multiplication :', lv_prod,
       / 'Division       :', lv_div.
