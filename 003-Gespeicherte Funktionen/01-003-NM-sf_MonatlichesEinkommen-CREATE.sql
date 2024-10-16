USE [HotelProjekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_GetAge]    Script Date: 18.04.2023 13:48:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Berechnung des Einkommens für einen bestimmten Zeitraum
-- =============================================
CREATE OR ALTER   FUNCTION [dbo].[sf_MonatlichesEinkommen] 
(
	@Monat int
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	--DECLARE @MonatBeginReserv int;
	--DECLARE @MonatEndReserv int;
	DECLARE @Summ money;
	-- Reservierung in diesem Monat vollst�ndig
	SET @Summ = 
		(SELECT SUM([ReservierungsPreis])
		FROM [dbo].[Reservierung]
		WHERE (MONTH([BeginDatum]) = @Monat) AND (MONTH([EndDatum]) = @Monat));
	DECLARE @Summ1 money;
	DECLARE @Summ2 money;
	--Die Reservierung beginnt im letzten Monat und endet in diesem
	SET @Summ1 =(SELECT SUM([ReservierungsPreis]/CONVERT(money,DATEDIFF(day,[BeginDatum],[EndDatum]))*(CONVERT(money,DAY([EndDatum])-1)))
						FROM [dbo].[Reservierung]
						WHERE (MONTH([BeginDatum]) < @Monat) AND (MONTH([EndDatum]) = @Monat));
	--Die Reservierung beginnt in diesem Monat und endet im n�chsten	
	SET @Summ2 = (SELECT SUM([ReservierungsPreis]/CONVERT(money,DATEDIFF(day,[BeginDatum],[EndDatum]))*(CONVERT(money,DATEDIFF(day,[BeginDatum],EOMONTH([BeginDatum])))))
						FROM [dbo].[Reservierung]
						WHERE (MONTH([BeginDatum]) = @Monat) AND (MONTH([EndDatum]) > @Monat));
	IF (@Summ IS NULL) 
		SET @Summ=0;
	IF (@Summ1 IS NULL) 
		SET @Summ1=0;
	IF (@Summ2 IS NULL) 
		SET @Summ2=0;

	SET @Summ = @Summ + @Summ1 + @Summ2;
	-- Return the result of the function
	RETURN @Summ;

END
GO


