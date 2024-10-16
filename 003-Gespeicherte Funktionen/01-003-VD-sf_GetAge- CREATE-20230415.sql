USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_GetAge]    Script Date: 15.04.2023 12:11:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Berechnung des Kundenalters>
-- =============================================
CREATE   FUNCTION [dbo].[sf_GetAge]  
(
	@GebDat date
)
RETURNS int
AS
BEGIN
	DECLARE @Age int;

	DECLARE @Heute date;
	SET @Heute = GETDATE();
	
	IF (MONTH(@GebDat) > MONTH(@Heute))
		OR
	   (MONTH(@GebDat) = MONTH(@Heute) AND DAY(@GebDat) > DAY(@Heute))
		SET @Age = DATEDIFF(YEAR, @GebDat, @Heute) - 1 -- ist noch nich so alt
	ELSE 
		SET @Age = DATEDIFF(YEAR, @GebDat, @Heute);
	
	RETURN @Age;

END
GO


