USE [Hotelprojekt]
GO

DECLARE @Zimmer smallint = 101
DECLARE @Datum date = '10.05.2023'

SELECT * FROM tf_WerPersonal_Datum_Zimmer_Reiniegung(@Zimmer, @Datum)