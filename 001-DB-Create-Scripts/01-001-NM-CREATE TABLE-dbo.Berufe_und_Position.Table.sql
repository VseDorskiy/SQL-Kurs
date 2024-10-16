USE [HotelProjekt]
GO
/****** Object:  Table [dbo].[Beruf]    Script Date: 14.04.2023 15:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beruf](
	[BerufID] [int] IDENTITY(1,1) NOT NULL,
	[Beruf] [nvarchar](50) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Beruf] PRIMARY KEY CLUSTERED 
(
	[BerufID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 14.04.2023 15:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Kommentar] [ntext] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Beruf] ON 
GO
INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (1, N'Reinugung', NULL)
GO
INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (2, N'Manager', NULL)
GO
INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (3, N'Reception', NULL)
GO
SET IDENTITY_INSERT [dbo].[Beruf] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 
GO
INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (1, N'Geschaeftsleiter', NULL)
GO
INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (2, N'Abteilungsleiter', NULL)
GO
INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (3, N'Mitarbeiter', NULL)
GO
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
