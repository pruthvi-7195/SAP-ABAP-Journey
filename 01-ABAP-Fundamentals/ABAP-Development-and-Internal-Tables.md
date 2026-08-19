# Day 2 — ABAP Development Environment & Internal Tables

## 📅 Learning Day

Day 2

---

# 🎯 Objectives

Today I learned:

- SAP BTP
- ABAP Cloud
- SAP BTP ABAP Environment
- Steampunk
- SAP system landscape
- Development, Quality and Production systems
- Transport Requests
- Packages
- SAP naming conventions
- Save, Check and Activate
- ABAP class structure
- Variables
- Constants
- TYPES
- DATA
- Structures
- Work Areas
- Internal Tables
- APPEND
- LOOP AT
- WHERE
- IF / ELSEIF / ELSE
- CASE
- IS INITIAL
- IS NOT INITIAL
- LINE_EXISTS
- Comparison operators

---

# 1. SAP BTP

## What is SAP BTP?

BTP stands for:

Business Technology Platform.

SAP BTP is SAP's cloud platform that provides capabilities for:

- Application development
- Database management
- Integration
- Analytics
- Automation

For ABAP development, the important concept is:

SAP BTP
    |
    └── ABAP Environment
            |
            └── Cloud ABAP Development

---

# 2. ABAP Cloud

ABAP Cloud is SAP's modern cloud development model for developing
cloud-ready applications using ABAP.

Important characteristics:

- Cloud-ready development
- Released APIs
- Clean-core approach
- Modern ABAP development
- Controlled access to SAP objects

---

# 3. SAP BTP ABAP Environment

The SAP BTP ABAP Environment provides an ABAP development environment
on SAP Business Technology Platform.

It is used for developing modern cloud-based ABAP applications.

---

# 4. Steampunk

Steampunk is the nickname historically associated with the
SAP BTP ABAP Environment.

Interview answer:

Steampunk is the nickname historically used for SAP's cloud-based
ABAP environment, now referred to as the SAP BTP ABAP Environment.

---

# 5. SAP System Landscape

A typical SAP system landscape contains:

Development
     ↓
Quality
     ↓
Production

Common abbreviations:

DEV → QAS → PRD

## Development System

Developers create and modify objects here.

Examples:

- ABAP Programs
- Classes
- Tables
- CDS Views
- Functions
- Enhancements

## Quality System

Used for testing the developed functionality.

## Production System

The live system used for actual business operations.

---

# 6. Transport Request

A transport request collects development or configuration changes
and allows them to be moved between SAP systems in a controlled way.

Typical flow:

DEV
 ↓
Transport Request
 ↓
QAS
 ↓
Testing
 ↓
PRD

Interview answer:

A transport request is a mechanism used to collect and move SAP
development or configuration changes from one system to another
while maintaining controlled and consistent changes.

---

# 7. Packages

A package is a logical container used to organize related
SAP development objects.

A package may contain:

- Programs
- Classes
- Interfaces
- Dictionary objects
- Other repository objects

---

# 8. SAP Naming Conventions

Customer-specific objects traditionally use:

Z
Y

Examples:

ZCL_EMPLOYEE
ZEMPLOYEE_REPORT
ZCUSTOMER_TABLE

This helps distinguish customer-specific developments from
SAP standard objects.

---

# 9. Save → Check → Activate

An important ABAP development workflow is:

SAVE
 ↓
CHECK
 ↓
ACTIVATE

## Save

Shortcut:

Ctrl + S

Stores the changes.

## Check

Shortcut:

Ctrl + F2

Checks the code for syntax errors and inconsistencies.

## Activate

Shortcut:

Ctrl + F3

Activates the development object so that the active version can
be used or executed.

---

# 10. Useful Development Shortcuts

| Shortcut | Purpose |
|---|---|
| Ctrl + S | Save |
| Ctrl + F2 | Check |
| Ctrl + F3 | Activate |
| Ctrl + 7 | Comment / Uncomment |
| Shift + F1 | Pretty Print |
| Ctrl + Shift + A | Global Search |
| F3 | Navigate to Definition |

---

# 11. ABAP Class Structure

An ABAP class has two major parts:

1. Definition
2. Implementation

Example:

CLASS zcl_example DEFINITION.

  PUBLIC SECTION.

    METHODS:
      meth1,
      meth2.

ENDCLASS.

