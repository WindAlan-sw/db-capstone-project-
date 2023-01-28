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



## 2. Procedure and Client Testing
For easier assessing, I have provided self-test result of each criteria, and if you want to
check procedure exercises, moving to [here(sql_queries)](./sql_queries)



#### 2.1.GetMaxQuantity
The cloned repository contains a procedure called GetMaxQuantity(). Call this procedure and verify 
that the result of Max Quantity in Order is 5.
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




#### 2.2 Managebooking()
The cloned repository contains a procedure called ManageBooking(). Examine the table using the
following syntax:
```
SELECT * FROM Bookings;
```
Call the ManageBooking() procedure by passing the appropriate parameters. First with an available 
table number, then with one that has already been reserved.

**Notethat I have made some adjustments to the procedure**:
1. Procedure Name from **Managebooking()** to **CheckBooking()** # Please pay attention to here.
2. Based on real-world business framewrok, we need both time and tableno, so instead only table number, here I added another input parameter.
Check the query of [creating ManageBooking](./sql_queries/CheckBooking.sql)

Therefore, when calling the managebooking, you should follow the below:
```
CALL CheckBooking()
```
1. The already booking result:

<img width="414" alt="Screenshot 2023-01-28 at 15 15 35" src="https://user-images.githubusercontent.com/76271974/215274424-16596dcb-0034-4c57-9a96-41306646345f.png">

2. The table is available result:
<img width="472" alt="Screenshot 2023-01-28 at 15 16 25" src="https://user-images.githubusercontent.com/76271974/215274439-e63a170d-3a04-41ff-ac96-5b316d655ada.png">




#### 2.3 AddBooking() in python Client
Use the Python client to connect to the database and create an instance of a cursor object. Create an SQL statement that calls the AddBooking() procedure and passes the following parameters:

Booking id: 99 

Customer id: 99 

Table number: 99

Booking date: 2022-12-10 

Call the cursor .execute() method using the above parameters. Print out the result using the cursor .fetchall() method.

Above requirements ask us to use buffer to store the results. Instead of this way, I adopted the
'callproc' in cursor to execute the 'AddBooking',see:

<img width="756" alt="Screenshot 2023-01-28 at 15 27 32" src="https://user-images.githubusercontent.com/76271974/215274975-061cb708-ec6f-4b6b-adf4-2701d22af0e1.png">

#### 2.4 UpdateBooking() in Python client
Use the Python client to connect to the database and create an instance of a cursor object. Create a SQL statement that calls the UpdateBooking() procedure and pass the following parameters:

Table number: 99

Booking date: 2022-1-10 

Call the cursor .execute() method using the above parameters. Print out the result using the cursor .fetchall() method.

This requires us to update the date of added booking in previous task, and it realizes by inputting
two parameters of table number and bookingdate. However, according to real-world business requirement,
we need at least table number, bookingid to confirm the accuracy of this order. Therefore, I added
the parameter of bookingid and the new procedure 'UpdateBooking' can be prepared as below:
```
CALL UpdateBooking(TableNoInput INT, BookingDateInput DATETIME, BookingIDInput INT)
```

By this way, I updated the date of new bookingid of 99 from '2022-12-10' to '2022-01-10' as below:
<img width="688" alt="Screenshot 2023-01-28 at 15 35 01" src="https://user-images.githubusercontent.com/76271974/215275271-880e2435-59f1-4288-8ba5-93a3fa9c8a3b.png">





#### 3.1 Data Visualization
This part requires us to utlize the sales data from LittleLemon to genereate a data visualization
report on Tableau. In total, we need to make three charts and one interactive dashboard. Check.
1. [ProfitChart](./SalesReport_Tableau/Profit_Chart.png)
2. [Sales_Bubble_Chart](./SalesReport_Tableau/Sales_Bubble_Chart.png)
3. [Cuisine_Sales_Performance](./SalesReport_Tableau/Cuisine_Sales_and_profits.png)
4. [Interactive_Sales_Report](./SalesReport_Tableau/Sales_Report_1.png)
