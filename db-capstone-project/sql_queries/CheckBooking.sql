DELIMITER //
CREATE PROCEDURE CheckBooking(BookingDateInput DATETIME, TableNoInput INT)
BEGIN
	DECLARE result VARCHAR(255);
    DECLARE n_bookings INT;
    
    SELECT COUNT(*) INTO n_bookings
    FROM Bookings
    WHERE BookingDate = BookingDateInput AND TableNo=TableNoInput;
    
    IF n_bookings = 0 THEN
		SET result="Tale is available.";
	ELSE SET result="The table is booked that time.";
	END IF;
	SELECT result;
END//
DELIMITER ;
