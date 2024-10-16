USE Hotelprojekt
GO

DECLARE @ErfolgStatus AS bit;
DECLARE @Feedback AS NVARCHAR(MAX);


EXEC [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis]
38,					-- ReservierungID from dbo.Reservierung
25,					-- Managerrabatt
50,					-- Hoehstrabatt vom Standardpreis 

@ErfolgStatus OUTPUT,
@Feedback OUTPUT;

SELECT @ErfolgStatus,@Feedback;
