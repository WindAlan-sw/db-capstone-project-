USE LittleLemonDM;

CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) FROM Orders;


DELIMITER //
CREATE PROCEDURE GetOrderDetail(CustomerIDInput INT)
BEGIN
SELECT OrderID, Quantity, TotCost
FROM Orders
WHERE CustomerID = CustomerIDInput;
END //
DELIMITER ;

SET @id = 1;
EXECUTE GetOrderDetail USING @id;



DELIMITER //
CREATE PROCEDURE CancelOrder(OderIDInput INT)
BEGIN
DELETE FROM Orders
WHERE OrderID = OrderIDInput;
END //
DELIMITER ;

call CancelOrder(5);

