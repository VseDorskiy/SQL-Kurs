USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[tf_Frei_Zimmer_Suchen]    Script Date: 19.04.2023 08:53:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Sucht nach freien Zimmern fuer den Kunden und zeigt den Preis mit dem Rabatt an
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[tf_Frei_Zimmer_Suchen]
(	
 @KundID AS int,					-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer AS tinyint,	-- Gesuchte Schlafplaetze
 @GesuchtKost AS smallmoney,		-- Hoechstpreis fuer ein Zimmer, den der Kunde zu zahlen bereit ist
 @GesuchtKlasse AS int,				-- Mindestklasse des Zimmers, die der Kunde sucht
 
 @GesuchtBegDatum AS date,			-- Gesuchte BeginDatum
 @GesuchtEndDatum AS date			-- Gesuchte EndDatum
 )
RETURNS TABLE 
AS
RETURN 
(
SELECT DISTINCT 
					 dbo.Zimmer.ZimmerID							AS 'Zimmer_ID'
					,dbo.Zimmer.Zimmernummer						AS 'Zimmer_Nr'
					,dbo.ZimmernPlaetze.Platznummer					AS 'Zimmer_Plaetze' 
					,dbo.ZimmernKlasse.Klassenname					AS 'Zimmer_Klasse'
					,dbo.Zimmerzuordnung.KostProNacht				AS 'StandardPreis'
					,(dbo.Zimmerzuordnung.KostProNacht
						*[dbo].[sf_Rabatt_Koeffizient](@KundID))	AS 'Preis_fuer_den_Kunden'
FROM	dbo.Zimmer 
			 INNER JOIN dbo.Zimmerzuordnung 
			 ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID 
			 INNER JOIN dbo.ZimmernPlaetze 
			 ON dbo.Zimmerzuordnung.ZimmernPlaetzeID = dbo.ZimmernPlaetze.ZimmernPlaetzeID 
			 INNER JOIN dbo.ZimmernKlasse 
			 ON dbo.Zimmerzuordnung.ZimmernKlasseID = dbo.ZimmernKlasse.ZimmernKlasseID 
			 LEFT OUTER JOIN dbo.Reservierung
			 ON dbo.Zimmer.ZimmerID = dbo.Reservierung.ZimmerID 

WHERE   (dbo.ZimmernPlaetze.Platznummer >= @GesuchtPlaetzeNummer) 
	AND (dbo.Zimmerzuordnung.KostProNacht <= @GesuchtKost)
	AND (dbo.Zimmerzuordnung.ZimmernKlasseID> = @GesuchtKlasse)
	--AND ([dbo].[sf_IstZimmerGereinigt](dbo.Zimmer.ZimmerID)= 1)
	
	AND dbo.Zimmer.ZimmerID NOT IN (
	SELECT DISTINCT dbo.Zimmer.ZimmerID 
		FROM     dbo.Zimmer 
			 INNER JOIN dbo.Zimmerzuordnung 
			 ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID 
			 INNER JOIN dbo.ZimmernPlaetze 
			 ON dbo.Zimmerzuordnung.ZimmernPlaetzeID = dbo.ZimmernPlaetze.ZimmernPlaetzeID 
			 INNER JOIN dbo.ZimmernKlasse 
			 ON dbo.Zimmerzuordnung.ZimmernKlasseID = dbo.ZimmernKlasse.ZimmernKlasseID 
			 INNER JOIN dbo.Reservierung
			 ON dbo.Zimmer.ZimmerID = dbo.Reservierung.ZimmerID 

		WHERE   (dbo.ZimmernPlaetze.Platznummer >= @GesuchtPlaetzeNummer) 
		AND (dbo.Zimmerzuordnung.KostProNacht <= @GesuchtKost)
		AND (dbo.Zimmerzuordnung.ZimmernKlasseID>=@GesuchtKlasse)
		AND (
			(@GesuchtBegDatum >= dbo.Reservierung.BeginDatum 
				AND @GesuchtBegDatum < dbo.Reservierung.EndDatum
				)
			OR 
			(@GesuchtEndDatum > dbo.Reservierung.BeginDatum 
				AND @GesuchtEndDatum <= dbo.Reservierung.EndDatum
				)
			OR 
			(dbo.Reservierung.BeginDatum > @GesuchtBegDatum AND dbo.Reservierung.EndDatum < @GesuchtEndDatum)
			)
	)
)
GO


