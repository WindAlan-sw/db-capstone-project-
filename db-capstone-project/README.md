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
#### 2.1.1 GetMaxQuantity
Code -> [here](./sql_queries/GetMaxQuantity.sql)
```
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`(OUT Max_Quantity_In_Order INT)
SELECT MAX(Quantity) INTO Max_Quantity_In_Order
FROM Orders
```
To run this query, we need to input when calling:
```
CALL GetMaxQuantity(@MaxOrderQuantity)
```
Then, selecting the result from the output
```
SELECT @MaxOrderQuantity
```
#### 2.1.2 GetOrderDetail
code -> [here](./sql_queries/GetOrderDetail.sql)

#### 2.1.3 CancelOrder
code -> [here](./sql_queries/CancelOrder.sql)

#### 2.2 Bookings management query optimization
This part we will create procedures that checking the availability of a booking,
adding valid booking, or cancel booking using the following data:
<img width="868" alt="Screenshot 2023-01-28 at 00 45 20" src="https://user-images.githubusercontent.com/76271974/215231768-ce71b77e-e148-41d9-acca-1a7f6bd9b09c.png">

1.\
[CheckBooking](./sql_queries/CheckBooking.sql)\
See the reusults of finding date '2022-11-12' and tableno of '3':
<img width="443" alt="Screenshot 2023-01-28 at 01 06 08" src="https://user-images.githubusercontent.com/76271974/215232979-bbac7bfd-23bf-4276-b0f5-5bd22f372181.png">

2.\
[AddValidBooking](./sql_queries/AddValidBooking.sql)
<img width="594" alt="Screenshot 2023-01-28 at 01 22 37" src="https://user-images.githubusercontent.com/76271974/215234183-6bb01040-4e1d-47d5-9bf8-fa35e859b756.png">

3.\
[AddBooking](./sql_queries/AddBooking.sql)
<img width="695" alt="Screenshot 2023-01-28 at 01 41 11" src="https://user-images.githubusercontent.com/76271974/215235141-ed8a75b9-f532-486a-a8d9-ae1c36ece861.png">
4.\
[UpdateBooking](./sql_queries/UpdateBooking.sql)
<img width="700" alt="Screenshot 2023-01-28 at 01 53 43" src="https://user-images.githubusercontent.com/76271974/215235778-7a1838b2-4678-4bfc-aa9c-ae6b9fd2d937.png">


#### 3.1 Data Visualization
This part requires us to utlize the sales data from LittleLemon to genereate a data visualization
report on Tableau. In total, we need to make three charts and one interactive dashboard. Check.
1. [ProfitChart](./SalesReport_Tableau/Profit_Chart.png)
2. [Sales_Bubble_Chart](./SalesReport_Tableau/Sales_Bubble_Chart.png)
3. [Cuisine_Sales_Performance](./SalesReport_Tableau/Cuisine_Sales_and_profits.png)
4. [Interactive_Sales_Report](./SalesReport_Tableau/Sales_Report_1.png)
