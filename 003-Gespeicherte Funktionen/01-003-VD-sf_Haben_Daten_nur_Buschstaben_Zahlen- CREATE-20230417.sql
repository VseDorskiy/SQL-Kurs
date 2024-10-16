USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]    Script Date: 17.04.2023 18:55:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<DatenUeberpruefung fuer Zahlen und Latinische Buchstaben>
-- =============================================
CREATE OR ALTER FUNCTION [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] 
(
	@Str AS NVARCHAR(MAX),
	@Parameter AS tinyint=10	--10 nur Latinische Buchstaben [a-z,A-Z],
								--01 nur Zahlen [0-9],
								--11 nur Latinische Buchstaben und Zahlen [a-z,A-Z,0-9],
								--02 nur Zahlen und Blanks [0-9,' '],
								--20 nur Latinische Buchstaben, Blanks [a-z,A-Z,' '],
								--22 nur Latinische Buchstaben, Zahlen, Blanks [a-z,A-Z,0-9,' ']
)
RETURNS bit
AS
BEGIN
	DECLARE @Res AS bit =0;

	IF (@Parameter=10 
		AND @Str NOT LIKE '%[^a-zA-Z]%'
		) SET @Res=1;

	IF (@Parameter=1 
		AND @Str NOT LIKE '%[^0-9]%'
		) SET @Res=1;

	IF (@Parameter=11 
		AND @Str NOT LIKE '%[^a-zA-Z0-9]%'
		) SET @Res=1;
	
	IF ((@Parameter=20) 
		AND (@Str NOT LIKE '%[^a-zA-Z ]%' 
			AND @Str NOT LIKE '%  %' 
			AND @Str NOT LIKE ' %'
			AND @Str NOT LIKE '% '
			)
		) SET @Res=1;
	
	IF (@Parameter=2 
		AND (@Str NOT LIKE '%[^0-9 ]%' 
			AND @Str NOT LIKE '%  %' 
			AND @Str NOT LIKE ' %'
			AND @Str NOT LIKE '% '
			)
		) SET @Res=1;

	IF (@Parameter=22 
		AND (@Str NOT LIKE '%[^a-zA-Z0-9 ]%' 
			AND @Str NOT LIKE '%  %' 
			AND @Str NOT LIKE ' %'
			AND @Str NOT LIKE '% '
			)
		) SET @Res=1;

	RETURN @Res; -- Res=1 Die Daten haben richtigen Inhalt 

END
GO


