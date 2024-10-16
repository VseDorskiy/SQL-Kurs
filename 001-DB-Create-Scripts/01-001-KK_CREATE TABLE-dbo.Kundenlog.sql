USE [Hotelprojekt]
GO

/****** Object:  Table [dbo].[KundenLog]    Script Date: 4/19/2023 2:28:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[KundenLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [char](1) NOT NULL,
	[EditOn] [nvarchar](50) NOT NULL,
	[EditUser] [nvarchar](50) NOT NULL,
	[KundenId] [int] NOT NULL,
	[VorName] [nvarchar](50) NOT NULL,
	[VornameAlt] [nvarchar](50) NULL,
	[NachName] [nvarchar](50) NOT NULL,
	[NachNameAlt] [nvarchar](50) NULL,
	[DokumentID] [int] NOT NULL,
	[DokumentNummer] [nvarchar](50) NOT NULL,
	[Strasse] [nvarchar](50) NULL,
	[HausNummer] [nvarchar](5) NULL,
	[Ort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[KreditkardNummer] [char](16) NULL,
	[StatusID] [int] NOT NULL,
	[StatusIDAlt] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[KundenLog] ADD  CONSTRAINT [DF_KundenLog_EditOn]  DEFAULT (getdate()) FOR [EditOn]
GO

ALTER TABLE [dbo].[KundenLog] ADD  CONSTRAINT [DF_KundenLog_EditUser]  DEFAULT (original_login()) FOR [EditUser]
GO


