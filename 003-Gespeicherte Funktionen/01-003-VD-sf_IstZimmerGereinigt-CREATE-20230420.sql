USE [Hotelprojekt]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Ueberprueft, ob das Zimmer gereingt ist
-- =============================================

CREATE OR ALTER FUNCTION [dbo].[sf_IstZimmerGereinigt] --Ergebnis  = 1 - Zimmer ist sauber, 0 - muss gereinigt werden
(
	@ZimmerID AS int 
)
RETURNS bit
AS
BEGIN
	DECLARE @ErledigtStatus AS bit;

	SET @ErledigtStatus=
	(
	SELECT TOP 1 
				[Erledigt]
	FROM [Hotelprojekt].[dbo].[Reinigung]
	WHERE [ZimmerID] = @ZimmerID 
		AND DATEDIFF(DAY,GETDATE(),[AnfrageDatum])<=0
	ORDER BY [AnfrageDatum] DESC
	);
	
	---------------------- Ueberpruefung des Reinigungdatums --------------------------

	IF @ErledigtStatus = 1
	BEGIN
		DECLARE @Reinigung_ID AS int;
		DECLARE @Reinigung_Datum AS date;

		SET @Reinigung_ID=
		(
		SELECT TOP 1 
					[ReinigungID]
		FROM [Hotelprojekt].[dbo].[Reinigung]
		WHERE [ZimmerID] = @ZimmerID 
			AND DATEDIFF(DAY,GETDATE(),[AnfrageDatum])<=0
		ORDER BY [AnfrageDatum] DESC
		);
				
		SELECT @Reinigung_Datum = [Datum] FROM [dbo].[Arbeitzeit]
		WHERE [ReinigungID]=@Reinigung_ID;

		IF @Reinigung_Datum IS NOT NULL	
			AND DATEDIFF(DAY,GETDATE(),@Reinigung_Datum)>0
				SET @ErledigtStatus = 0;
	END

	IF @ErledigtStatus IS NULL 
		SET @ErledigtStatus = 1;

	RETURN @ErledigtStatus; 
END
GO


