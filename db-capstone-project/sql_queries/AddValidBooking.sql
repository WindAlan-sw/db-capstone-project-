DELIMITER //
CREATE PROCEDURE AddValidBooking(BookingDateInput DATETIME, TableNoInput INT)
BEGIN
	DECLARE n_bookings INT;
    DECLARE result VARCHAR(255);
    DECLARE newid INT;
    DECLARE newcustomerid INT;
    
	START TRANSACTION;
	SELECT MAX(BookingID)+1 INTO newid
	FROM Bookings;
    SELECT MAX(CustomerID)+1 INTO newcustomerid
    FROM Bookings;
	SELECT COUNT(*) INTO n_bookings
    FROM Bookings
    WHERE BookingDate = BookingDateInput AND TableNo=TableNoInput;
	INSERT INTO Bookings(BookingID, BookingDate, TableNo, CustomerID)
	VALUES(newid,BookingDateInput, TableNoInput, newcustomerid);
	IF n_bookings = 0 THEN
		COMMIT;
	ELSE ROLLBACK;
	END IF;
    IF n_bookings = 0 THEN
		SET result = "The booking is successful.";
	ELSE SET result = "The table has been booked and this booking is cancelled.";
    END IF;
    SELECT result;
END//
