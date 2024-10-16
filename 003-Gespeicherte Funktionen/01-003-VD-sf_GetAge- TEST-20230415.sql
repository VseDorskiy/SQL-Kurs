DECLARE @GeburtsDatum AS date='2010-04-24';
DECLARE @Alter AS int;

SET @Alter=[dbo].[sf_GetAge](@GeburtsDatum);

SELECT @Alter;