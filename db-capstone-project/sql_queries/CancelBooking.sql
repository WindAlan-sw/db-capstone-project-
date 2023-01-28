DELIMITER //
CREATE PROCEDURE CancelBooking(TableNoInput INT, BookingIDInput INT)
BEGIN
	DECLARE result VARCHAR(255);
    DECLARE n_bookings INT;

	SELECT COUNT(*) INTO n_bookings
    FROM Bookings
    WHERE BookingID=BookingIDInput AND TableNo=TableNoInput;
    
    IF n_bookings = 1 THEN
		SET result="New booking updated.";
	END IF;
    IF n_bookings = 1 THEN
		DELETE FROM Bookings
		WHERE BookingID=BookingIDInput AND TableNo=TableNoInput;
	END IF;
	SELECT result;
END
