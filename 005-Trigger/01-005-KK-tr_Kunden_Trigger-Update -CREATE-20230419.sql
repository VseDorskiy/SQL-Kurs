USE [Hotelprojekt]
GO

/****** Object:  Trigger [dbo].[Tr_KundenUPDATE]    Script Date: 4/19/2023 2:44:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Description:	<Protokollierung der Aktualisierung der Kundendaten (UPDATE)>
-- =============================================
CREATE   TRIGGER [dbo].[Tr_KundenUPDATE] 
   ON [dbo].[Kunden] 
   FOR UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
	(
		Mode, 
		KundenID, 
		[VorName], -- neu
		[VornameAlt], -- alt
		NachName, 
		[NachNameAlt],
		[DokumentID],
		[DokumentNummer],
		[StatusID], 
		[StatusIDAlt]
	)
	SELECT   
		'U', -- Mode
		KundenID,
		(SELECT [VorName] FROM inserted), -- neu
		[VorName], -- alt 
		(SELECT [NachName] FROM inserted), -- neu              
		NachName,  -- alt		
		[DokumentID],
		[DokumentNummer],
		(SELECT [StatusID] FROM inserted), -- neu   
		[StatusID] -- alt 
	FROM deleted;
END
GO

ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [Tr_KundenUPDATE]
GO


