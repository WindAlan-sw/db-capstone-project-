DELIMITER //
CREATE PROCEDURE AddBooking(BookingIDInput INT, CustomerIDInput INT, 
BookingDateInput DATETIME, TableNoInput INT)
BEGIN
    DECLARE result VARCHAR(255);
    DECLARE n_bookings INT;
    
    SELECT COUNT(*) INTO n_bookings
    FROM Bookings
    WHERE BookingDate = BookingDateInput AND TableNo=TableNoInput;
    
    IF n_bookings = 0 THEN
		SET result="New booking added.";
	ELSE SET result="The table is booked that time.";
	END IF;
    IF n_bookings = 0 THEN
		INSERT INTO Bookings(BookingID, BookingDate, TableNo, CustomerID)
		VALUES(BookingIDInput,BookingDateInput, TableNoInput, CustomerIDInput);
	END IF;
	SELECT result;
END
