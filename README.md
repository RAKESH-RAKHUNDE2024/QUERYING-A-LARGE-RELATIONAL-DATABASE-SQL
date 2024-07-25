# QUERYING A LARGE RELATIONAL DATABASE (SQL)
________________________________________
### PROJECT SUMMARY:-

This Project Focuses On Querying The AdventureWorks2012 Database To Retrieve Various Customer Details And Sales Information Using SQL Queries. The AdventureWorks2012 Database Is A Sample Database Provided By Microsoft, Which Can Be Downloaded And Restored On A SQL Server Instance. The Goal Is To Query This Database To Extract Various Details About Customers And Sales Transactions Using SQL.
________________________________________
### THE OBJECTIVE IS TO RETRIEVE SPECIFIC INFORMATION FROM THE ADVENTUREWORKS2012 DATABASE:-

1) Get All The Details From The Person Table Including Email Id, Phone Number And Phone Number Type
2) Get The Details Of The Sales Header Order Made In May 2011
3) Get The Details Of The Sales Details Order Made In The Month Of May 2011
4) Get The Total Sales Made In May 2011
5) Get The Total Sales Made In The Year 2011 By Month Order By Increasing Sales
6) Get The Total Sales Made To The Customer With Firstname='gustavo' And Lastname ='achong'
________________________________________
### TASKS AND STEPS:-
### 1) RESTORE DATABASE BACKUP:-
•	Download The AdventureWorks2012 Backup (AdventureWorks2012.bak) From The Github Site.
•	Restore The Backup Using SQL Server Management Studio (SSMS) Following These Steps:
- Open SSMS And Connect To The Target SQL Server Instance.
- Right-click On The Databases Node And Select Restore Database.
- Choose Device And Click On The Ellipsis (...) To Select The Backup File.
- Optionally, Adjust The Data And Log File Locations In The Files Pane.
- Click Ok To Initiate The Restore Process.

### 2) PERFORM SQL QUERIES:-
•	Execute The Following Queries Against The AdventureWorks2012 Database:
- Query To Retrieve Details From The Person Table.
- Query To Fetch Sales Header Order Details For May 2011.
- Query To Fetch Sales Details Order Details For May 2011.
- Query To Calculate Total Sales In May 2011.
- Query To Calculate Total Sales In 2011 Aggregated By Month.
- Query To Calculate Total Sales Made To The Customer With Firstname='gustavo' And Lastname='achong'.
________________________________________
### REPOSITORY STRUCTURE:-
•	Readme.md :- Documentation Summarizing The Project, Setup Instructions, And SQL Queries.

•	AdventureWorks2012.bak :- Backup File Of The AdventureWorks2012 Database.

•	Queries.SQL :- SQL Script File Containing Queries Used To Extract Required Information.
________________________________________
### SETUP INSTRUCTIONS:-
### 1)	DOWNLOAD AND RESTORE DATABASE:-
•	Download AdventureWorks2012.bak From Github.

•	Use SQL Server Management Studio To Restore The Database As Outlined In The Project Summary.

### 2)	EXECUTE SQL QUERIES:-
•	Open Queries.SQL In SQL Server Management Studio.

•	Run Each Query Individually To Retrieve The Specified Details From The Database.
________________________________________
### ADDITIONAL NOTES:-
•	Ensure That SQL Server Management Studio Is Properly Configured And Connected To The SQL Server Instance Where AdventureWorks2012 Is Restored.

•	Verify Permissions To Access And Query The Database.
________________________________________
### CONCLUSION:-

This Project Provides A Hands-on Experience With SQL Queries, Covering Basic To Intermediate SQL Operations Including Data Retrieval And Aggregation. The AdventureWorks2012 Database Serves As An Excellent Sample Dataset To Practice SQL Skills.
