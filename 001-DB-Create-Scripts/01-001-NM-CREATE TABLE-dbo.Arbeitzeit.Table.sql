USE [HotelProjekt]
GO
/****** Object:  Table [dbo].[Arbeitzeit]    Script Date: 17.04.2023 15:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arbeitzeit](
	[ArbeitzeitID] [int] IDENTITY(1,1) NOT NULL,
	[ReinigungID] [int] NOT NULL,
	[PersonalID] [int] NOT NULL,
	[Datum] [date] NOT NULL,
	[Schicht] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Arbeitzeit] PRIMARY KEY CLUSTERED 
(
	[ArbeitzeitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Arbeitzeit] ON 
GO
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (8, 1, 1, CAST(N'2023-04-23' AS Date), N'1')
GO
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (16, 1, 1, CAST(N'2023-04-25' AS Date), N'1')
GO
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (17, 1, 1, CAST(N'2023-04-25' AS Date), N'1')
GO
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (18, 1, 1, CAST(N'2023-04-23' AS Date), N'1')
GO
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (19, 1, 7, CAST(N'2023-04-23' AS Date), N'1')
GO
SET IDENTITY_INSERT [dbo].[Arbeitzeit] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20230417-102742]    Script Date: 17.04.2023 15:00:54 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20230417-102742] ON [dbo].[Arbeitzeit]
(
	[PersonalID] ASC,
	[Datum] ASC,
	[Schicht] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Arbeitzeit] ADD  CONSTRAINT [DF_Arbeitzeit_Datum]  DEFAULT (getdate()) FOR [Datum]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [FK_Arbeitzeit_Personal] FOREIGN KEY([PersonalID])
REFERENCES [dbo].[Personal] ([PersonalID])
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [FK_Arbeitzeit_Personal]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [FK_Arbeitzeit_Reinigung] FOREIGN KEY([ReinigungID])
REFERENCES [dbo].[Reinigung] ([ReinigungID])
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [FK_Arbeitzeit_Reinigung]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [CK_Arbeitzeit_Schicht] CHECK  (([Schicht]=(0) OR [Schicht]=(1)))
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [CK_Arbeitzeit_Schicht]
GO
