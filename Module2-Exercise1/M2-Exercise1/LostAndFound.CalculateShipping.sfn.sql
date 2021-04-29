DROP FUNCTION IF EXISTS LostAndFound.CalculateShipping;
GO
CREATE FUNCTION LostAndFound.CalculateShipping(@HotelState VARCHAR(2), @ShippingState VARCHAR(2))
RETURNS INTEGER
AS
BEGIN
	IF (@HotelState = @ShippingState)
		RETURN 10
	RETURN 25
END
GO