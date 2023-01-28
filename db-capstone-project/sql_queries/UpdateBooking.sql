DELIMITER //
CREATE PROCEDURE UpdateBooking(TableNoInput INT, BookingDateInput DATETIME, 
BookingIDInput INT)
BEGIN
	DECLARE result VARCHAR(255);
    DECLARE n_bookings INT;
    
	UPDATE Bookings
    SET BookingDate = BookingDateInput
    WHERE TableNo = TableNOInput AND BookingID=BookingIDInput;
    
	SELECT COUNT(*) INTO n_bookings
    FROM Bookings
    WHERE BookingID=BookingIDInput AND TableNo=TableNoInput;
    
    IF n_bookings = 1 THEN
		SET result="New booking updated.";
	END IF;
	SELECT result;
END
