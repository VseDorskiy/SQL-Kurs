USE [HotelProjekt]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 17.04.2023 14:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[PersonalID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Strasse] [nvarchar](50) NULL,
	[Hausnummer] [nvarchar](20) NULL,
	[PLZ] [nchar](5) NULL,
	[Ort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](50) NULL,
	[E-Mail] [nvarchar](50) NULL,
	[BerufID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (1, N'Abdul', N'Brooks', N'Congue', N'3', N'71364', N'Augsburg', N'(048) 85157235', N'semper.nam.tempor@yahoo.com', 1, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (3, N'Gary', N'Washington', N'Ornare', N'45', N'85172', N'Merzig', N'(0273) 56867351', N'elementum.lorem@icloud.edu', 1, 1)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (4, N'Alvin', N'Hanson', N'Adipiscing', N'5', N'8132 ', N'Bremerhaven', N'(036229) 484264', N'non.leo@icloud.com', 2, 2)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (5, N'Ignacia', N'Giles', N'Mauris', N'76', N'74454', N'Augsburg', N'(0268) 16847888', N'turpis.nulla.aliquet@outlook.com', 2, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (6, N'Carson', N'Jordan', N'Nascetur', N'43', N'8120 ', N'Berlin', N'(03543) 3745473', N'eleifend@yahoo.net', 2, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (7, N'Elliott', N'Riggs', N'Tempor', N'102', N'69238', N'Aschersleben', N'(09759) 7318731', N'ultrices.posuere@hotmail.couk', 1, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (8, N'Sara', N'Carey', N'Libero', N'4', N'79451', N'Bremerhaven', N'(034246) 536823', N'vitae.velit@hotmail.ca', 3, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (11, N'Kasimir', N'Casey', N'Nulla Street', N'4', N'59365', N'Hamburg', N'(032535) 526323', N'netus.et@aol.ca', 1, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (12, N'Remedios', N'Carlson', N'Vitae Rd.', N'76', N'42795', N'Heidenheim', N'(042) 25932183', N'quam.dignissim.pharetra@hotmail.com', 3, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (13, N'Jolie', N'Marquez', N'Adipiscing St.', N'12', N'74538', N'Flensburg', N'(05346) 5968483', N'aliquam@yahoo.com', 1, 2)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (14, N'Hadassah', N'Carroll', N'Orci. Road', N'16', N'1977 ', N'Ravensburg', N'(016) 57862193', N'pretium.neque.morbi@protonmail.com', 1, 2)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (16, N'Bevis', N'Wiggins', N'Magnis Rd.', N'3', N'66678', N'Wolfsburg', N'(00485) 5968111', N'dolor.quam.elementum@yahoo.net', 1, 3)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (17, N'Cameron', N'Estes', N'Dictum Rd.', N'2', N'38023', N'Sulzbach', N'(031589) 246654', N'risus.varius@protonmail.org', 3, 1)
GO
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (18, N'Alyssa', N'Le', N'Id Avenue', N'2', N'48019', N'Riesa', N'(083) 13366816', N'vulputate@aol.couk', 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20230417-084342]    Script Date: 17.04.2023 14:59:19 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20230417-084342] ON [dbo].[Personal]
(
	[Vorname] ASC,
	[Name] ASC,
	[Telefonnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Beruf] FOREIGN KEY([BerufID])
REFERENCES [dbo].[Beruf] ([BerufID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Beruf]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Position]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_EMail] CHECK  (([E-Mail] like '_%@%_.__%'))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_EMail]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Name_hat_Buchstaben_Zahlen] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Name],(20))=(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Name_hat_Buchstaben_Zahlen]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Name_Laenge] CHECK  ((len([Vorname])>(1) AND len([Name])>(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Name_Laenge]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Vorname_hat_Buchstaben_Zahlen] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Vorname],(20))=(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Vorname_hat_Buchstaben_Zahlen]
GO
