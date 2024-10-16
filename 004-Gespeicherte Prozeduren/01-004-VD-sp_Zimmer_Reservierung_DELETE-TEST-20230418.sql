USE Hotelprojekt
GO

DECLARE @ErfolgStatus AS bit;
DECLARE @Feedback AS NVARCHAR(MAX);


EXEC [dbo].[sp_Zimmer_Reservierung_DELETE]
47,					-- ReservierungID from dbo.Reservierung

@ErfolgStatus OUTPUT,
@Feedback OUTPUT;

SELECT @ErfolgStatus,@Feedback;
