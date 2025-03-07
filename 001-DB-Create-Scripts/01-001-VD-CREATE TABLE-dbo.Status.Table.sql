USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
	[Rabatt] [tinyint] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (1, N'Standard', 0)
INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (2, N'StammKunder', 10)
INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (3, N'VIP', 15)
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
