#### 2.1.1 GetMaxQuantity
Code -> [here](./sql_queries/GetMaxQuantity.sql)
```
CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) FROM Orders;
```
See result:
<img width="445" alt="Screenshot 2023-01-28 at 13 57 59" src="https://user-images.githubusercontent.com/76271974/215270414-1cfdc04e-2343-4440-94f7-07967233b611.png">


#### 2.1.2 GetOrderDetail
code -> [here](./GetOrderDetail.sql)

#### 2.1.3 CancelOrder
code -> [here](./CancelOrder.sql)

#### 2.2 Bookings management query optimization
This part we will create procedures that checking the availability of a booking,
adding valid booking, or cancel booking using the following data:
<img width="868" alt="Screenshot 2023-01-28 at 00 45 20" src="https://user-images.githubusercontent.com/76271974/215231768-ce71b77e-e148-41d9-acca-1a7f6bd9b09c.png">

1.\
[CheckBooking](./CheckBooking.sql)\
See the reusults of finding date '2022-11-12' and tableno of '3':
<img width="443" alt="Screenshot 2023-01-28 at 01 06 08" src="https://user-images.githubusercontent.com/76271974/215232979-bbac7bfd-23bf-4276-b0f5-5bd22f372181.png">

2.\
[AddValidBooking](./AddValidBooking.sql)
<img width="594" alt="Screenshot 2023-01-28 at 01 22 37" src="https://user-images.githubusercontent.com/76271974/215234183-6bb01040-4e1d-47d5-9bf8-fa35e859b756.png">

3.\
[AddBooking](./AddBooking.sql)
<img width="695" alt="Screenshot 2023-01-28 at 01 41 11" src="https://user-images.githubusercontent.com/76271974/215235141-ed8a75b9-f532-486a-a8d9-ae1c36ece861.png">

4.\
[UpdateBooking](./UpdateBooking.sql)
<img width="700" alt="Screenshot 2023-01-28 at 01 53 43" src="https://user-images.githubusercontent.com/76271974/215235778-7a1838b2-4678-4bfc-aa9c-ae6b9fd2d937.png">

5.\
[CancelBooking](./CancelBooking.sql)
<img width="557" alt="Screenshot 2023-01-28 at 01 59 00" src="https://user-images.githubusercontent.com/76271974/215236271-cd54bab4-bc3f-4d25-bfd1-944188d1384c.png">
<img width="468" alt="Screenshot 2023-01-28 at 01 59 10" src="https://user-images.githubusercontent.com/76271974/215236273-24e9e66b-5438-403b-9e5f-d12424651e00.png">


