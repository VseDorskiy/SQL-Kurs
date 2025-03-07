USE [Hotelprojekt]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Anzahl_Kunde_Reservierungen]    Script Date: 18.04.2023 13:51:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Berechnung der Anzahl der Kundenreservierungen>
-- =============================================
ALTER   FUNCTION [dbo].[sf_Anzahl_Kunde_Reservierungen] 
(
	-- Add the parameters for the function here
	@KundenID int
	
)
RETURNS smallint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ReservAnzahl AS smallint
	--DECLARE @StatusID AS nvarchar(30)
	-- Add the T-SQL statements to compute the return value here

	SELECT 
	@ReservAnzahl = COUNT(dbo.Kunden.KundenID)
	FROM dbo.Reservierung INNER JOIN
         dbo.Kunden ON dbo.Reservierung.KundenID = @KundenID INNER JOIN
         dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
	WHERE dbo.Kunden.KundenID = @KundenID
	GROUP BY dbo.Kunden.KundenID
	
	--IF @ReservAnzahl IS NULL
	--SET @ReservAnzahl = 0
	
	RETURN @ReservAnzahl

END
