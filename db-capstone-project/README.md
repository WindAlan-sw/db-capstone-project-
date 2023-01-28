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

#### 2.1 Query Optimization
Little Lemon need to query the data in their database. To do this, they need 
your help with creating optimized queries using stored procedures and prepared
statements.\
In the previous module, you developed a data model for Little Lemon and 
implemented it in your MySQL server. Your database should now contain several 
tables including the following:
1. **Menus**, 
2. **Orders**, 
3. **MenuItems**,
4. **and Customers**.

Now we need to use MySQL Workbench SQL editor to write the required stored
procedures and prepared statements.

## 2. Procedure and Client Testing
For easier assessing, I have provided self-test result of each criteria, and if you want to
check procedure exercises, moving to [here(sql_queries)](./sql_queries)

#### 2.1.1 GetMaxQuantity
Code -> [here](./sql_queries/GetMaxQuantity.sql)
```
CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) FROM Orders;
```
You can either run this script on your Workbench or test this in JupyterNotebook environment.
See result in Workbench:
<img width="445" alt="Screenshot 2023-01-28 at 13 57 59" src="https://user-images.githubusercontent.com/76271974/215270414-1cfdc04e-2343-4440-94f7-07967233b611.png">

If under Jupyter environ, the result will be:

<img width="745" alt="Screenshot 2023-01-28 at 15 07 32" src="https://user-images.githubusercontent.com/76271974/215273883-797b8925-beab-42e4-b309-a822d8c2dc15.png">




#### 3.1 Data Visualization
This part requires us to utlize the sales data from LittleLemon to genereate a data visualization
report on Tableau. In total, we need to make three charts and one interactive dashboard. Check.
1. [ProfitChart](./SalesReport_Tableau/Profit_Chart.png)
2. [Sales_Bubble_Chart](./SalesReport_Tableau/Sales_Bubble_Chart.png)
3. [Cuisine_Sales_Performance](./SalesReport_Tableau/Cuisine_Sales_and_profits.png)
4. [Interactive_Sales_Report](./SalesReport_Tableau/Sales_Report_1.png)
