USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_GesamtSumme]    Script Date: 18.04.2023 21:24:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Berechung des Erloeses von einem bestimmten Kunden>
-- =============================================
CREATE OR ALTER   FUNCTION [dbo].[sf_GesamtSumme] 
(
	@KundenID int

)
RETURNS smallmoney
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Summ AS smallmoney
	DECLARE @BeginDatum AS date
	DECLARE @EndDatum AS date
	DECLARE @KostProNacht AS smallmoney
	-- Add the T-SQL statements to compute the return value here

	SELECT 
	--@Summ = dbo.Zimmerzuordnung.KostProNacht,
	@BeginDatum = dbo.Reservierung.BeginDatum,
	@EndDatum = dbo.Reservierung.EndDatum,
	@KostProNacht = dbo.Zimmerzuordnung.KostProNacht
	FROM            dbo.Reservierung INNER JOIN
                    dbo.Zimmer ON dbo.Reservierung.ZimmerID = dbo.Zimmer.ZimmerID INNER JOIN
                    dbo.Zimmerzuordnung ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID INNER JOIN
                    dbo.Kunden ON dbo.Reservierung.KundenID = dbo.Kunden.KundenID
	WHERE dbo.Kunden.KundenID = @KundenID
	ORDER BY dbo.Kunden.KundenID

	SET  @Summ = DATEDIFF(DAY, @BeginDatum, @EndDatum)*@KostProNacht
		IF @Summ IS NULL
		SET @Summ = 0
		ELSE
		SET @Summ = @Summ
		
	-- Return the result of the function
	RETURN @Summ

END
GO


