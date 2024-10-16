USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_Zeitstempel]    Script Date: 19.04.2023 12:51:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Erstellung des Namens mit dem Zeitstempel
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[sf_Zeitstempel]
(
) 
RETURNS char(18)
AS
BEGIN
	
	RETURN FORMAT(GETDATE(), 'yyyyMMdd-HHmmssfff');

END
GO


