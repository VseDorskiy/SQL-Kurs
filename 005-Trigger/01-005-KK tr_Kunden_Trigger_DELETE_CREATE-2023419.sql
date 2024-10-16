USE [Hotelprojekt]
GO

/****** Object:  Trigger [dbo].[Tr_Kunden_Delete]    Script Date: 4/19/2023 10:00:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Protokollierung der Loeschung von Kundendaten (DELETE)>
-- =============================================
CREATE TRIGGER [dbo].[Tr_Kunden_Delete]
   ON  [dbo].[Kunden] 
   FOR DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
(Mode, KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, Email,
KreditKardNummer,StatusID)
SELECT 'D', KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, [E-Mail],
KreditKartNummer,StatusID 
FROM deleted;
END
GO

ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [Tr_Kunden_Delete]
GO


