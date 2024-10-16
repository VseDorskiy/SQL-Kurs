USE Hotelprojekt
GO

DECLARE @ZimmerID AS int=5;
DECLARE @a AS bit;

SET @a=[dbo].[sf_IstZimmerGereinigt] (@ZimmerID);

SELECT @a AS Erledigt;


  
  
