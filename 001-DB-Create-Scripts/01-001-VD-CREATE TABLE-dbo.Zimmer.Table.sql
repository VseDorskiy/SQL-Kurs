USE [Hotelprojekt]
GO
/****** Object:  Table [dbo].[Zimmer]    Script Date: 19.04.2023 13:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zimmer](
	[ZimmerID] [int] IDENTITY(1,1) NOT NULL,
	[Zimmernummer] [smallint] NOT NULL,
	[ZimmerzuordnungID] [int] NOT NULL,
 CONSTRAINT [PK_Zimmer] PRIMARY KEY CLUSTERED 
(
	[ZimmerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Zimmer] ON 

INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (1, 101, 2)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (2, 102, 2)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (3, 103, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (4, 104, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (5, 105, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (6, 106, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (7, 107, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (8, 108, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (9, 109, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (10, 110, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (11, 111, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (12, 112, 5)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (13, 113, 6)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (14, 114, 6)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (15, 117, 6)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (16, 118, 7)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (17, 201, 8)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (18, 202, 8)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (19, 203, 8)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (20, 204, 8)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (21, 205, 8)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (22, 206, 10)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (23, 207, 10)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (24, 208, 10)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (25, 209, 10)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (26, 210, 10)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (27, 301, 11)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (28, 302, 11)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (29, 303, 11)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (30, 304, 12)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (31, 305, 12)
INSERT [dbo].[Zimmer] ([ZimmerID], [Zimmernummer], [ZimmerzuordnungID]) VALUES (37, 401, 13)
SET IDENTITY_INSERT [dbo].[Zimmer] OFF
GO
/****** Object:  Index [IX_Zimmernummer]    Script Date: 19.04.2023 13:33:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Zimmernummer] ON [dbo].[Zimmer]
(
	[Zimmernummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Zimmer]  WITH CHECK ADD  CONSTRAINT [FK_Zimmer_Zimmerzuordnung] FOREIGN KEY([ZimmerzuordnungID])
REFERENCES [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID])
GO
ALTER TABLE [dbo].[Zimmer] CHECK CONSTRAINT [FK_Zimmer_Zimmerzuordnung]
GO
ALTER TABLE [dbo].[Zimmer]  WITH NOCHECK ADD  CONSTRAINT [CK_Zimmer_Zimmernummer] CHECK  (([Zimmernummer]>(100) AND [Zimmernummer]<(500)))
GO
ALTER TABLE [dbo].[Zimmer] CHECK CONSTRAINT [CK_Zimmer_Zimmernummer]
GO
