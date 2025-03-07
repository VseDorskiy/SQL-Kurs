USE [Hotelprojekt]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Count_Frei_Zimmer_Date]    Script Date: 4/17/2023 10:27:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Suche nach freien Zimmern zu einem bestimmten Datum>
-- =============================================
ALTER FUNCTION [dbo].[sf_Count_Frei_Zimmer_Date] 
(
	-- Add the parameters for the function here
	@date1 As date
)
RETURNS int
AS
BEGIN
RETURN(
	-- Add the T-SQL statements to compute the return value here
	SELECT COUNT(1) 
	FROM [dbo].[Zimmer]
	WHERE [ZimmerID] NOT IN 
	(SELECT [ZimmerID] 
	FROM [dbo].[Reservierung] where [BeginDatum]<= @date1 AND [EndDatum]>=@date1 ) 
)
END
