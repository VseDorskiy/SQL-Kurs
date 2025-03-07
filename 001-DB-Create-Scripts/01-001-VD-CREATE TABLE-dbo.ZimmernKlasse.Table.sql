USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[ZimmernKlasse]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZimmernKlasse](
	[ZimmernKlasseID] [int] IDENTITY(1,1) NOT NULL,
	[Klassenname] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ZimmernKlasse] PRIMARY KEY CLUSTERED 
(
	[ZimmernKlasseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZimmernKlasse] ON 

INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (1, N'Standard')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (2, N'Business')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (3, N'Lux')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (4, N'Königsklasse')
SET IDENTITY_INSERT [dbo].[ZimmernKlasse] OFF
GO
