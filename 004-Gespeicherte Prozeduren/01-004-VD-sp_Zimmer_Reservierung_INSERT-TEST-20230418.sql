DECLARE @ErfolgStatus AS bit;
DECLARE @Feedback AS NVARCHAR(MAX);


EXEC [dbo].[sp_Zimmer_Reservierung_INSERT]
10,					-- KundenID from dbo.Kunden
8,					-- Ausgewaehltes ZimmerID
'19-04-2023',		-- Gesuchte BeginDatum
'23-04-2023',		-- Gesuchte EndDatum
@ErfolgStatus OUTPUT,
@Feedback OUTPUT;

SELECT @ErfolgStatus,@Feedback;
