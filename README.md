#SSIS_Multicast_Excel_To_DB_AND_CSV
📌 Project Overview

This project demonstrates an end-to-end SSIS ETL pipeline that ingests data from three Excel source files, applies sorting and merging transformations, and loads the final dataset into two destinations in parallel using the SSIS Multicast transformation:

✅ Local SQL Server Database

✅ CSV Flat File Output

🎯 Project Objective

Design and implement an SSIS package that:

Reads data from three Excel files

Sorts all input data by a common ID

Merges:

Excel 1 + Excel 2

Result + Excel 3

Distributes the final dataset to:

SQL Server (sorted by Month)

CSV file (sorted by First Name)

🛠 Tools & Technologies

SSIS (SQL Server Integration Services)

Microsoft Excel

SQL Server

Flat File (CSV)

Visual Studio (SSDT)

📊 Source Files

Three Excel files are used as input sources:

Excel1


<img width="679" height="391" alt="image" src="https://github.com/user-attachments/assets/13e9748b-b8d8-42d7-a2b3-7a7c898badc2" />


Excel2


<img width="658" height="392" alt="image" src="https://github.com/user-attachments/assets/2d48a7fa-85fe-4402-ba7f-8ccce68c4539" />


Excel3


<img width="662" height="408" alt="image" src="https://github.com/user-attachments/assets/dabe8941-c7f8-456d-b019-ed2366576960" />

Each file contains a common ID column, which is used for sorting and merging.

🧩 Package Architecture

The SSIS package consists of two primary components:

🔹 Control Flow

<img width="1919" height="982" alt="image" src="https://github.com/user-attachments/assets/b04617d6-7fc1-40af-b99d-e149334a59b7" />



🔹 Data Flow


<img width="1914" height="987" alt="image" src="https://github.com/user-attachments/assets/54098c0b-456a-4c48-a29c-7280a7199a63" />


🔁 Control Flow Design
1️⃣ Execute SQL Task

Purpose: Prepare the destination table before loading data.

SQL Commands:

TRUNCATE TABLE Task3_maintable;


Table creation logic can be included if required.

2️⃣ Data Flow Task

Executes all ETL logic including extraction, transformation, and loading.

🔄 Data Flow Design

<img width="794" height="611" alt="image" src="https://github.com/user-attachments/assets/8b38db3a-6172-4cc3-85dd-60d5168cc810" />


Step 1 – Excel Sources

Excel Source 1

Excel Source 2

Excel Source 3

Step 2 – Sort Transformations

Each Excel source is sorted by ID

Required for Merge transformations to function correctly

Step 3 – Merge Excel 1 and Excel 2

Merge transformation combines data from Excel 1 and Excel 2

Join based on ID

Step 4 – Merge with Excel 3

Output from previous merge is merged with Excel 3

Produces the final unified dataset

Step 5 – Multicast Transformation

Single input

Multiple outputs

Enables parallel data loading

📤 Parallel Data Load Using Multicast
🟢 Path 1 – SQL Server Destination

Loads data into Local SQL Server

Data is sorted by Month before insertion

<img width="1919" height="982" alt="image" src="https://github.com/user-attachments/assets/770f9b28-830c-4e13-84ff-7003adb37386" 

🔵 Path 2 – CSV Flat File Destination

Writes data to CSV file

Data is sorted by First Name before export

<img width="1919" height="791" alt="image" src="https://github.com/user-attachments/assets/05b5d9ac-ebdb-44e9-b542-df1de16223cb" />
