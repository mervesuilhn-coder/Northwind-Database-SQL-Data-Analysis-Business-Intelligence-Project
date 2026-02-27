Northwind: A Journey from SQL Basics to Advanced T-SQL

This repo includes my development process starting with basic querying techniques on the Northwind database,
extending to enterprise-level T-SQL competencies.
These projects, prepared under the mentorship of a Software Developer during my internship, aim not only to retrieve data but also to
process it into meaningful reports.

📂 Project Content and Technical Scope File creation,
1. Database Installation 
**scripts/_Northwind_Database_Setup.sql**
My Setup Process (Kurulum Sürecim)
If you would like to explore or test the analysis queries in this project
you will first need to set up the database environment. I have prepared a primary script to make this process seamless.
---------------------------------------------------------------------------------------------------------------------
3. Exploring My Analysis (Analizlerimi İnceleme)
Once you have completed the setup, you can examine my scripts in any order. I personally developed each of these files to:

Solve specific business problems I encountered during my internship.

Practice and demonstrate my proficiency in complex T-SQL concepts such as CTEs, Window Functions, and Multi-layered Joins.
---------------------------------------------------------------------------------------------------------------------
  1) Data Manipulation and Basic Querying Fundamentals: Data cleaning and filtering using functions such as Using_Between, Using_Like&Len, Using_Round, and Using_Distinct.
  **https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/56202cc3f44b1125d012457ac30cd0bf1a6ff3e8/scripts/Using_Like_Len.sql
    -- I combined string length validation (LEN) with pattern matching (LIKE) to perform precise data filtering based on specific character requirements and naming conventions.
  **[scripts/Using_Round.sql](https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/afe9c31e404dff0236c30eb214113b31d405b71c/scripts/Using_Round.sql)
  **https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/754359c334e74bef8bcec5f7c8668310daa2774a/scripts/Personnel_Performance_Analysis_with_Distinct.sql
     --In this analysis, I addressed the challenge of data duplication by implementing DISTINCT within aggregations, ensuring that each unique sale is counted accurately despite the one-to-many relationship              between orders and products
  **https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/0b0b1ce5d0108e5d6d18b736b4605cfd08d243c7/scripts/Sales_Filtering_with_Between.sql
--------------------------------------------------------------------------------------------------------------------------------------------------------
  --CRUD Operations: The logic of Update_Insert_Delete for data management.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/ceeb31d3d58b78c95b8a52cffce6e09fac1e3e6a/scripts/using_Update_Insert_Delete
  
  --Date Functions: Using_Datediff and Date_Based_Sales_Using_Cast for time-based analyses.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/747ae94f6d16a3b850cf0c8a6cc84f3c6dc42bb9/scripts/Using_Datediff.sql
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/9d6160a00d54729446f3c1c530f5130d764f18f2/scripts/month_based_sales.sql
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/9d6160a00d54729446f3c1c530f5130d764f18f2/scripts/Date_Based_Sales_Using_Cast.sql
  -----------------------------------------------------------------------------------------------------------------------------------------------------
  2)Advanced T-SQL Techniques CTE (Common Table Expressions):Using_CTE to make complex queries readable and manageable.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/tree/1c1a66f3c7a60f680d6a735349019329c7b35fe5/scripts
  I leveraged Common Table Expressions (CTE) and Window Functions to perform a multi-layered analysis. I successfully ranked products within their respective categories and identified the highest-grossing items,    showcasing my ability to handle complex data partitioning and ranking logic.
  
  --Window Functions: RowNumber & PartitionBy for analyzing datasets by dividing them into partitions.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/79abb8aaa5a80d1d6da6354e61b0f1b90ce6bb71/scripts/RowNumber_Partition%20By.sql
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/a7e1413db4ec3fca0192de98a767707597d55593/scripts/Windows_Functions.sql
  
  --Subqueries & Logic: Using_Exists and complex HAVING constructs for entity checks and performant filtering.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/9d6160a00d54729446f3c1c530f5130d764f18f2/scripts/Filtering_Groups_ByHaving
  
  --Temporary Tables: Using_TEMP_TABLE for large data processing.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/de718add8f31a5446cd1af2e8e5f8dd7070d1397/scripts/Create_Temp_Table.sql
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  3)Business Intelligence Customer Analysis:
  --Customer_Based_Analysis for customer segmentation and detailed spending reports.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/d55f48eed5b0a997fdefbc064ba6d0fc83027f14/scripts/Customer_Based_Analysis.sql
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/7f8ff06d5ef48bd054b56b8b3620dd9bd552845d/scripts/customer_specified_analize.sql
  
  --Personnel Performance: Measuring employee productivity with TotalSales_BasedOn_PersonnelID.
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/d00b7bd68224fbce8626b5f8a44e8ded3829e4d9/scripts/Total_Sales_BasedOn_PersonelID.sql
  
  --Category-Based Summaries
  https://github.com/mervesuilhn-coder/Northwind-Database-SQL-Data-Analysis-Business-Intelligence-Project/blob/1ac66cc8b36fee63c30deeb9436c3c563041164a/scripts/Sum_Product_Each_Category.sql
  



















