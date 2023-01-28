DELIMITER //
CREATE PROCEDURE GetOrderDetail(CustomerIDInput INT)
BEGIN
SELECT OrderID, Quantity, TotCost
FROM Orders
WHERE CustomerID = CustomerIDInput;
END //
DELIMITER ;
