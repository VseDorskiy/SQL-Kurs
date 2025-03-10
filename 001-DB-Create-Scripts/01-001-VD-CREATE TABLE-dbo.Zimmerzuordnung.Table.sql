USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Zimmerzuordnung]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zimmerzuordnung](
	[ZimmerzuordnungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmernKlasseID] [int] NOT NULL,
	[ZimmernPlaetzeID] [int] NOT NULL,
	[KostProNacht] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Zimmerzuordnung] PRIMARY KEY CLUSTERED 
(
	[ZimmerzuordnungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Zimmerzuordnung] ON 

INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (2, 1, 1, 150.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (5, 1, 2, 150.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (6, 1, 3, 180.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (7, 1, 4, 200.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (8, 2, 1, 250.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (10, 2, 2, 350.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (11, 3, 1, 300.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (12, 3, 2, 450.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (13, 4, 4, 750.0000)
SET IDENTITY_INSERT [dbo].[Zimmerzuordnung] OFF
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [FK_Zimmerzuordnung_ZimmernKlasse] FOREIGN KEY([ZimmernKlasseID])
REFERENCES [dbo].[ZimmernKlasse] ([ZimmernKlasseID])
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [FK_Zimmerzuordnung_ZimmernKlasse]
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [FK_Zimmerzuordnung_ZimmernPlaetze] FOREIGN KEY([ZimmernPlaetzeID])
REFERENCES [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID])
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [FK_Zimmerzuordnung_ZimmernPlaetze]
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [CK_Zimmerzuordnung_KostProNacht] CHECK  (([KostProNacht]>(10) AND [KostProNacht]<(10000)))
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [CK_Zimmerzuordnung_KostProNacht]
GO
