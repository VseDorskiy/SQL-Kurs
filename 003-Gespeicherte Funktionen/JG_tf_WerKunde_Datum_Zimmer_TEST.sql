USE [Hotelprojekt]
GO

DECLARE @Zimmer smallint = 105
DECLARE @Datum date = '16.04.2023'

SELECT * FROM dbo.tf_WerKunde_Datum_Zimmer(@Zimmer, @Datum)

--SELECT * FROM dbo.tf_WerKunde_Datum_Zimmer(103, '18.04.2023')