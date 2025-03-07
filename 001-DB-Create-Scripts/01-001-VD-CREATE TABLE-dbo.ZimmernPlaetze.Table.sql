USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[ZimmernPlaetze]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZimmernPlaetze](
	[ZimmernPlaetzeID] [int] IDENTITY(1,1) NOT NULL,
	[Platznummer] [tinyint] NOT NULL,
 CONSTRAINT [PK_ZimmernPlatze] PRIMARY KEY CLUSTERED 
(
	[ZimmernPlaetzeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZimmernPlaetze] ON 

INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (1, 1)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (2, 2)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (3, 3)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (4, 4)
SET IDENTITY_INSERT [dbo].[ZimmernPlaetze] OFF
GO
