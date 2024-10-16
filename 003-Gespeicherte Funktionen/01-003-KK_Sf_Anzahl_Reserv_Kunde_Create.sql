USE [Hotelprojekt]
GO

/****** Object:  UserDefinedFunction [dbo].[Sf_Anzahl_Reserv_Kunde]    Script Date: 4/18/2023 9:20:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Berechnung der Anzahl der Reservierungen des Kunden>
-- =============================================
CREATE FUNCTION [dbo].[Sf_Anzahl_Reserv_Kunde]
(
	-- Add the parameters for the function here
	@KundenId int
)
RETURNS int
AS
BEGIN
	RETURN(SELECT COUNT(1)
	FROM [dbo].[Reservierung]
	WHERE [KundenID] = @KundenID

	)

END
GO


