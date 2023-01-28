## Little Lemon DataBase Project
This repository is aiming at designing a database system for Little Lemon Organization centred in
Meta Database Engineering on Coursera.
#### 1.1 ER Diagram
After connecting to the created database through user login, at first we created the Entity 
Relationship Diagram for Little Lemon. We named the diagram [LittleLemonDM.png](./LittleLemonDM.png) (Click here to find the ER diagram)
as required.

#### 1.2 Forwarding the model to the physical db
After implementing this ER diagram, we used the 'Forward engineer' funciton in MySQL Workbench to
create the database. The automatically generated SQL query can be found [here](./LittleLemonDB.sql).
The founded database can be seen below ![This is the created littlelemondb](https://raw.githubusercontent.com/WindAlan-sw/db-capstone-project-/master/db-capstone-project/show_db_sql_query.png)




#### 3.1 Data Visualization
This part requires us to utlize the sales data from LittleLemon to genereate a data visualization
report on Tableau. In total, we need to make three charts and one interactive dashboard. Check.
1. [ProfitChart](./SalesReport_Tableau/Profit_Chart.png)
2. [Sales_Bubble_Chart](./SalesReport_Tableau/Sales_Bubble_Chart.png)
3. [Cuisine_Sales_Performance](./SalesReport_Tableau/Cuisine_Sales_and_profits.png)
4. [Interactive_Sales_Report](./SalesReport_Tableau/Sales_Report_1.png)
