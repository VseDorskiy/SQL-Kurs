USE [HotelProjekt]
GO
/****** Object:  Table [dbo].[Reinigung]    Script Date: 17.04.2023 11:07:38 ******/
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
GO
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (1, 1, CAST(N'2023-04-25' AS Date), 0)
GO
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (2, 2, CAST(N'2023-04-28' AS Date), 0)
GO
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (3, 3, CAST(N'2023-01-01' AS Date), 0)
GO
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (4, 2, CAST(N'2023-05-05' AS Date), 0)
GO
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (5, 1, CAST(N'2023-05-10' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[Reinigung] OFF
GO
ALTER TABLE [dbo].[Reinigung] ADD  CONSTRAINT [DF_Reinigung_Datum]  DEFAULT (getdate()) FOR [AnfrageDatum]
GO
