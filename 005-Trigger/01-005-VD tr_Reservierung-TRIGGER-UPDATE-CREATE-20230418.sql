USE [Hotelprojekt]
GO

/****** Object:  Trigger [dbo].[tr_Reservierung_UPDATE]    Script Date: 18.04.2023 07:56:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Protokollierung der Aktualisierung von Reservierungsdaten  (UPDATE)
-- =============================================
CREATE OR ALTER TRIGGER [dbo].[tr_Reservierung_UPDATE] 
   ON [dbo].[Reservierung]  
   FOR UPDATE 
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Reservierungslog]
	(
	Mode, 
	[ReservierungID],
	
	[ZimmerID_alt],
	[ZimmerID],
	
	[KundenID_alt],
	[KundenID],
	
	[GaesteAnzahl_alt],
	[GaesteAnzahl],
				
	[BeginDatum_alt],
	[BeginDatum],
	
	[EndDatum_alt],
	[EndDatum],
	
	[ReservierungsPreis_alt],
	[ReservierungsPreis]
	)

	SELECT
	'U',
	[ReservierungID],

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [ZimmerID] FROM inserted) = (SELECT [ZimmerID] FROM deleted)
			THEN NULL
		ELSE [ZimmerID]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [ZimmerID] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [KundenID] FROM inserted) = (SELECT [KundenID] FROM deleted)
			THEN NULL
		ELSE [KundenID]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [KundenID] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [GaesteAnzahl] FROM inserted) = (SELECT [GaesteAnzahl] FROM deleted)
			THEN NULL
		ELSE [GaesteAnzahl]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [GaesteAnzahl] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [BeginDatum] FROM inserted) = (SELECT [BeginDatum] FROM deleted)
			THEN NULL
		ELSE [BeginDatum]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [BeginDatum] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [EndDatum] FROM inserted) = (SELECT [EndDatum] FROM deleted)
			THEN NULL
		ELSE [EndDatum]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [EndDatum] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [ReservierungsPreis] FROM inserted) = (SELECT [ReservierungsPreis] FROM deleted)
			THEN NULL
		ELSE [ReservierungsPreis]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [ReservierungsPreis] FROM inserted)

	FROM deleted; 	
END
GO

ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_UPDATE]
GO


