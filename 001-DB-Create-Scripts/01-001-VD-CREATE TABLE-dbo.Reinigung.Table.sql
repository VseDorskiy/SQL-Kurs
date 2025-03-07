USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Reinigung]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reinigung](
	[ReinigungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmerID] [int] NOT NULL,
	[AnfrageDatum] [date] NOT NULL,
	[Erledigt] [bit] NOT NULL,
 CONSTRAINT [PK_Reinigung] PRIMARY KEY CLUSTERED 
(
	[ReinigungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reinigung] ON 

INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (1, 3, CAST(N'2023-04-17' AS Date), 1)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (2, 7, CAST(N'2023-04-25' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (3, 5, CAST(N'2023-04-26' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (4, 2, CAST(N'2023-04-18' AS Date), 1)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (5, 6, CAST(N'2023-04-17' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (6, 5, CAST(N'2023-04-19' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (10, 6, CAST(N'2023-06-22' AS Date), 1)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (13, 11, CAST(N'2023-08-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (14, 5, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (15, 7, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (17, 1, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (24, 3, CAST(N'2023-04-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (25, 12, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (26, 3, CAST(N'2023-04-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (27, 3, CAST(N'2023-04-23' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (28, 4, CAST(N'2023-04-23' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (29, 8, CAST(N'2023-04-23' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Reinigung] OFF
GO
ALTER TABLE [dbo].[Reinigung] ADD  CONSTRAINT [DF_Reinigung_Datum]  DEFAULT (getdate()) FOR [AnfrageDatum]
GO
ALTER TABLE [dbo].[Reinigung]  WITH CHECK ADD  CONSTRAINT [FK_Reinigung_Zimmer] FOREIGN KEY([ZimmerID])
REFERENCES [dbo].[Zimmer] ([ZimmerID])
GO
ALTER TABLE [dbo].[Reinigung] CHECK CONSTRAINT [FK_Reinigung_Zimmer]
GO