CLASS zcl_example IMPLEMENTATION.

  METHOD meth1.

  ENDMETHOD.

  METHOD meth2.

  ENDMETHOD.

ENDCLASS.

## Class Definition

Defines what the class contains.

## Class Implementation

Contains the implementation of methods.

---

# 12. Variables

Variables store values during program execution.

Example:

DATA lv_age TYPE i.

lv_age = 22.

Naming convention:

lv_

means local variable.

Example:

DATA lv_name TYPE string.

---

# 13. Constants

Constants contain values that should not change during program execution.

Example:

CONSTANTS lc_name TYPE char10 VALUE 'ABAP'.

Naming convention:

lc_

means local constant.

---

# 14. TYPES

TYPES creates a type or template.

Example:

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE char2,
  END OF lty_data.

This defines the structure of a record.

TYPES does not create an actual data object containing a value.

---

# 15. DATA

DATA creates an actual data object.

Example:

DATA ls_data TYPE lty_data.

Now ls_data is an actual structure.

---

# 16. TYPES vs DATA

TYPES:

Creates a template/type.

DATA:

Creates an actual data object.

Think:

TYPES
  ↓
Blueprint / Template

DATA
  ↓
Actual object

---

# 17. Structure

A structure can contain multiple fields representing one logical record.

Example:

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE char2,
  END OF lty_data.

The structure contains:

ID
Name
Age

---

# 18. Work Area

A work area is a data object used to hold and process one record.

Example:

DATA ls_data TYPE lty_data.

Naming convention:

ls_

means local structure/work area.

Example:

ls_data-id = 1.
ls_data-name = 'S'.
ls_data-age = '29'.

---

# 19. Internal Table

An internal table stores multiple records in memory during
program execution.

Example:

DATA lt_data TYPE TABLE OF lty_data.

Naming convention:

lt_

means local internal table.

Concept:

Structure
    ↓
One record

Internal Table
    ↓
Multiple records

---

# 20. Structure vs Internal Table

| Structure | Internal Table |
|---|---|
| Represents one record | Contains multiple records |
| ls_ convention | lt_ convention |
| Work area | Collection of records |
| Used for individual record processing | Used for multiple record processing |

---

# 21. Internal Table Declaration — Method 1

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE char2,
  END OF lty_data.

DATA lt_data TYPE TABLE OF lty_data.

Here:

lty_data → Structure type

lt_data → Internal table

---

# 22. Internal Table Declaration — Method 2

A separate table type can be created.

TYPES:
  BEGIN OF lty_data,
    id   TYPE i,
    name TYPE char10,
    age  TYPE char2,
  END OF lty_data.

TYPES tt_data TYPE TABLE OF lty_data.

DATA lt_data TYPE tt_data.

Here:

lty_data → Structure type

tt_data → Internal table type

lt_data → Actual internal table

---

# 23. APPEND

APPEND adds a record to the end of an internal table.

Example:

APPEND ls_data TO lt_data.

Flow:

Work Area
    ↓
APPEND
    ↓
Internal Table

---

# 24. LOOP AT

LOOP AT processes records of an internal table one by one.

Example:

LOOP AT lt_data INTO ls_data.

  WRITE: / ls_data-id,
           ls_data-name,
           ls_data-age.

ENDLOOP.

The records are processed one at a time.

---

# 25. LOOP AT with WHERE

A WHERE condition can restrict which records are processed.

Example:

LOOP AT lt_data INTO ls_data
  WHERE age GT '18'.

  WRITE: / ls_data-id,
           ls_data-name,
           ls_data-age.

ENDLOOP.

Only records satisfying the condition are processed.

---

# 26. Comparison Operators

| Operator | Meaning |
|---|---|
| = | Equal |
| EQ | Equal |
| <> | Not equal |
| NE | Not equal |
| > | Greater than |
| GT | Greater than |
| >= | Greater than or equal |
| GE | Greater than or equal |
| < | Less than |
| LT | Less than |
| <= | Less than or equal |
| LE | Less than or equal |

---

# 27. IF Statement

Basic syntax:

IF condition.

ENDIF.

Example:

IF lv_age GT 18.

  WRITE 'Adult'.

ENDIF.

---

# 28. IF / ELSEIF / ELSE

Example:

IF lv_age GT 18.

  WRITE 'Adult'.

ELSEIF lv_age EQ 18.

  WRITE 'Exactly 18'.

