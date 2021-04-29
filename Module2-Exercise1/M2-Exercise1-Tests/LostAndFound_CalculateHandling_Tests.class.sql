EXEC tSQLt.NewTestClass 'LostAndFound_CalculateHandling_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateHandling_Tests.[test something]
AS
BEGIN
	DECLARE @ExpectedHandlingCost INTEGER;
	DECLARE @ActualHandlingCost INTEGER;


	SELECT @ActualHandlingCost = (LostAndFound.CalculateHandling(10000))

	SET @ExpectedHandlingCost = 37;

	EXEC tSQLt.AssertEquals @ExpectedHandlingCost, @ActualHandlingCost;

	SELECT @ActualHandlingCost = (LostAndFound.CalculateHandling(10001))

	SET @ExpectedHandlingCost = 0;

	EXEC tSQLt.AssertEquals @ExpectedHandlingCost, @ActualHandlingCost;

END
GO