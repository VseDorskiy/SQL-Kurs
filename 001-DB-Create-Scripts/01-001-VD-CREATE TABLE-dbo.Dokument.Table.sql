USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Dokument]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dokument](
	[DokumentID] [int] IDENTITY(1,1) NOT NULL,
	[Dokument] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Dokument] PRIMARY KEY CLUSTERED 
(
	[DokumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dokument] ON 

INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (1, N'Ausweis')
INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (2, N'ReisePass')
INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (3, N'Führerschein')
SET IDENTITY_INSERT [dbo].[Dokument] OFF
GO
