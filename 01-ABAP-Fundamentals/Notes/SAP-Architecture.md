
---

# 11. `Notes/SAP-Architecture.md`

```markdown
# SAP Architecture

## Basic Architecture

```text
User
 ↓
Presentation Layer
 ↓
Application Layer
 ↓
Database Layer
Presentation Layer

The presentation layer is where users interact with SAP.

Examples:

SAP GUI
SAP Fiori
Web applications
Application Layer

The application server executes business logic.

ABAP programs execute in this layer.

Database Layer

The database stores application and business data.

Modern SAP S/4HANA systems use SAP HANA.

SAP GUI

SAP GUI is a graphical interface used to interact with SAP systems.

Important transactions:

Transaction	Purpose
SE38	ABAP programs
SE11	ABAP Dictionary
SE80	Object Navigator
SE24	Classes
SE37	Function Modules
ST22	ABAP Dumps
