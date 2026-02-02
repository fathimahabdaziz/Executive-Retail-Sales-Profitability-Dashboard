# Project Title: Executive Retail Sales & Profitability Dashboard

**Project Description**<br>
I developed an end-to-end business intelligence solution to transform raw transactional data into actionable executive insights. The project involved architecting a relational database, performing ETL, and designing a high-fidelity dashboard for a retail environment.

**Tools Used**
- **Database Engine & Sourcing:** SQL Server (T-SQL) — used for architecting the relational database and hosting transactional data.
- **Data Cleaning & ETL:** SQL Server Management Studio (SSMS) — utilized for performing complex ETL processes and data validation via T-SQL.
- **Analysis & Modeling:** Power BI Desktop — used to build a Star Schema with one-to-many relationships between Fact and Dimension tables.
- **Advanced Analytics:** DAX (Data Analysis Expressions) — authored to calculate critical KPIs like Profit Margin % and Year-over-Year (YoY) Sales.

**Technical Highlights**
| Components | Description |
| :---: | :---: |
| Database Design | Built a Star Schema with 1 Fact table (Fact_Sales) and 3 Dimension tables (Product, Customer, Date) to optimize query performance and reporting. |
| Data Modeling | Established one-to-many relationships and a custom Date Hierarchy to enable time-intelligence "Drill Down" capabilities. |
| Advanced Analytics (DAX) | Created custom measures including Profit Margin % using complex logical functions (DIVIDE, SUM) to track business health beyond top-line revenue. |
| UI/UX Design | Implemented a Card-UI layout with interactive slicers and cross-filtering to provide a seamless user experience for stakeholders. |

**Power BI Dasboard**<br>
![dashboard](screenshorts/retailexecdashboard.png)
