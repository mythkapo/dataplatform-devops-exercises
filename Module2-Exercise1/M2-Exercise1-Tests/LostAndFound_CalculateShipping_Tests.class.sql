EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[Test Same State Return 10]
AS
BEGIN
	DECLARE @ExpectedShippingCost INTEGER;
	DECLARE @ActualShippingCost INTEGER;

	SELECT @ActualShippingCost = (LostAndFound.CalculateShipping('NY','NY'))

	SET @ExpectedShippingCost = 10;

	EXEC tSQLt.AssertEquals @ExpectedShippingCost,  @ActualShippingCost;
END
GO
CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[Test Different State Return 25]
AS
BEGIN
	DECLARE @ExpectedShippingCost INTEGER;
	DECLARE @ActualShippingCost INTEGER;

	SELECT @ActualShippingCost = (LostAndFound.CalculateShipping('AB','NY'))

	SET @ExpectedShippingCost = 25;
	EXEC tSQLt.AssertEquals @ExpectedShippingCost,  @ActualShippingCost;
END
GO