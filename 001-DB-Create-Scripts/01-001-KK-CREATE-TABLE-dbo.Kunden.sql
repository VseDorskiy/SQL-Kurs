USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 4/17/2023 12:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[KundenID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[DokumentID] [int] NOT NULL,
	[Dokumentnummer] [nvarchar](20) NOT NULL,
	[Geburtsdatum] [date] NOT NULL,
	[Strasse] [nvarchar](50) NULL,
	[Hausnummer] [nvarchar](5) NULL,
	[PLZ] [int] NULL,
	[Ort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](20) NULL,
	[E-Mail] [nvarchar](100) NULL,
	[Kreditkartnummer] [char](16) NOT NULL,
	[StatusID] [int] NOT NULL,
	[Kommentar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kunden] PRIMARY KEY CLUSTERED 
(
	[KundenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kunden] ON 
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (1, N'Guinevere', N'Bentley', 3, N'A972BNA0483', CAST(N'1986-05-31' AS Date), N'Tentum ', N'28', 41460, N'Bremen', N'(0777) 86988741', N'guinevere@outlook.net', N'3742524762435870', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (2, N'William', N'Saunders', 1, N'A02134V12', CAST(N'1974-07-11' AS Date), N'Velit', N'14', 58027, N'Schleswig-Holstein', N'(0679) 57257738', N'william@hotmail.com', N'4539568612326320', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (3, N'Rajah', N'Rosa', 3, N'B441VBN0107', CAST(N'2009-06-27' AS Date), N'Ullamcorper', N'28', 63785, N'Sachsen-Anhalt', N'(0565) 23177250', N'rajah7278@yahoo.com', N'5156546133548240', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (4, N'Ivan', N'Petroff', 1, N'asd123456', CAST(N'1972-04-15' AS Date), NULL, NULL, NULL, NULL, NULL, N'er@a.aa', N'1234123412341234', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (5, N'Azalia', N'Holt', 2, N'B2697961', CAST(N'1965-05-31' AS Date), N'Erat Ave', N'34', 36559, N'Berlin', N'(0331) 03035035', N'azalia4470@yahoo.edu', N'3742743465635490', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (6, N'Dane', N'Cruz', 3, N'V234XDS6448', CAST(N'1998-07-25' AS Date), N'Augue ', N'6', 92740, N'Sachsen-Anhalt', N'(0818) 71916185', N'dane@aol.edu', N'5328740964476860', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (7, N'John', N'Smith', 1, N'qwe123987', CAST(N'1914-07-05' AS Date), NULL, NULL, NULL, NULL, NULL, N'df@g.com', N'1234123412341235', 3, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (8, N'Noel', N'Drake', 2, N'G2868848', CAST(N'1956-11-12' AS Date), N'Aliquet', N'10', 45134, N'Rheinland-Pfalz', N'(0338) 87207316', N'noel@aol.net', N'3728853831944840', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (9, N'Avye', N'O''Neill', 1, N'Z02134S13', CAST(N'1951-03-06' AS Date), N'Box 822, 2131 Primis Av.', N'24', 62793, N'Niedersachsen', N'(0192) 85178376', N'avye2371@icloud.com', N'4247236835374360', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (10, N'Yoko', N'Kemp', 3, N'A860NMJ5563', CAST(N'1966-12-19' AS Date), N'Erat Av.', N'11', 34531, N'Hamburg', N'(0648) 15220686', N'yoko7103@aol.org', N'4132565658821110', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (11, N'Jeremy', N'Hendricks', 2, N'C4395623', CAST(N'2010-07-24' AS Date), N'Gravida ', N'48', 58266, N'Rheinland-Pfalz', N'(0550) 35377941', N'jeremy@protonmail.edu', N'3435164761863470', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (12, N'Iola', N'Branch', 3, N'K909PKJ1493', CAST(N'1950-12-23' AS Date), N'Box 212, 6726 Faucibus ', N'47', 98283, N'Baden-Württemberg', N'(0474) 57003534', N'iola3203@google.edu', N'3779399134162850', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (13, N'Angelica', N'Harris', 1, N'B0211SV14', CAST(N'1950-11-16' AS Date), N'Taciti', N'23', 23318, N'Mecklenburg-Vorpommern', N'(0548) 21318139', N'angelica4836@gmail.com', N'3248755897452540', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (14, N'Wyatt', N'Tillman', 1, N'S04134V14', CAST(N'1986-06-11' AS Date), N'Nisl.', N'36', 27638, N'Sachsen-Anhalt', N'(0977) 68464984', N'wyatt@outlook.org', N'5377375652477850', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (15, N'Patrick', N'Goodman', 3, N'E264PLW3160', CAST(N'1956-08-31' AS Date), N'Lectus ', N'17', 85044, N'Baden-Württemberg', N'(0482) 58829597', N'patrick5919@hotmail.com', N'5541553322555210', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (16, N'Nasim', N'Moody', 1, N'B0213SV15', CAST(N'1949-04-09' AS Date), N'Ut Av.', N'45', 57171, N'NoStrasserhein-Westphalen', N'(0647) 71180755', N'nasim@icloud.org', N'4485287364834440', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (17, N'Delilah', N'Jacobs', 1, N'C02134V17', CAST(N'2001-02-05' AS Date), N'Donec Avenue', N'22', 19555, N'Brandenburg', N'(0565) 80668849', N'delilah@gmail.com', N'1244893231794160', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (18, N'Caleb', N'Hawkins', 1, N'A02134V13', CAST(N'1955-03-06' AS Date), N'Mattis. Street', N'22', 53228, N'Hamburg', N'(0392) 60168193', N'caleb@yahoo.net', N'1236135896190540', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (19, N'Pamela', N'Reed', 2, N'B2697962', CAST(N'1950-06-02' AS Date), N'Elit. Avenue', N'44', 24538, N'Hessen', N'(0362) 65777382', N'pamela@outlook.uk', N'1241880326710260', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (20, N'Dillon', N'Meyers', 2, N'A2312369', CAST(N'1956-12-21' AS Date), N'Arcu ', N'49', 76735, N'Berlin', N'(0346) 67698109', N'dillon@protonmail.org', N'1243753175755060', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (21, N'Veda', N'Nicholson', 3, N'P634TFR6185', CAST(N'2001-05-20' AS Date), N'Erat ', N'3', 52176, N'Saarland', N'(0281) 96430355', N'veda@aol.edu', N'1235725456860750', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (22, N'Isadora', N'Noel', 2, N'C4395622', CAST(N'2017-06-08' AS Date), N'Maecenas ', N'29', 47842, N'Hamburg', N'(0673) 07842474', N'isadora7761@outlook.ca', N'1237433028284000', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (23, N'Noel', N'Mcgee', 2, N'D9210657', CAST(N'1993-03-05' AS Date), N'Ligula', N'45', 38387, N'Bayern', N'(0786) 77123886', N'noel@protonmail.net', N'4684442899602400', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (24, N'Ori', N'Carroll', 2, N'E2609042', CAST(N'1978-07-30' AS Date), N'Pellentesque Avenue', N'48', 84281, N'Saarland', N'(0204) 88646055', N'ori4609@hotmail.edu', N'5044763385559220', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (25, N'Uta', N'Gilbert', 2, N'F4771701', CAST(N'2010-04-24' AS Date), N'Magna', N'17', 31665, N'Bayern', N'(0195) 28766956', N'uta6328@icloud.com', N'5379197137884690', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (26, N'Uriah', N'Mcbride', 1, N'B0213SV14', CAST(N'1992-10-09' AS Date), N'Nonummy Avenue', N'24', 83603, N'Mecklenburg-Vorpommern', N'(0475) 74385103', N'uriah9680@yahoo.ca', N'7215552700492650', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (27, N'Lucian', N'Myers', 3, N'L6153HHJ194', CAST(N'1971-01-06' AS Date), N'Segburger', N'7', 84336, N'Sachsen', N'(0731) 64531357', N'lucian3152@yahoo.ca', N'5934359174845790', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (28, N'Zahir', N'Hart', 1, N'Z02134S14', CAST(N'1964-06-06' AS Date), N'Sit ', N'32', 66059, N'Hessen', N'(0779) 75157411', N'zahir@outlook.edu', N'5823634176853360', 3, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (29, N'Hedwig', N'Nixon', 1, N'S04134V16', CAST(N'1978-08-21' AS Date), N'Faucibus Av.', N'42', 28253, N'NoStrasserhein-Westphalen', N'(0168) 76464759', N'hedwig2518@hotmail.uk', N'8511613779487210', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (30, N'Willa', N'Burke', 2, N'C4395624', CAST(N'1973-05-30' AS Date), N'P.O.Box 649, 5238 Arcu. ', N'5', 11531, N'Berlin', N'(0164) 61910868', N'willa6217@google.org', N'5498457635223030', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (31, N'Florence', N'Schultz', 1, N'A02134VF2', CAST(N'2000-03-15' AS Date), N'P.O.Box 638, 3438 Dictum. ', N'9', 32623, N'Bremen', N'(0038) 65427523', N'florence@gmail.com', N'6550848311012040', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (32, N'Perry', N'Tucker', 3, N'B130NGH9508', CAST(N'1942-10-09' AS Date), N'P.O.Box 962, 4518 Ipsum. ', N'48', 26313, N'NoStrasserhein-Westphalen', N'(0533) 60891207', N'perry@icloud.net', N'5157194403097050', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (33, N'Sebastian', N'Cross', 2, N'D9210659', CAST(N'1947-02-18' AS Date), N'Consectetuer ', N'24', 71985, N'Berlin', N'(0253) 05738047', N'sebastian2367@icloud.ca', N'5550533987831390', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (34, N'Elizabeth', N'Mckay', 1, N'B0219SV16', CAST(N'1962-03-15' AS Date), N'Quisque Street', N'13', 45391, N'Brandenburg', N'(0467) 47089531', N'elizabeth@icloud.edu', N'6299793910347240', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (35, N'Maryam', N'Baldwin', 3, N'B837LKJ8889', CAST(N'2002-02-11' AS Date), N'Suspendisse', N'32', 6072, N'Baden-Württemberg', N'(0515) 57576278', N'maryam@hotmail.org', N'5007363990743060', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (36, N'Shelly', N'WoodwaStrasse', 2, N'A2312370', CAST(N'1984-03-22' AS Date), N'P.O.Box 329, 5367 Nulla Avenue', N'7', 31871, N'Bayern', N'(0961) 69344877', N'shelly4341@aol.org', N'6790201225307640', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (37, N'Christian', N'Hicks', 1, N'B0211SV15', CAST(N'1996-03-11' AS Date), N'Inteum .', N'12', 11768, N'Rheinland-Pfalz', N'(0783) 57828277', N'christian@yahoo.net', N'6350103718818840', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (38, N'Brennan', N'Wolf', 1, N'S04134V15', CAST(N'1964-10-09' AS Date), N'P.O.Box 980, 8742 Donec ', N'43', 61181, N'Bayern', N'(0761) 61617609', N'brennan@aol.com', N'7265623794473840', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (39, N'April', N'Mayer', 2, N'D9210658', CAST(N'1954-07-01' AS Date), N'Ut Ave', N'41', 61652, N'Sachsen', N'(0552) 62680783', N'april@hotmail.net', N'8620430472921560', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (40, N'Elizabeth', N'Winters', 2, N'E2609043', CAST(N'1951-06-04' AS Date), N'Vel ', N'13', 17625, N'Rheinland-Pfalz', N'(0492) 19175064', N'elizabeth@aol.com', N'6648227391187230', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (41, N'Petra', N'Britt', 3, N'S364OPJ9795', CAST(N'2003-09-13' AS Date), N'P.OBox 548, 1730 Tincidunt ', N'41', 55313, N'Sachsen-Anhalt', N'(0555) 09021667', N'petra7623@yahoo.net', N'4331561947862700', 3, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (42, N'Adam', N'Morrow', 1, N'B0213SV16', CAST(N'1943-10-15' AS Date), N'Cursus', N'29', 43875, N'Bremen', N'(0564) 73468028', N'adam@aol.org', N'8322628705759720', 2, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (43, N'Berk', N'Fischer', 1, N'C02134V18', CAST(N'1974-06-22' AS Date), N'Convallis ', N'11', 38562, N'Bayern', N'(0954) 44041711', N'berk6191@icloud.net', N'7681884923622720', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (44, N'Macey', N'Goff', 3, N'A864DSE9751', CAST(N'1993-10-22' AS Date), N'Placerat Av.', N'21', 78935, N'Berlin', N'(0916) 66882572', N'macey3730@google.ca', N'7287597942381700', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (45, N'Ebony', N'Fuller', 2, N'F4771702', CAST(N'2006-05-24' AS Date), N'Duis ', N'28', 27495, N'Saarland', N'(0826) 72618334', N'ebony3990@aol.ca', N'8302758581979610', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (46, N'Ashely', N'Simmons', 3, N'A949OPK2937', CAST(N'2017-07-01' AS Date), N'Dui', N'25', 13896, N'Berlin', N'(0214) 13182227', N'ashely6172@yahoo.org', N'8475688569361320', 3, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (47, N'Irma', N'Reese', 3, N'S360OKL5975', CAST(N'1994-08-25' AS Date), N'Netus ', N'5', 45144, N'Brandenburg', N'(0040) 45532533', N'irma@protonmail.edu', N'8019378775848950', 3, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (48, N'Eve', N'Carpenter', 2, N'G2868849', CAST(N'1975-09-19' AS Date), N'Box 665, 9399 Aliquet Av.', N'24', 3396, N'Berlin', N'(0653) 51197878', N'eve5818@outlook.ca', N'7934092377971700', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (49, N'Addison', N'Huber', 1, N'A02134VF1', CAST(N'2019-01-13' AS Date), N'Semper ', N'13', 53937, N'Saarland', N'(0781) 17357285', N'addison@aol.ca', N'6692778088900540', 1, NULL)
GO
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (50, N'Cynthia', N'Carpenter', 1, N'B0219SV15', CAST(N'2014-12-21' AS Date), N'Nec', N'13', 65499, N'Sachsen', N'(0581) 44817211', N'cynthia9762@icloud.org', N'8391730441732100', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Kunden] OFF
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [FK_Kunden_Dokument] FOREIGN KEY([DokumentID])
REFERENCES [dbo].[Dokument] ([DokumentID])
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [FK_Kunden_Dokument]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [FK_Kunden_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [FK_Kunden_Status]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_EMail] CHECK  (([E-Mail] like '_%@%_.__%'))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_EMail]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Kreditkartnummer] CHECK  ((isnumeric([Kreditkartnummer])=(1) AND len([Kreditkartnummer])=(16)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Kreditkartnummer]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Name_Laenge] CHECK  ((len([Vorname])>(1) AND len([Nachname])>(1)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Name_Laenge]
GO
