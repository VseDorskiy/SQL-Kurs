USE Hotelprojekt
GO

DECLARE @ID int = 7
DECLARE @Feedback AS NVARCHAR(MAX)
--DECLARE @msg AS NVARCHAR(MAX)

EXEC sp_Kunden_Status_UPDATE 
@ID,


@Feedback OUTPUT
--@msg OUTPUT

SELECT @Feedback  AS 'Kommentar';

---Tabelle RKunden---
SELECT 
dbo.Kunden.KundenID,
dbo.Kunden.StatusID
FROM dbo.Kunden
WHERE dbo.Kunden.KundenID = @ID

---Tabelle Reservierung---
SELECT dbo.Reservierung.KundenID  AS 'Kunde_ID_Reservierungen'
FROM dbo.Reservierung
WHERE KundenID = @ID





