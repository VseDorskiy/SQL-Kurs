USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Reservierung]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservierung](
	[ReservierungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmerID] [int] NOT NULL,
	[KundenID] [int] NOT NULL,
	[GaesteAnzahl] [tinyint] NOT NULL,
	[BeginDatum] [date] NOT NULL,
	[EndDatum] [date] NOT NULL,
	[ReservierungsPreis] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Reservierung] PRIMARY KEY CLUSTERED 
(
	[ReservierungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reservierung] ON 

INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (6, 3, 4, 2, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-19' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (7, 7, 7, 2, CAST(N'2023-04-18' AS Date), CAST(N'2023-04-25' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (13, 5, 7, 2, CAST(N'2023-04-16' AS Date), CAST(N'2023-04-26' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (17, 6, 7, 2, CAST(N'2023-04-25' AS Date), CAST(N'2023-04-28' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (18, 5, 7, 2, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-08' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (25, 6, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (32, 11, 7, 2, CAST(N'2023-08-20' AS Date), CAST(N'2023-08-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (36, 5, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (37, 7, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (48, 3, 7, 2, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-22' AS Date), 127.5000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (49, 3, 5, 2, CAST(N'2023-04-22' AS Date), CAST(N'2023-04-23' AS Date), 135.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (50, 4, 8, 2, CAST(N'2023-04-22' AS Date), CAST(N'2023-04-23' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (51, 8, 10, 2, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-23' AS Date), 150.0000)
SET IDENTITY_INSERT [dbo].[Reservierung] OFF
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [FK_Reservierung_Kunden] FOREIGN KEY([KundenID])
REFERENCES [dbo].[Kunden] ([KundenID])
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [FK_Reservierung_Kunden]
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [FK_Reservierung_Zimmer] FOREIGN KEY([ZimmerID])
REFERENCES [dbo].[Zimmer] ([ZimmerID])
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [FK_Reservierung_Zimmer]
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [CK_Reservierung_GaesteAnzahl] CHECK  (([GaesteAnzahl]>(0)))
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [CK_Reservierung_GaesteAnzahl]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_DELETE]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	ReservierungsDaten protokolieren (DELETE)
-- =============================================
CREATE     TRIGGER [dbo].[tr_Reservierung_DELETE] 
   ON [dbo].[Reservierung]  
   FOR DELETE 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    ------------- DECLARE -----------------
	
	--DECLARE @KundID AS int;
		
	--DECLARE @ZimmerNr AS tinyint;
	--DECLARE @ZimmID AS int;

	--DECLARE @GesuchtBegDatum AS date;
	--DECLARE @GesuchtEndDatum AS date;

	---------Variables ausfüllen----------------
	--SELECT @KundID = KundenID FROM inserted;
	--SELECT @ZimmID = ZimmerID FROM inserted;
	
	--SELECT @GesuchtBegDatum = BeginDatum FROM inserted;
	--SELECT @GesuchtEndDatum = EndDatum FROM inserted;

	
	--SET @ZimmerNr =
	--	(SELECT Zimmernummer FROM dbo.Zimmer
	--	WHERE ZimmerID=@ZimmID
	--	);
	---------------Meldung aufbauen-----------------------
	DECLARE @msg AS NVARCHAR(MAX);
	
	--SET @msg = CONCAT_WS(' ', 'OK! Zimmer_Nr',
	--					@ZimmerNr, 'ist für',
	--					@GesuchtBegDatum, '-',
	--					@GesuchtEndDatum,'erfolgreich gebucht');

	INSERT INTO [dbo].[Reservierungslog]
				(Mode, [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],[Meldung])
		SELECT   'D',  [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],@msg  
		FROM deleted;	
END
GO
ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_DELETE]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_INSERT]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	ReservierungsDaten protokolieren (INSERT)
-- =============================================
CREATE   TRIGGER [dbo].[tr_Reservierung_INSERT] 
   ON [dbo].[Reservierung]  
   FOR INSERT 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    ------------- DECLARE -----------------
	
	DECLARE @KundID AS int;
		
	DECLARE @ZimmerNr AS tinyint;
	DECLARE @ZimmID AS int;

	DECLARE @GesuchtBegDatum AS date;
	DECLARE @GesuchtEndDatum AS date;

	-------Variables ausfüllen----------------
	SELECT @KundID = KundenID FROM inserted;
	SELECT @ZimmID = ZimmerID FROM inserted;
	
	SELECT @GesuchtBegDatum = BeginDatum FROM inserted;
	SELECT @GesuchtEndDatum = EndDatum FROM inserted;

	
	SET @ZimmerNr =
		(SELECT Zimmernummer FROM dbo.Zimmer
		WHERE ZimmerID=@ZimmID
		);
	---------------Meldung aufbauen-----------------------
	DECLARE @msg AS NVARCHAR(MAX);
	
	SET @msg = CONCAT_WS(' ', 'OK! Zimmer_Nr',
						@ZimmerNr, 'ist für',
						@GesuchtBegDatum, '-',
						@GesuchtEndDatum,'erfolgreich gebucht');

	INSERT INTO [dbo].[Reservierungslog]
				(Mode, [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],[Meldung])
		SELECT   'I',  [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],@msg  
		FROM inserted;	
END
GO
ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_INSERT]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_UPDATE]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	ReservierungsDaten protokolieren (UPDATE)
-- =============================================
CREATE   TRIGGER [dbo].[tr_Reservierung_UPDATE] 
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
