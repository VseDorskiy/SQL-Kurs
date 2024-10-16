USE Hotelprojekt
GO
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Erhalten von der Kundeninformation>
-- =============================================
CREATE OR ALTER FUNCTION tf_WerKunde_Datum_Zimmer 
(	
	-- Add the parameters for the function here
	@Zimmer smallint,
	@Datum date
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT        dbo.Kunden.KundenID, 
	dbo.Kunden.Vorname, 
	dbo.Kunden.Nachname, 
	dbo.Kunden.Dokumentnummer, 
	dbo.Kunden.Kreditkartnummer, 
	dbo.Kunden.Telefonnummer, 
	dbo.Kunden.[E-Mail], 
	dbo.Zimmer.Zimmernummer, 
    dbo.Reservierung.BeginDatum, 
	dbo.Reservierung.EndDatum
FROM dbo.Reservierung INNER JOIN
     dbo.Kunden ON dbo.Reservierung.KundenID = dbo.Kunden.KundenID INNER JOIN
     dbo.Zimmer ON dbo.Reservierung.ZimmerID = dbo.Zimmer.ZimmerID
WHERE (@Zimmer = dbo.Zimmer.Zimmernummer) AND (@Datum BETWEEN dbo.Reservierung.BeginDatum AND dbo.Reservierung.EndDatum)
--ORDER BY dbo.Kunden.KundenID

)
GO
