USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[tf_Frei_Zimmer_Suchen]    Script Date: 19.04.2023 10:17:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Zeigt die freien Zimmer fuer den Kunden in der Reihenfolge: zuerst die gereinigten Zimmer, dann die zu reinigenden Zimmer 
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[tf_Frei_Zimmer_Zeigen]
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
SELECT TOP (100) PERCENT 
		 Zimmer_ID									AS 'Zimmer_ID'
		,Zimmer_Nr									AS 'Zimmer_Nr'
		,Zimmer_Plaetze								AS 'Zimmer_Plaetze'
		,Zimmer_Klasse								AS 'Zimmer_Klasse'
		,StandardPreis								AS 'StandardPreis'
		,Preis_fuer_den_Kunden						AS 'Preis_fuer_den_Kunden'
		,[dbo].[sf_IstZimmerGereinigt] (Zimmer_ID)	AS 'Gereinigt'
FROM [dbo].[tf_Frei_Zimmer_Suchen]
(	
 @KundID,							-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafpl�tze
 @GesuchtKost,						-- H�chstpreis f�r ein Zimmer, den der Kunde bereit zu zahlen
 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

 @GesuchtBegDatum,					-- Gesuchte BeginDatum
 @GesuchtEndDatum					-- Gesuchte EndDatum
) 
ORDER BY [dbo].[sf_IstZimmerGereinigt] (Zimmer_ID) DESC,Zimmer_ID

)
GO


