USE [HotelProjekt]
GO

/****** Object:  UserDefinedFunction [dbo].[tf_PersonalFreiDatum]    Script Date: 17.04.2023 11:39:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Description:	<Erstellung einer Liste der Mitarbeiter mit weniger als 2 Datensätzen zu einem bestimmten Datum>
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[tf_PersonalFreiDatum] 
(	
	@Datum date,
	@Beruf int,
	@Position int
)
RETURNS TABLE 
AS
RETURN 
(
SELECT TOP (100) PERCENT 
		dbo.Personal.PersonalID 
		
FROM dbo.Personal LEFT JOIN  dbo.Arbeitzeit
	ON dbo.Arbeitzeit.PersonalID = dbo.Personal.PersonalID
		
-- Wir erhalten eine Liste der Mitarbeiter mit weniger als 2 Datensätzen zu einem bestimmten Datum
WHERE (dbo.Personal.BerufID = @Beruf) AND (dbo.Personal.PositionID = @Position) 
		AND ((SELECT COUNT(*) 
			FROM dbo.Arbeitzeit 
			WHERE (dbo.Arbeitzeit.Datum = @Datum)
			AND (dbo.Arbeitzeit.PersonalID = dbo.Personal.PersonalID)) < 2)
ORDER BY Personal.PersonalID
)
GO


