USE Hotelprojekt
GO
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Einholung von Informationen über das Reinigungspersonal>
-- =============================================
CREATE OR ALTER FUNCTION tf_WerPersonal_Datum_Zimmer_Reiniegung
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
SELECT        dbo.Personal.PersonalID, 
	dbo.Personal.Vorname, 
	dbo.Personal.Name, 
	dbo.Personal.Telefonnummer, 
	dbo.Personal.[E-Mail], 
	dbo.Arbeitzeit.Datum, 
	dbo.Zimmer.Zimmernummer, 
	dbo.Reinigung.Erledigt
FROM  dbo.Reinigung INNER JOIN
      dbo.Personal INNER JOIN
      dbo.Arbeitzeit ON dbo.Personal.PersonalID = dbo.Arbeitzeit.PersonalID ON dbo.Reinigung.ReinigungID = dbo.Arbeitzeit.ReinigungID INNER JOIN
      dbo.Zimmer ON dbo.Reinigung.ZimmerID = dbo.Zimmer.ZimmerID
WHERE (@Zimmer = dbo.Zimmer.Zimmernummer) AND (@Datum = dbo.Arbeitzeit.Datum) AND dbo.Reinigung.Erledigt = 1
)
GO
