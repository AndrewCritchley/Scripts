SET NOCOUNT ON;

DECLARE @EndTime DATETIME;

SELECT @EndTime = DATEADD(SS, 360, GETDATE());

WHILE GETDATE() <= @EndTime
BEGIN
	INSERT [dbo].[TableName]
		DEFAULT VALUES
END;