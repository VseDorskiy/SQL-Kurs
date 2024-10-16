USE [HotelProjekt]
GO

/****** Object:  UserDefinedFunction [dbo].[tf_Arbeitszeit_Jahr]    Script Date: 17.04.2023 11:18:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Suche nach zu reinigenden Zimmern>
-- =============================================
CREATE OR ALTER  FUNCTION [dbo].[tf_UngereinigteZimmer] 
(	
	@Datum date
)
RETURNS TABLE 
AS
RETURN 
(
SELECT TOP (100) PERCENT 
		dbo.Reinigung.ZimmerID, dbo.Reinigung.ReinigungID
		
FROM dbo.Reinigung 
		
WHERE (Reinigung.Erledigt = 0) AND (Reinigung.AnfrageDatum <= @Datum) 
ORDER BY Reinigung.ZimmerID)
GO