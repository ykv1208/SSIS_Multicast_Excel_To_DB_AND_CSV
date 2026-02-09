SSIS_Multicast_Excel_To_DB_AND_CSV
📌 Project Overview

This project demonstrates an end-to-end SSIS ETL pipeline that reads data from three Excel source files, performs sorting and merging transformations, and loads the final dataset into two destinations in parallel using the SSIS Multicast transformation:

✅ Local SQL Server Database

✅ CSV Flat File Output

🎯 Project Objective

Design an SSIS package that:

Reads data from three Excel files

Sorts all input data by ID

Merges Excel 1 + Excel 2, then merges with Excel 3

Sends output to:

SQL Server (sorted by Month)

CSV file (sorted by First Name)

🛠 Tools & Technologies

SSIS

Microsoft Excel

SQL Server

Flat File (CSV)

Visual Studio (SSDT)

📊 Source Files

Three Excel files used as input:

Excel1

<img width="679" height="391" alt="image" src="https://github.com/user-attachments/assets/13e9748b-b8d8-42d7-a2b3-7a7c898badc2" />

Excel2

<img width="658" height="392" alt="image" src="https://github.com/user-attachments/assets/2d48a7fa-85fe-4402-ba7f-8ccce68c4539" />

Excel3

<img width="662" height="408" alt="image" src="https://github.com/user-attachments/assets/dabe8941-c7f8-456d-b019-ed2366576960" />

Each contains a common ID column used for sorting and merging.

🧩 Package Architecture

The SSIS package is divided into:

Control Flow

<img width="1919" height="982" alt="image" src="https://github.com/user-attachments/assets/b04617d6-7fc1-40af-b99d-e149334a59b7" />

Data Flow

<img width="1914" height="987" alt="image" src="https://github.com/user-attachments/assets/54098c0b-456a-4c48-a29c-7280a7199a63" />

This screenshot should show the entire SSIS package canvas.

🔁 Control Flow Design

1️⃣ Execute SQL Task

Create table if not exists

SQL Command:

TRUNCATE TABLE Task3_maintable

2️⃣ Data Flow Task

This task performs all ETL operations.

🔄 Data Flow Design

This screenshot should capture the full data flow, from Excel sources to destinations.

Step 1 – Excel Sources

Excel Source 1

Excel Source 2

Excel Source 3

Step 2 – Sort Transformations

All sources must be sorted by ID before merging.

Step 3 – Merge Excel File 1 and Excel File 2

Merge transformation combining Excel 1 and Excel 2.

Step 4 – Merge with Excel File 3

Shows final merged output.

Step 5 – Multicast Transformation

Single input → multiple outputs.

📤 Parallel Data Load Using Multicast
🟢 Path 1 – Local SQL Server Database

Load into SQL Server destination

<img width="1919" height="982" alt="image" src="https://github.com/user-attachments/assets/770f9b28-830c-4e13-84ff-7003adb37386" />


🔵 Path 2 – CSV Flat File Output

Write to CSV Flat File Destination

<img width="1919" height="791" alt="image" src="https://github.com/user-attachments/assets/05b5d9ac-ebdb-44e9-b542-df1de16223cb" />