ELSE.

  WRITE 'Minor'.

ENDIF.

---

# 29. IS INITIAL

Checks whether a data object contains its initial value.

For an internal table:

IF lt_data IS INITIAL.

  WRITE 'Table is empty'.

ENDIF.

---

# 30. IS NOT INITIAL

Checks whether the data object contains a non-initial value.

Example:

IF lt_data IS NOT INITIAL.

  WRITE 'Table contains records'.

ENDIF.

---

# 31. LINE_EXISTS

LINE_EXISTS can check whether a matching row exists in an internal table.

Example:

IF line_exists( lt_data[ id = 2 ] ).

  WRITE 'ID 2 exists'.

ENDIF.

Difference:

IS INITIAL
    ↓
Checks whether table is empty.

LINE_EXISTS
    ↓
Checks whether a matching row exists.

---

# 32. CASE Statement

CASE can be used when there are multiple possible values.

Example:

CASE lv_grade.

  WHEN 'A'.
    WRITE 'Excellent'.

  WHEN 'B'.
    WRITE 'Good'.

  WHEN 'C'.
    WRITE 'Average'.

  WHEN OTHERS.
    WRITE 'Other grade'.

ENDCASE.

---

# 33. Counting Records

A loop can be used to manually count records.

DATA lv_cnt TYPE i.

LOOP AT lt_data INTO ls_data.

  lv_cnt = lv_cnt + 1.

ENDLOOP.

---

# ⭐ Most Important Concept

TYPES
  ↓
Template

DATA ls_data TYPE lty_data
  ↓
One record / Work Area

DATA lt_data TYPE TABLE OF lty_data
  ↓
Multiple records / Internal Table

APPEND
  ↓
Add record

LOOP AT
  ↓
Process records

---

# 🎯 Interview Questions

## 1. What is SAP BTP?

SAP Business Technology Platform is SAP's cloud platform providing
capabilities for application development, database management,
integration, analytics and other technology services.

## 2. What is ABAP Cloud?

ABAP Cloud is SAP's modern cloud development model for building
cloud-ready applications using ABAP.

## 3. What is Steampunk?

Steampunk is the nickname historically associated with the
SAP BTP ABAP Environment.

## 4. What is a system landscape?

A system landscape is the arrangement of SAP systems used for
development, testing and production, commonly represented as
DEV → QAS → PRD.

## 5. What is a transport request?

A transport request collects SAP development or configuration
changes and allows them to be moved between systems in a controlled
manner.

## 6. What is a package?

A package is a logical container used to organize related SAP
development objects.

## 7. Why do customer objects traditionally start with Z or Y?

Z and Y namespaces are traditionally used for customer-specific
developments and help distinguish them from SAP standard objects.

## 8. What is a structure?

A structure is a data type containing multiple fields that can
represent one logical record.

## 9. What is a work area?

A work area is a data object commonly used to hold and process
one record at a time.

## 10. What is an internal table?

An internal table is an in-memory ABAP data object used to store
and process multiple records during program execution.

## 11. Difference between structure and internal table?

A structure represents one record, while an internal table contains
multiple records.

## 12. Difference between TYPES and DATA?

TYPES defines a type or template, while DATA creates an actual
data object.

## 13. What does APPEND do?

APPEND adds a record to the end of an internal table.

## 14. What does LOOP AT do?

LOOP AT processes internal table records one by one.

## 15. What is IS INITIAL?

It checks whether a data object contains its initial value.

## 16. What is LINE_EXISTS?

LINE_EXISTS checks whether a matching row exists in an internal table.

---

# 🧠 Day 2 Key Takeaways

- SAP BTP is SAP's cloud technology platform.
- ABAP Environment provides cloud-based ABAP development.
- Steampunk is the historical nickname for the BTP ABAP Environment.
- SAP systems commonly follow DEV → QAS → PRD.
- Transport requests move controlled changes between systems.
- Packages organize development objects.
- Customer objects traditionally use Z/Y namespaces.
- TYPES creates templates.
- DATA creates data objects.
- A structure represents one record.
- A work area is commonly used for processing one record.
- An internal table stores multiple records.
- APPEND adds records.
- LOOP AT processes records.
- WHERE filters records during a loop.
- IF and CASE control program execution.

---

# 🔜 Next

Day 3 will build on internal tables and move toward more
practical ABAP programming and data processing.
