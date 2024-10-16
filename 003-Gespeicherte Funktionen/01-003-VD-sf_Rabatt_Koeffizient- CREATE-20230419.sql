USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_Rabatt_Koeffizient]    Script Date: 19.04.2023 12:23:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Berechnung des KUndenrabatts>
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[sf_Rabatt_Koeffizient]  
(
	@KundenID int
)
RETURNS smallmoney
AS
BEGIN
	DECLARE @Koeff AS smallmoney;

	SELECT	@Koeff = dbo.Status.Rabatt
			FROM dbo.Kunden
			INNER JOIN [dbo].[Status]
			ON dbo.Kunden.StatusID = dbo.[Status].StatusID
			WHERE dbo.Kunden.KundenID=@KundenID;
	
	SET @Koeff=(1-@Koeff/100);
	
	RETURN @Koeff;

END
GO


