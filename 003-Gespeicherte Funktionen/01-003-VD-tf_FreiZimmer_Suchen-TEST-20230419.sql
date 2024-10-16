USE [Hotelprojekt]
GO

DECLARE @GesuchtPlaetzeNummer AS int=2;
DECLARE @GesuchtKost AS int=1000;
DECLARE @GesuchtKlasse AS tinyint=1;

DECLARE @KundID AS int = 7;
--DECLARE @ZimmerID AS int = 11;

DECLARE @GesuchtBegDatum AS date='30.04.2023'
DECLARE @GesuchtEndDatum AS date='01.05.2023'

SELECT	
		--Zimmer_ID,
		Zimmer_Nr,
		Zimmer_Plaetze,
		Zimmer_Klasse,
		StandardPreis,
		Preis_fuer_den_Kunden 
FROM [dbo].[tf_Frei_Zimmer_Suchen]
(	
 @KundID,							-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplaetze
 @GesuchtKost,						-- Hoechstpreis fuer ein Zimmer, den der Kunde zu zahlen bereit ist
 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

 @GesuchtBegDatum,					-- Gesuchte BeginDatum
 @GesuchtEndDatum					-- Gesuchte EndDatum
) 
--WHERE Zimmer_ID=@ZimmerID
ORDER BY Zimmer_ID;