USE Hotelprojekt
GO

DECLARE @Koeff AS smallmoney;

SET @Koeff= [dbo].[sf_Rabatt_Koeffizient](5) --@Koeff=1-@Koeff/100; Rabattkoeffizient fuer den KundenID 5

PRINT @Koeff