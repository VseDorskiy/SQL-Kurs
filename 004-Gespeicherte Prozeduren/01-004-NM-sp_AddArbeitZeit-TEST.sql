USE HotelProjekt;
GO

DECLARE	@Erfolg bit; -- geklappt oder nicht
DECLARE	@Feedback VARCHAR(MAX);
EXEC [dbo].[sp_AddArbeitZeit]
	'10.05.2023', --Datum
	5, -- ReinigungID
	1, --BerufID (1- Reinigungabteilung)
	3, --PositionID (3 - Mitarbeiter)
	--'Test INSERT 25.04.2023',
	----------
	@Erfolg OUTPUT,
	@Feedback OUTPUT;


SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'Rückgabemeldung';

