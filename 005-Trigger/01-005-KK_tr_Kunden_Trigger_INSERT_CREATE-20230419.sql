USE [Hotelprojekt]
GO

/****** Object:  Trigger [dbo].[Tr_Kunden_Insert]    Script Date: 4/19/2023 9:55:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Protokollierung der Hinzufuegung von Kundendaten (INSERT)>
-- =============================================
CREATE TRIGGER [dbo].[Tr_Kunden_Insert]
   ON  [dbo].[Kunden] 
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
(Mode, KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, Email,
KreditKardNummer,StatusID)
SELECT 'I', KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, [E-Mail],
KreditKartNummer,StatusID 
FROM inserted;
END
GO

ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [Tr_Kunden_Insert]
GO


