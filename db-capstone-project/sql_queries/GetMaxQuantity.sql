CREATE PROCEDURE GetMaxQuantity(OUT Max_Quantity_In_Order INT)
SELECT MAX(Quantity) INTO Max_Quantity_In_Order
FROM Orders;
