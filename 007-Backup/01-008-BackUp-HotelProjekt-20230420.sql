USE [master]
GO
/****** Object:  Database [Hotelprojekt]    Script Date: 20.04.2023 14:20:01 ******/
CREATE DATABASE [Hotelprojekt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotelprojekt', FILENAME = N'C:\SQL-Kurs\DB\Hotelprojekt.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Hotelprojekt_log', FILENAME = N'C:\SQL-Kurs\DB\Hotelprojekt_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotelprojekt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotelprojekt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotelprojekt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotelprojekt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotelprojekt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotelprojekt] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotelprojekt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotelprojekt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotelprojekt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotelprojekt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotelprojekt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotelprojekt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotelprojekt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotelprojekt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotelprojekt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotelprojekt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hotelprojekt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotelprojekt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotelprojekt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotelprojekt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotelprojekt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotelprojekt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotelprojekt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotelprojekt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hotelprojekt] SET  MULTI_USER 
GO
ALTER DATABASE [Hotelprojekt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotelprojekt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotelprojekt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotelprojekt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hotelprojekt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hotelprojekt] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
--/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
--/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
--/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
--/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [HotelRezeptionist]    Script Date: 20.04.2023 14:20:01 ******/
CREATE LOGIN [HotelRezeptionist] WITH PASSWORD=N'123', DEFAULT_DATABASE=[Hotelprojekt], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [HotelRezeptionist] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [HotelReinigungsleiter]    Script Date: 20.04.2023 14:20:01 ******/
CREATE LOGIN [HotelReinigungsleiter] WITH PASSWORD=N'123', DEFAULT_DATABASE=[Hotelprojekt], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [HotelReinigungsleiter] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [HotelManager]    Script Date: 20.04.2023 14:20:01 ******/
CREATE LOGIN [HotelManager] WITH PASSWORD=N'123', DEFAULT_DATABASE=[Hotelprojekt], DEFAULT_LANGUAGE=[Deutsch], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [HotelManager] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [FirmaUser]    Script Date: 20.04.2023 14:20:01 ******/

--/****** Object:  Login [\Jeder]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [\Jeder] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
--GO
--/* For security reasons the login is created disabled and with a random password. */
--/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'mbJCk5VzyrDsH5iyQpuV2IlZUUBgirUpAxK6FYr4G10=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
--GO
--ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
--GO
--/* For security reasons the login is created disabled and with a random password. */
--/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 20.04.2023 14:20:01 ******/
--CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'gFnqtt26ac3q/1h6DtEqmXjh3MWYR5bFPy9c//1mf5w=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
--GO
--ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
--GO
ALTER AUTHORIZATION ON DATABASE::[Hotelprojekt] TO [RZPC-4005\alfa]
GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
--GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
--GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
--GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
--GO
--ALTER SERVER ROLE [sysadmin] ADD MEMBER [\Jeder]
--GO
USE [Hotelprojekt]
GO
/****** Object:  User [Rezeptionist]    Script Date: 20.04.2023 14:20:01 ******/
CREATE USER [Rezeptionist] FOR LOGIN [HotelRezeptionist] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ReinigungsLeiter]    Script Date: 20.04.2023 14:20:01 ******/
CREATE USER [ReinigungsLeiter] FOR LOGIN [HotelReinigungsleiter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Manager]    Script Date: 20.04.2023 14:20:01 ******/
CREATE USER [Manager] FOR LOGIN [HotelManager] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [Manager] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [ReinigungsLeiter] AS [dbo]
GO
GRANT CONNECT TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Anzahl_Kunde_Reservierungen]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE     FUNCTION [dbo].[sf_Anzahl_Kunde_Reservierungen] 
(
	-- Add the parameters for the function here
	@KundenID int
	
)
RETURNS smallint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ReservAnzahl AS smallint
	--DECLARE @StatusID AS nvarchar(30)
	-- Add the T-SQL statements to compute the return value here

	SELECT 
	@ReservAnzahl = COUNT(dbo.Kunden.KundenID)
	FROM dbo.Reservierung INNER JOIN
         dbo.Kunden ON dbo.Reservierung.KundenID = @KundenID INNER JOIN
         dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
	WHERE dbo.Kunden.KundenID = @KundenID
	GROUP BY dbo.Kunden.KundenID
	
	--IF @ReservAnzahl IS NULL
	--SET @ReservAnzahl = 0
	
	RETURN @ReservAnzahl

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Anzahl_Kunde_Reservierungen] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[Sf_Anzahl_Reserv_Kunde]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Berechnung der Anzahl der Reservierungen>
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
ALTER AUTHORIZATION ON [dbo].[Sf_Anzahl_Reserv_Kunde] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Count_Frei_Zimmer_Date]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Anzahl der freien Zimmer an einem bestimmten Datum>
-- =============================================
CREATE   FUNCTION [dbo].[sf_Count_Frei_Zimmer_Date] 
(
	-- Add the parameters for the function here
	@date1 As date
)
RETURNS int
AS
BEGIN
RETURN(
	-- Add the T-SQL statements to compute the return value here
	SELECT COUNT(1) 
	FROM [dbo].[Zimmer]
	WHERE [ZimmerID] NOT IN 
	(SELECT [ZimmerID] 
	FROM [dbo].[Reservierung] where [BeginDatum]<= @date1 AND [EndDatum]>=@date1 ) 
)
END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Count_Frei_Zimmer_Date] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_GesamtSumme]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE     FUNCTION [dbo].[sf_GesamtSumme] 
(
	@KundenID int

)
RETURNS smallmoney
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Summ AS smallmoney
	DECLARE @BeginDatum AS date
	DECLARE @EndDatum AS date
	DECLARE @KostProNacht AS smallmoney
	-- Add the T-SQL statements to compute the return value here

	SELECT 
	--@Summ = dbo.Zimmerzuordnung.KostProNacht,
	@BeginDatum = dbo.Reservierung.BeginDatum,
	@EndDatum = dbo.Reservierung.EndDatum,
	@KostProNacht = dbo.Zimmerzuordnung.KostProNacht
	FROM            dbo.Reservierung INNER JOIN
                    dbo.Zimmer ON dbo.Reservierung.ZimmerID = dbo.Zimmer.ZimmerID INNER JOIN
                    dbo.Zimmerzuordnung ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID INNER JOIN
                    dbo.Kunden ON dbo.Reservierung.KundenID = dbo.Kunden.KundenID
	WHERE dbo.Kunden.KundenID = @KundenID
	ORDER BY dbo.Kunden.KundenID

	SET  @Summ = DATEDIFF(DAY, @BeginDatum, @EndDatum)*@KostProNacht
		IF @Summ IS NULL
		SET @Summ = 0
		ELSE
		SET @Summ = @Summ
		
	-- Return the result of the function
	RETURN @Summ

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_GesamtSumme] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[sf_GetAge]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Berechnung des Kundenalters>
-- =============================================
CREATE   FUNCTION [dbo].[sf_GetAge]  
(
	@GebDat date
)
RETURNS int
AS
BEGIN
	DECLARE @Age int;

	DECLARE @Heute date;
	SET @Heute = GETDATE();
	
	IF (MONTH(@GebDat) > MONTH(@Heute)) 
		OR
	   (MONTH(@GebDat) = MONTH(@Heute) AND DAY(@GebDat) > DAY(@Heute))
		SET @Age = DATEDIFF(YEAR, @GebDat, @Heute) - 1 -- ist noch nich so alt
	ELSE 
		SET @Age = DATEDIFF(YEAR, @GebDat, @Heute);
	
	RETURN @Age;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_GetAge] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 15-04-2023
-- Description:	<Datenueberpruefung fuer Zahlen und Latinische Buchstaben>
-- =============================================
CREATE   FUNCTION [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] 
(
	@Str AS NVARCHAR(MAX),
	@Parameter AS tinyint=10	--10 nur Latinische Buchstaben [a-z,A-Z],
								--01 nur Zahlen [0-9],
								--11 nur Latinische Buchstaben und Zahlen [a-z,A-Z,0-9],
								--02 nur Zahlen und Blanks [0-9,' '],
								--20 nur Latinische Buchstaben,Blanks [a-z,A-Z,' '],
								--22 nur Latinische Buchstaben,Zahlen,Blanks [a-z,A-Z,0-9,' ']
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

	RETURN @Res; -- Res=1 Die Daten sind korrekt 

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_IstZimmerGereinigt]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------Überprüfung der Sauberkeit des Zimmers-------

CREATE       FUNCTION [dbo].[sf_IstZimmerGereinigt] --Ergebnis  = 1 - Zimmer ist sauber, 0 - muss noch gereinigt werden
(
	@ZimmerID AS int 
)
RETURNS bit
AS
BEGIN
	DECLARE @ErledigtStatus AS bit;

	SET @ErledigtStatus=
	(
	SELECT TOP 1 
				[Erledigt]
	FROM [Hotelprojekt].[dbo].[Reinigung]
	WHERE [ZimmerID] = @ZimmerID 
		AND DATEDIFF(DAY,GETDATE(),[AnfrageDatum])<=0
	ORDER BY [AnfrageDatum] DESC
	);
	
	---------------------- Überprüfung des Datums der Reinigung--------------------------

	IF @ErledigtStatus = 1
	BEGIN
		DECLARE @Reinigung_ID AS int;
		DECLARE @Reinigung_Datum AS date;

		SET @Reinigung_ID=
		(
		SELECT TOP 1 
					[ReinigungID]
		FROM [Hotelprojekt].[dbo].[Reinigung]
		WHERE [ZimmerID] = @ZimmerID 
			AND DATEDIFF(DAY,GETDATE(),[AnfrageDatum])<=0
		ORDER BY [AnfrageDatum] DESC
		);
				
		SELECT @Reinigung_Datum = [Datum] FROM [dbo].[Arbeitzeit]
		WHERE [ReinigungID]=@Reinigung_ID;

		IF @Reinigung_Datum IS NOT NULL	
			AND DATEDIFF(DAY,GETDATE(),@Reinigung_Datum)>0
				SET @ErledigtStatus = 0;
	END

	IF @ErledigtStatus IS NULL 
		SET @ErledigtStatus = 1;

	RETURN @ErledigtStatus; 
END
GO
ALTER AUTHORIZATION ON [dbo].[sf_IstZimmerGereinigt] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_MonatlichesEinkommen]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Berechnung des Einkommens
-- =============================================
CREATE     FUNCTION [dbo].[sf_MonatlichesEinkommen] 
(
	@Monat int
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	--DECLARE @MonatBeginReserv int;
	--DECLARE @MonatEndReserv int;
	DECLARE @Summ money;
	-- Reservierung war vollig in diesem Monat
	SET @Summ = 
		(SELECT SUM([ReservierungsPreis])
		FROM [dbo].[Reservierung]
		WHERE (MONTH([BeginDatum]) = @Monat) AND (MONTH([EndDatum]) = @Monat));
	DECLARE @Summ1 money;
	DECLARE @Summ2 money;
	--Die Reservierung beginnt im letzten Monat und endet in diesem Monat
	SET @Summ1 =(SELECT SUM([ReservierungsPreis]/CONVERT(money,DATEDIFF(day,[BeginDatum],[EndDatum]))*(CONVERT(money,DAY([EndDatum])-1)))
						FROM [dbo].[Reservierung]
						WHERE (MONTH([BeginDatum]) < @Monat) AND (MONTH([EndDatum]) = @Monat));
	--Die Reservierung beginnt in diesem Monat und endet im nächsten Monat	
	SET @Summ2 = (SELECT SUM([ReservierungsPreis]/CONVERT(money,DATEDIFF(day,[BeginDatum],[EndDatum]))*(CONVERT(money,DATEDIFF(day,[BeginDatum],EOMONTH([BeginDatum])))))
						FROM [dbo].[Reservierung]
						WHERE (MONTH([BeginDatum]) = @Monat) AND (MONTH([EndDatum]) > @Monat));
	IF (@Summ IS NULL) 
		SET @Summ=0;
	IF (@Summ1 IS NULL) 
		SET @Summ1=0;
	IF (@Summ2 IS NULL) 
		SET @Summ2=0;

	SET @Summ = @Summ + @Summ1 + @Summ2;
	-- Return the result of the function
	RETURN @Summ;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_MonatlichesEinkommen] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sf_MonatlichesEinkommen] TO [Manager] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Rabatt_Koeffizient]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Description:	<Berechnung des Rabatts für den Kunden>
-- =============================================
CREATE   FUNCTION [dbo].[sf_Rabatt_Koeffizient]  
(
	@KundenID int
)
RETURNS smallmoney
AS
BEGIN
	DECLARE @Koeff AS smallmoney;

	SELECT	@Koeff = dbo.Status.Rabatt
			FROM dbo.Kunden
			INNER JOIN [dbo].[Status]
			ON dbo.Kunden.StatusID = dbo.[Status].StatusID
			WHERE dbo.Kunden.KundenID=@KundenID;
	
	SET @Koeff=(1-@Koeff/100);
	
	RETURN @Koeff;

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Rabatt_Koeffizient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sf_Rabatt_Koeffizient] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sf_Rabatt_Koeffizient] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[sf_Zeitstempel]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Erstellung des Namens mit dem Zeitstempel
-- =============================================
CREATE   FUNCTION [dbo].[sf_Zeitstempel]
(
) 
RETURNS char(18)
AS
BEGIN
	
	RETURN FORMAT(GETDATE(), 'yyyyMMdd-HHmmssfff');

END
GO
ALTER AUTHORIZATION ON [dbo].[sf_Zeitstempel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Zimmerzuordnung]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zimmerzuordnung](
	[ZimmerzuordnungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmernKlasseID] [int] NOT NULL,
	[ZimmernPlaetzeID] [int] NOT NULL,
	[KostProNacht] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Zimmerzuordnung] PRIMARY KEY CLUSTERED 
(
	[ZimmerzuordnungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Zimmerzuordnung] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[ZimmernKlasse]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ZimmernKlasse] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[ZimmernPlaetze]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZimmernPlaetze](
	[ZimmernPlaetzeID] [int] IDENTITY(1,1) NOT NULL,
	[Platznummer] [tinyint] NOT NULL,
 CONSTRAINT [PK_ZimmernPlatze] PRIMARY KEY CLUSTERED 
(
	[ZimmernPlaetzeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ZimmernPlaetze] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[Reservierung]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservierung](
	[ReservierungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmerID] [int] NOT NULL,
	[KundenID] [int] NOT NULL,
	[GaesteAnzahl] [tinyint] NOT NULL,
	[BeginDatum] [date] NOT NULL,
	[EndDatum] [date] NOT NULL,
	[ReservierungsPreis] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Reservierung] PRIMARY KEY CLUSTERED 
(
	[ReservierungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Reservierung] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT DELETE ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Reservierung] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT ALTER ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT DELETE ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT INSERT ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Reservierung] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[Zimmer]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Zimmer] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Zimmer] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Zimmer] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[Zimmer] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_Frei_Zimmer_Suchen]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Sucht nach dem freien Zimmer für den Kunden und zeigt den reduzierten Preis an
-- =============================================
CREATE   FUNCTION [dbo].[tf_Frei_Zimmer_Suchen]
(	
 @KundID AS int,					-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer AS tinyint,	-- Gesuchte Schlafplätze
 @GesuchtKost AS smallmoney,		-- Höchstpreis pro Zimmer, den der Kunde zu zahlen bereit ist
 @GesuchtKlasse AS int,				-- Mindestklasse des Zimmers, die der Kunde sucht
 
 @GesuchtBegDatum AS date,			-- Gesuchte BeginDatum
 @GesuchtEndDatum AS date			-- Gesuchte EndDatum
 )
RETURNS TABLE 
AS
RETURN 
(
SELECT DISTINCT 
					 dbo.Zimmer.ZimmerID							AS 'Zimmer_ID'
					,dbo.Zimmer.Zimmernummer						AS 'Zimmer_Nr'
					,dbo.ZimmernPlaetze.Platznummer					AS 'Zimmer_Plaetze' 
					,dbo.ZimmernKlasse.Klassenname					AS 'Zimmer_Klasse'
					,dbo.Zimmerzuordnung.KostProNacht				AS 'StandardPreis'
					,(dbo.Zimmerzuordnung.KostProNacht
						*[dbo].[sf_Rabatt_Koeffizient](@KundID))	AS 'Preis_fuer_den_Kunden'
FROM	dbo.Zimmer 
			 INNER JOIN dbo.Zimmerzuordnung 
			 ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID 
			 INNER JOIN dbo.ZimmernPlaetze 
			 ON dbo.Zimmerzuordnung.ZimmernPlaetzeID = dbo.ZimmernPlaetze.ZimmernPlaetzeID 
			 INNER JOIN dbo.ZimmernKlasse 
			 ON dbo.Zimmerzuordnung.ZimmernKlasseID = dbo.ZimmernKlasse.ZimmernKlasseID 
			 LEFT OUTER JOIN dbo.Reservierung
			 ON dbo.Zimmer.ZimmerID = dbo.Reservierung.ZimmerID 

WHERE   (dbo.ZimmernPlaetze.Platznummer >= @GesuchtPlaetzeNummer) 
	AND (dbo.Zimmerzuordnung.KostProNacht <= @GesuchtKost)
	AND (dbo.Zimmerzuordnung.ZimmernKlasseID> = @GesuchtKlasse)
	--AND ([dbo].[sf_IstZimmerGereinigt](dbo.Zimmer.ZimmerID)= 1)
	
	AND dbo.Zimmer.ZimmerID NOT IN (
	SELECT DISTINCT dbo.Zimmer.ZimmerID 
		FROM     dbo.Zimmer 
			 INNER JOIN dbo.Zimmerzuordnung 
			 ON dbo.Zimmer.ZimmerzuordnungID = dbo.Zimmerzuordnung.ZimmerzuordnungID 
			 INNER JOIN dbo.ZimmernPlaetze 
			 ON dbo.Zimmerzuordnung.ZimmernPlaetzeID = dbo.ZimmernPlaetze.ZimmernPlaetzeID 
			 INNER JOIN dbo.ZimmernKlasse 
			 ON dbo.Zimmerzuordnung.ZimmernKlasseID = dbo.ZimmernKlasse.ZimmernKlasseID 
			 INNER JOIN dbo.Reservierung
			 ON dbo.Zimmer.ZimmerID = dbo.Reservierung.ZimmerID 

		WHERE   (dbo.ZimmernPlaetze.Platznummer >= @GesuchtPlaetzeNummer) 
		AND (dbo.Zimmerzuordnung.KostProNacht <= @GesuchtKost)
		AND (dbo.Zimmerzuordnung.ZimmernKlasseID>=@GesuchtKlasse)
		AND (
			(@GesuchtBegDatum >= dbo.Reservierung.BeginDatum 
				AND @GesuchtBegDatum < dbo.Reservierung.EndDatum
				)
			OR 
			(@GesuchtEndDatum > dbo.Reservierung.BeginDatum 
				AND @GesuchtEndDatum <= dbo.Reservierung.EndDatum
				)
			OR 
			(dbo.Reservierung.BeginDatum > @GesuchtBegDatum AND dbo.Reservierung.EndDatum < @GesuchtEndDatum)
			)
	)
)
GO
ALTER AUTHORIZATION ON [dbo].[tf_Frei_Zimmer_Suchen] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Suchen] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Suchen] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_Frei_Zimmer_Zeigen]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	Zeigt freie Zimmer für den Kunden in der Reihenfolge: zuerst gereinigte Zimmer, dann zu reinigende Zimmer 
-- =============================================
CREATE   FUNCTION [dbo].[tf_Frei_Zimmer_Zeigen]
(	
 @KundID AS int,					-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer AS tinyint,	-- Gesuchte Schlafplätze
 @GesuchtKost AS smallmoney,		-- Höchstpreis für ein Zimmer, den der Kunde zu zahlen bereit ist
 @GesuchtKlasse AS int,				-- Mindestklasse des Zimmers, die der Kunde sucht
 
 @GesuchtBegDatum AS date,			-- Gesuchte BeginDatum
 @GesuchtEndDatum AS date			-- Gesuchte EndDatum
 )
RETURNS TABLE 
AS
RETURN 
(
SELECT TOP (100) PERCENT 
		 Zimmer_ID									AS 'Zimmer_ID'
		,Zimmer_Nr									AS 'Zimmer_Nr'
		,Zimmer_Plaetze								AS 'Zimmer_Plaetze'
		,Zimmer_Klasse								AS 'Zimmer_Klasse'
		,StandardPreis								AS 'StandardPreis'
		,Preis_fuer_den_Kunden						AS 'Preis_fuer_den_Kunden'
		,[dbo].[sf_IstZimmerGereinigt] (Zimmer_ID)	AS 'Gereinigt'
FROM [dbo].[tf_Frei_Zimmer_Suchen]
(	
 @KundID,							-- KundenID from dbo.Kunden
 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplätze
 @GesuchtKost,						-- Höchstpreis für ein Zimmer, den der Kunde zu zahlen bereit ist
 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

 @GesuchtBegDatum,					-- Gesuchte BeginDatum
 @GesuchtEndDatum					-- Gesuchte EndDatum
) 
ORDER BY [dbo].[sf_IstZimmerGereinigt] (Zimmer_ID) DESC,Zimmer_ID

)
GO
ALTER AUTHORIZATION ON [dbo].[tf_Frei_Zimmer_Zeigen] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Zeigen] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Zeigen] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[PersonalID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Strasse] [nvarchar](50) NULL,
	[Hausnummer] [nvarchar](20) NULL,
	[PLZ] [nchar](5) NULL,
	[Ort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](50) NULL,
	[E-Mail] [nvarchar](50) NULL,
	[BerufID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[PersonalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Personal] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT DELETE ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Personal] TO [Manager] AS [dbo]
GO
GRANT ALTER ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT DELETE ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT INSERT ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Personal] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  Table [dbo].[Arbeitzeit]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arbeitzeit](
	[ArbeitzeitID] [int] IDENTITY(1,1) NOT NULL,
	[ReinigungID] [int] NOT NULL,
	[PersonalID] [int] NOT NULL,
	[Datum] [date] NOT NULL,
	[Schicht] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Arbeitzeit] PRIMARY KEY CLUSTERED 
(
	[ArbeitzeitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Arbeitzeit] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Arbeitzeit] TO [Manager] AS [dbo]
GO
GRANT ALTER ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT DELETE ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT INSERT ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[Arbeitzeit] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_PersonalFreiDatum]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   FUNCTION [dbo].[tf_PersonalFreiDatum] 
(	
	@Datum date,
	@Beruf int,
	@Position int
)
RETURNS TABLE 
AS
RETURN 
(
SELECT TOP (100) PERCENT 
		dbo.Personal.PersonalID 
		
FROM dbo.Personal LEFT JOIN  dbo.Arbeitzeit
	ON dbo.Arbeitzeit.PersonalID = dbo.Personal.PersonalID
		
-- Wir erhalten eine Liste der Beschäftigten des Reinigungsdienstes, die zum angegebenen Datum weniger als 2 Datensätze in der Arbeitszeittabelle haben

WHERE (dbo.Personal.BerufID = @Beruf) AND (dbo.Personal.PositionID = @Position) 
		AND ((SELECT COUNT(*) 
			FROM dbo.Arbeitzeit 
			WHERE (dbo.Arbeitzeit.Datum = @Datum)
			AND (dbo.Arbeitzeit.PersonalID = dbo.Personal.PersonalID)) < 2)
ORDER BY Personal.PersonalID
)
GO
ALTER AUTHORIZATION ON [dbo].[tf_PersonalFreiDatum] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tf_PersonalFreiDatum] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[tf_PersonalFreiDatum] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  Table [dbo].[Reinigung]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reinigung](
	[ReinigungID] [int] IDENTITY(1,1) NOT NULL,
	[ZimmerID] [int] NOT NULL,
	[AnfrageDatum] [date] NOT NULL,
	[Erledigt] [bit] NOT NULL,
 CONSTRAINT [PK_Reinigung] PRIMARY KEY CLUSTERED 
(
	[ReinigungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Reinigung] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT DELETE ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Reinigung] TO [Manager] AS [dbo]
GO
GRANT ALTER ON [dbo].[Reinigung] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [ReinigungsLeiter] AS [dbo]
GO
GRANT ALTER ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT DELETE ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT INSERT ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Reinigung] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_UngereinigteZimmer]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE    FUNCTION [dbo].[tf_UngereinigteZimmer] 
(	
	@Datum date
)
RETURNS TABLE 
AS
RETURN 
(
SELECT TOP (100) PERCENT 
		dbo.Reinigung.ZimmerID, dbo.Reinigung.ReinigungID
		
FROM dbo.Reinigung 
		
WHERE (Reinigung.Erledigt = 0) AND (Reinigung.AnfrageDatum <= @Datum) 
ORDER BY Reinigung.ZimmerID)
GO
ALTER AUTHORIZATION ON [dbo].[tf_UngereinigteZimmer] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[tf_UngereinigteZimmer] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[tf_UngereinigteZimmer] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  View [dbo].[ZimmerNichtGereinigtDatum]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[ZimmerNichtGereinigtDatum]
AS
SELECT        TOP (100) PERCENT dbo.Reservierung.ZimmerID, dbo.Reservierung.BeginDatum, dbo.Reinigung.ReinigungID, dbo.Reinigung.Erledigt, dbo.Reinigung.AnfrageDatum
FROM            dbo.Reinigung INNER JOIN
                         dbo.Zimmer ON dbo.Reinigung.ZimmerID = dbo.Zimmer.ZimmerID INNER JOIN
                         dbo.Reservierung ON dbo.Zimmer.ZimmerID = dbo.Reservierung.ZimmerID
WHERE        (dbo.Reservierung.BeginDatum = CONVERT(DATETIME, '2023-04-19 00:00:00', 102)) AND (dbo.Reinigung.Erledigt = 0)
ORDER BY dbo.Reservierung.ZimmerID
GO
ALTER AUTHORIZATION ON [dbo].[ZimmerNichtGereinigtDatum] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Kunden]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunden](
	[KundenID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [nvarchar](50) NOT NULL,
	[Nachname] [nvarchar](50) NOT NULL,
	[DokumentID] [int] NOT NULL,
	[Dokumentnummer] [nvarchar](20) NOT NULL,
	[Geburtsdatum] [date] NOT NULL,
	[Strasse] [nvarchar](50) NULL,
	[Hausnummer] [nvarchar](5) NULL,
	[PLZ] [int] NULL,
	[Ort] [nvarchar](50) NULL,
	[Telefonnummer] [nvarchar](20) NULL,
	[E-Mail] [nvarchar](100) NULL,
	[Kreditkartnummer] [char](16) NOT NULL,
	[StatusID] [int] NOT NULL,
	[Kommentar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kunden] PRIMARY KEY CLUSTERED 
(
	[KundenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Kunden] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT DELETE ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Kunden] TO [Manager] AS [dbo]
GO
GRANT ALTER ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
GRANT DELETE ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
GRANT INSERT ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
GRANT SELECT ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Kunden] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Status] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Status] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Status] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  View [dbo].[View-AlleKunden_GebDatum-Status]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View-AlleKunden_GebDatum-Status]
AS
SELECT     dbo.Kunden.KundenID, dbo.Kunden.Vorname, dbo.Kunden.Nachname, dbo.Kunden.Geburtsdatum, dbo.Status.Status
FROM        dbo.Kunden INNER JOIN
                  dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
GO
ALTER AUTHORIZATION ON [dbo].[View-AlleKunden_GebDatum-Status] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View-Buchungen des Kunden]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View-Buchungen des Kunden]
AS
SELECT     dbo.Kunden.KundenID, dbo.Kunden.Vorname, dbo.Kunden.Nachname, dbo.Kunden.Kreditkartnummer, dbo.Reservierung.ReservierungID, dbo.Zimmer.Zimmernummer
FROM        dbo.Kunden INNER JOIN
                  dbo.Reservierung ON dbo.Kunden.KundenID = dbo.Reservierung.KundenID INNER JOIN
                  dbo.Zimmer ON dbo.Reservierung.ZimmerID = dbo.Zimmer.ZimmerID
GO
ALTER AUTHORIZATION ON [dbo].[View-Buchungen des Kunden] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View-VipKunden-GebDatum]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View-VipKunden-GebDatum]
AS
SELECT     dbo.Kunden.KundenID, dbo.Kunden.Vorname, dbo.Kunden.Nachname, dbo.Kunden.Geburtsdatum
FROM        dbo.Kunden INNER JOIN
                  dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
WHERE     (dbo.Status.Status = 'VIP')
GO
ALTER AUTHORIZATION ON [dbo].[View-VipKunden-GebDatum] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Beruf]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Beruf] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Beruf] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Beruf] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Position] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Position] TO [Manager] AS [dbo]
GO
GRANT SELECT ON [dbo].[Position] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  View [dbo].[View_welchen Tagen ein Mitarbeiter beschäftigt]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_welchen Tagen ein Mitarbeiter beschäftigt]
AS
SELECT     dbo.Personal.PersonalID, dbo.Personal.Vorname, dbo.Personal.Name, dbo.Beruf.Beruf, dbo.Position.Position, dbo.Arbeitzeit.Datum
FROM        dbo.Personal INNER JOIN
                  dbo.Position ON dbo.Personal.PositionID = dbo.Position.PositionID INNER JOIN
                  dbo.Beruf ON dbo.Personal.BerufID = dbo.Beruf.BerufID INNER JOIN
                  dbo.Arbeitzeit ON dbo.Personal.PersonalID = dbo.Arbeitzeit.PersonalID
GO
ALTER AUTHORIZATION ON [dbo].[View_welchen Tagen ein Mitarbeiter beschäftigt] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[tf_WerKunde_Datum_Zimmer]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   FUNCTION [dbo].[tf_WerKunde_Datum_Zimmer] 
(	
	-- Add the parameters for the function here
	@Zimmer smallint,
	@Datum date
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT        dbo.Kunden.KundenID, 
	dbo.Kunden.Vorname, 
	dbo.Kunden.Nachname, 
	dbo.Kunden.Dokumentnummer, 
	dbo.Kunden.Kreditkartnummer, 
	dbo.Kunden.Telefonnummer, 
	dbo.Kunden.[E-Mail], 
	dbo.Zimmer.Zimmernummer, 
    dbo.Reservierung.BeginDatum, 
	dbo.Reservierung.EndDatum
FROM dbo.Reservierung INNER JOIN
     dbo.Kunden ON dbo.Reservierung.KundenID = dbo.Kunden.KundenID INNER JOIN
     dbo.Zimmer ON dbo.Reservierung.ZimmerID = dbo.Zimmer.ZimmerID
WHERE (@Zimmer = dbo.Zimmer.Zimmernummer) AND (@Datum BETWEEN dbo.Reservierung.BeginDatum AND dbo.Reservierung.EndDatum)
--ORDER BY dbo.Kunden.KundenID

)
GO
ALTER AUTHORIZATION ON [dbo].[tf_WerKunde_Datum_Zimmer] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[tf_WerPersonal_Datum_Zimmer_Reiniegung]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   FUNCTION [dbo].[tf_WerPersonal_Datum_Zimmer_Reiniegung]
(	
	-- Add the parameters for the function here
	@Zimmer smallint,
	@Datum date
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
SELECT        dbo.Personal.PersonalID, 
	dbo.Personal.Vorname, 
	dbo.Personal.Name, 
	dbo.Personal.Telefonnummer, 
	dbo.Personal.[E-Mail], 
	dbo.Arbeitzeit.Datum, 
	dbo.Zimmer.Zimmernummer, 
	dbo.Reinigung.Erledigt
FROM  dbo.Reinigung INNER JOIN
      dbo.Personal INNER JOIN
      dbo.Arbeitzeit ON dbo.Personal.PersonalID = dbo.Arbeitzeit.PersonalID ON dbo.Reinigung.ReinigungID = dbo.Arbeitzeit.ReinigungID INNER JOIN
      dbo.Zimmer ON dbo.Reinigung.ZimmerID = dbo.Zimmer.ZimmerID
WHERE (@Zimmer = dbo.Zimmer.Zimmernummer) AND (@Datum = dbo.Arbeitzeit.Datum) AND dbo.Reinigung.Erledigt = 1
)
GO
ALTER AUTHORIZATION ON [dbo].[tf_WerPersonal_Datum_Zimmer_Reiniegung] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Dokument]    Script Date: 20.04.2023 14:20:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Dokument] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Dokument] TO [Manager] AS [dbo]
GO
/****** Object:  Table [dbo].[KundenLog]    Script Date: 20.04.2023 14:20:01 ******/
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
ALTER AUTHORIZATION ON [dbo].[KundenLog] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[KundenLog] TO [Rezeptionist] AS [dbo]
GO
GRANT CONTROL ON [dbo].[KundenLog] TO [Rezeptionist] AS [dbo]
GO
GRANT DELETE ON [dbo].[KundenLog] TO [Rezeptionist] AS [dbo]
GO
GRANT INSERT ON [dbo].[KundenLog] TO [Rezeptionist] AS [dbo]
GO
GRANT UPDATE ON [dbo].[KundenLog] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  Table [dbo].[Reservierungslog]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservierungslog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [char](1) NOT NULL,
	[EditOn] [datetime] NOT NULL,
	[EditUser] [nvarchar](100) NOT NULL,
	[ReservierungID] [int] NOT NULL,
	[ZimmerID_alt] [int] NULL,
	[ZimmerID] [int] NOT NULL,
	[KundenID_alt] [int] NULL,
	[KundenID] [int] NOT NULL,
	[GaesteAnzahl_alt] [tinyint] NULL,
	[GaesteAnzahl] [tinyint] NOT NULL,
	[BeginDatum_alt] [date] NULL,
	[BeginDatum] [date] NOT NULL,
	[EndDatum_alt] [date] NULL,
	[EndDatum] [date] NOT NULL,
	[ReservierungsPreis_alt] [smallmoney] NULL,
	[ReservierungsPreis] [smallmoney] NOT NULL,
	[Meldung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Reservierungslog] TO  SCHEMA OWNER 
GO
GRANT CONTROL ON [dbo].[Reservierungslog] TO [Rezeptionist] AS [dbo]
GO
GRANT DELETE ON [dbo].[Reservierungslog] TO [Rezeptionist] AS [dbo]
GO
GRANT INSERT ON [dbo].[Reservierungslog] TO [Rezeptionist] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Reservierungslog] TO [Rezeptionist] AS [dbo]
GO
SET IDENTITY_INSERT [dbo].[Arbeitzeit] ON 

INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (8, 1, 1, CAST(N'2023-04-23' AS Date), N'1')
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (16, 1, 1, CAST(N'2023-04-25' AS Date), N'1')
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (17, 1, 1, CAST(N'2023-04-25' AS Date), N'1')
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (18, 1, 1, CAST(N'2023-04-23' AS Date), N'1')
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (19, 25, 7, CAST(N'2023-04-19' AS Date), N'1')
INSERT [dbo].[Arbeitzeit] ([ArbeitzeitID], [ReinigungID], [PersonalID], [Datum], [Schicht]) VALUES (21, 6, 1, CAST(N'2023-04-20' AS Date), N'0')
SET IDENTITY_INSERT [dbo].[Arbeitzeit] OFF
GO
SET IDENTITY_INSERT [dbo].[Beruf] ON 

INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (1, N'Reinigung', NULL)
INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (2, N'Manager', NULL)
INSERT [dbo].[Beruf] ([BerufID], [Beruf], [Kommentar]) VALUES (3, N'Rezeption', NULL)
SET IDENTITY_INSERT [dbo].[Beruf] OFF
GO
SET IDENTITY_INSERT [dbo].[Dokument] ON 

INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (1, N'Ausweis')
INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (2, N'ReisePass')
INSERT [dbo].[Dokument] ([DokumentID], [Dokument]) VALUES (3, N'Führerschein')
SET IDENTITY_INSERT [dbo].[Dokument] OFF
GO
SET IDENTITY_INSERT [dbo].[Kunden] ON 

INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (1, N'Guinevere', N'Bentley', 3, N'A972BNA0483', CAST(N'1986-05-31' AS Date), N'Tentum ', N'28', 41460, N'Bremen', N'(0777) 86988741', N'guinevere@outlook.net', N'3742524762435870', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (2, N'William', N'Saunders', 1, N'A02134V12', CAST(N'1974-07-11' AS Date), N'Velit', N'14', 58027, N'Schleswig-Holstein', N'(0679) 57257738', N'william@hotmail.com', N'4539568612326320', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (3, N'Rajah', N'Rosa', 3, N'B441VBN0107', CAST(N'2001-06-27' AS Date), N'Ullamcorper', N'28', 63785, N'Sachsen-Anhalt', N'(0565) 23177250', N'rajah7278@yahoo.com', N'5156546133548240', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (4, N'Ivan', N'Petroff', 1, N'asd123456', CAST(N'1972-04-15' AS Date), NULL, NULL, NULL, NULL, NULL, N'er@a.aa', N'1234123412341234', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (5, N'Azalia', N'Holt', 2, N'B2697961', CAST(N'1965-05-31' AS Date), N'Erat Ave', N'34', 36559, N'Berlin', N'(0331) 03035035', N'azalia4470@yahoo.edu', N'3742743465635490', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (6, N'Dane', N'Cruz', 3, N'V234XDS6448', CAST(N'1998-07-25' AS Date), N'Augue ', N'6', 92740, N'Sachsen-Anhalt', N'(0818) 71916185', N'dane@aol.edu', N'5328740964476860', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (7, N'John', N'Smith', 1, N'qwe123987', CAST(N'1914-07-05' AS Date), NULL, NULL, NULL, NULL, NULL, N'df@g.com', N'1234123412341235', 3, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (8, N'Noel', N'Drake', 2, N'G2868848', CAST(N'1956-11-12' AS Date), N'Aliquet', N'10', 45134, N'Rheinland-Pfalz', N'(0338) 87207316', N'noel@aol.net', N'3728853831944840', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (9, N'Avye', N'O Neill', 1, N'Z02134S13', CAST(N'1951-03-06' AS Date), N'Box 822, 2131 Primis Av.', N'24', 62793, N'Niedersachsen', N'(0192) 85178376', N'avye2371@icloud.com', N'4247236835374360', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (10, N'Yoko', N'Kemp', 3, N'A860NMJ5563', CAST(N'1966-12-19' AS Date), N'Erat Av.', N'11', 34531, N'Hamburg', N'(0648) 15220686', N'yoko7103@aol.org', N'4132565658821110', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (11, N'Jeremy', N'Hendricks', 2, N'C4395623', CAST(N'2003-07-24' AS Date), N'Gravida ', N'48', 58266, N'Rheinland-Pfalz', N'(0550) 35377941', N'jeremy@protonmail.edu', N'3435164761863470', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (12, N'Iola', N'Branch', 3, N'K909PKJ1493', CAST(N'1950-12-23' AS Date), N'Box 212, 6726 Faucibus ', N'47', 98283, N'Baden-Württemberg', N'(0474) 57003534', N'iola3203@google.edu', N'3779399134162850', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (13, N'Angelica', N'Harris', 1, N'B0211SV14', CAST(N'1950-11-16' AS Date), N'Taciti', N'23', 23318, N'Mecklenburg-Vorpommern', N'(0548) 21318139', N'angelica4836@gmail.com', N'3248755897452540', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (14, N'Wyatt', N'Tillman', 1, N'S04134V14', CAST(N'1986-06-11' AS Date), N'Nisl.', N'36', 27638, N'Sachsen-Anhalt', N'(0977) 68464984', N'wyatt@outlook.org', N'5377375652477850', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (15, N'Patrick', N'Goodman', 3, N'E264PLW3160', CAST(N'1956-08-31' AS Date), N'Lectus ', N'17', 85044, N'Baden-Württemberg', N'(0482) 58829597', N'patrick5919@hotmail.com', N'5541553322555210', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (16, N'Nasim', N'Moody', 1, N'B0213SV15', CAST(N'1949-04-09' AS Date), N'Ut Av.', N'45', 57171, N'NoStrasserhein-Westphalen', N'(0647) 71180755', N'nasim@icloud.org', N'4485287364834440', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (17, N'Delilah', N'Jacobs', 1, N'C02134V17', CAST(N'2001-02-05' AS Date), N'Donec Avenue', N'22', 19555, N'Brandenburg', N'(0565) 80668849', N'delilah@gmail.com', N'1244893231794160', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (18, N'Caleb', N'Hawkins', 1, N'A02134V13', CAST(N'1955-03-06' AS Date), N'Mattis. Street', N'22', 53228, N'Hamburg', N'(0392) 60168193', N'caleb@yahoo.net', N'1236135896190540', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (19, N'Pamela', N'Reed', 2, N'B2697962', CAST(N'1950-06-02' AS Date), N'Elit. Avenue', N'44', 24538, N'Hessen', N'(0362) 65777382', N'pamela@outlook.uk', N'1241880326710260', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (20, N'Dillon', N'Meyers', 2, N'A2312369', CAST(N'1956-12-21' AS Date), N'Arcu ', N'49', 76735, N'Berlin', N'(0346) 67698109', N'dillon@protonmail.org', N'1243753175755060', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (21, N'Veda', N'Nicholson', 3, N'P634TFR6185', CAST(N'2001-05-20' AS Date), N'Erat ', N'3', 52176, N'Saarland', N'(0281) 96430355', N'veda@aol.edu', N'1235725456860750', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (22, N'Isadora', N'Noel', 2, N'C4395622', CAST(N'2001-06-08' AS Date), N'Maecenas ', N'29', 47842, N'Hamburg', N'(0673) 07842474', N'isadora7761@outlook.ca', N'1237433028284000', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (23, N'Noel', N'Mcgee', 2, N'D9210657', CAST(N'1993-03-05' AS Date), N'Ligula', N'45', 38387, N'Bayern', N'(0786) 77123886', N'noel@protonmail.net', N'4684442899602400', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (24, N'Ori', N'Carroll', 2, N'E2609042', CAST(N'1978-07-30' AS Date), N'Pellentesque Avenue', N'48', 84281, N'Saarland', N'(0204) 88646055', N'ori4609@hotmail.edu', N'5044763385559220', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (25, N'Uta', N'Gilbert', 2, N'F4771701', CAST(N'2001-04-24' AS Date), N'Magna', N'17', 31665, N'Bayern', N'(0195) 28766956', N'uta6328@icloud.com', N'5379197137884690', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (26, N'Uriah', N'Mcbride', 1, N'B0213SV14', CAST(N'1992-10-09' AS Date), N'Nonummy Avenue', N'24', 83603, N'Mecklenburg-Vorpommern', N'(0475) 74385103', N'uriah9680@yahoo.ca', N'7215552700492650', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (27, N'Lucian', N'Myers', 3, N'L6153HHJ194', CAST(N'1971-01-06' AS Date), N'Segburger', N'7', 84336, N'Sachsen', N'(0731) 64531357', N'lucian3152@yahoo.ca', N'5934359174845790', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (28, N'Zahir', N'Hart', 1, N'Z02134S14', CAST(N'1964-06-06' AS Date), N'Sit ', N'32', 66059, N'Hessen', N'(0779) 75157411', N'zahir@outlook.edu', N'5823634176853360', 3, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (29, N'Hedwig', N'Nixon', 1, N'S04134V16', CAST(N'1978-08-21' AS Date), N'Faucibus Av.', N'42', 28253, N'NoStrasserhein-Westphalen', N'(0168) 76464759', N'hedwig2518@hotmail.uk', N'8511613779487210', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (30, N'Willa', N'Burke', 2, N'C4395624', CAST(N'1973-05-30' AS Date), N'P.O.Box 649, 5238 Arcu. ', N'5', 11531, N'Berlin', N'(0164) 61910868', N'willa6217@google.org', N'5498457635223030', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (31, N'Florence', N'Schultz', 1, N'A02134VF2', CAST(N'2000-03-15' AS Date), N'P.O.Box 638, 3438 Dictum. ', N'9', 32623, N'Bremen', N'(0038) 65427523', N'florence@gmail.com', N'6550848311012040', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (32, N'Perry', N'Tucker', 3, N'B130NGH9508', CAST(N'1942-10-09' AS Date), N'P.O.Box 962, 4518 Ipsum. ', N'48', 26313, N'NoStrasserhein-Westphalen', N'(0533) 60891207', N'perry@icloud.net', N'5157194403097050', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (33, N'Sebastian', N'Cross', 2, N'D9210659', CAST(N'1947-02-18' AS Date), N'Consectetuer ', N'24', 71985, N'Berlin', N'(0253) 05738047', N'sebastian2367@icloud.ca', N'5550533987831390', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (34, N'Elizabeth', N'Mckay', 1, N'B0219SV16', CAST(N'1962-03-15' AS Date), N'Quisque Street', N'13', 45391, N'Brandenburg', N'(0467) 47089531', N'elizabeth@icloud.edu', N'6299793910347240', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (35, N'Maryam', N'Baldwin', 3, N'B837LKJ8889', CAST(N'2002-02-11' AS Date), N'Suspendisse', N'32', 6072, N'Baden-Württemberg', N'(0515) 57576278', N'maryam@hotmail.org', N'5007363990743060', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (36, N'Shelly', N'WoodwaStrasse', 2, N'A2312370', CAST(N'1984-03-22' AS Date), N'P.O.Box 329, 5367 Nulla Avenue', N'7', 31871, N'Bayern', N'(0961) 69344877', N'shelly4341@aol.org', N'6790201225307640', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (37, N'Christian', N'Hicks', 1, N'B0211SV15', CAST(N'1996-03-11' AS Date), N'Inteum .', N'12', 11768, N'Rheinland-Pfalz', N'(0783) 57828277', N'christian@yahoo.net', N'6350103718818840', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (38, N'Brennan', N'Wolf', 1, N'S04134V15', CAST(N'1964-10-09' AS Date), N'P.O.Box 980, 8742 Donec ', N'43', 61181, N'Bayern', N'(0761) 61617609', N'brennan@aol.com', N'7265623794473840', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (39, N'April', N'Mayer', 2, N'D9210658', CAST(N'1954-07-01' AS Date), N'Ut Ave', N'41', 61652, N'Sachsen', N'(0552) 62680783', N'april@hotmail.net', N'8620430472921560', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (40, N'Elizabeth', N'Winters', 2, N'E2609043', CAST(N'1951-06-04' AS Date), N'Vel ', N'13', 17625, N'Rheinland-Pfalz', N'(0492) 19175064', N'elizabeth@aol.com', N'6648227391187230', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (41, N'Petra', N'Britt', 3, N'S364OPJ9795', CAST(N'2003-09-13' AS Date), N'P.OBox 548, 1730 Tincidunt ', N'41', 55313, N'Sachsen-Anhalt', N'(0555) 09021667', N'petra7623@yahoo.net', N'4331561947862700', 3, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (42, N'Adam', N'Morrow', 1, N'B0213SV16', CAST(N'1943-10-15' AS Date), N'Cursus', N'29', 43875, N'Bremen', N'(0564) 73468028', N'adam@aol.org', N'8322628705759720', 2, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (43, N'Berk', N'Fischer', 1, N'C02134V18', CAST(N'1974-06-22' AS Date), N'Convallis ', N'11', 38562, N'Bayern', N'(0954) 44041711', N'berk6191@icloud.net', N'7681884923622720', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (44, N'Macey', N'Goff', 3, N'A864DSE9751', CAST(N'1993-10-22' AS Date), N'Placerat Av.', N'21', 78935, N'Berlin', N'(0916) 66882572', N'macey3730@google.ca', N'7287597942381700', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (45, N'Ebony', N'Fuller', 2, N'F4771702', CAST(N'2003-05-24' AS Date), N'Duis ', N'28', 27495, N'Saarland', N'(0826) 72618334', N'ebony3990@aol.ca', N'8302758581979610', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (46, N'Ashely', N'Simmons', 3, N'A949OPK2937', CAST(N'2001-07-01' AS Date), N'Dui', N'25', 13896, N'Berlin', N'(0214) 13182227', N'ashely6172@yahoo.org', N'8475688569361320', 3, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (47, N'Irma', N'Reese', 3, N'S360OKL5975', CAST(N'1994-08-25' AS Date), N'Netus ', N'5', 45144, N'Brandenburg', N'(0040) 45532533', N'irma@protonmail.edu', N'8019378775848950', 3, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (48, N'Eve', N'Carpenter', 2, N'G2868849', CAST(N'1975-09-19' AS Date), N'Box 665, 9399 Aliquet Av.', N'24', 3396, N'Berlin', N'(0653) 51197878', N'eve5818@outlook.ca', N'7934092377971700', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (49, N'Addison', N'Huber', 1, N'A02134VF1', CAST(N'2001-01-13' AS Date), N'Semper ', N'13', 53937, N'Saarland', N'(0781) 17357285', N'addison@aol.ca', N'6692778088900540', 1, NULL)
INSERT [dbo].[Kunden] ([KundenID], [Vorname], [Nachname], [DokumentID], [Dokumentnummer], [Geburtsdatum], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [Kreditkartnummer], [StatusID], [Kommentar]) VALUES (50, N'Cynthia', N'Carpenter', 1, N'B0219SV15', CAST(N'2004-12-21' AS Date), N'Nec', N'13', 65499, N'Sachsen', N'(0581) 44817211', N'cynthia9762@icloud.org', N'8391730441732100', 1, NULL)
SET IDENTITY_INSERT [dbo].[Kunden] OFF
GO
SET IDENTITY_INSERT [dbo].[KundenLog] ON 

INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (1, N'U', N'Apr 19 2023  3:01PM', N'RZPC-4005\alfa', 9, N'Avye', N'Avye', N'O Neill', N'O''Neill', 1, N'Z02134S13', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (2, N'U', N'Apr 19 2023  3:03PM', N'RZPC-4005\alfa', 3, N'Rajah', N'Rajah', N'Rosa', N'Rosa', 3, N'B441VBN0107', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (3, N'U', N'Apr 19 2023  3:03PM', N'RZPC-4005\alfa', 11, N'Jeremy', N'Jeremy', N'Hendricks', N'Hendricks', 2, N'C4395623', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (4, N'U', N'Apr 19 2023  3:04PM', N'RZPC-4005\alfa', 22, N'Isadora', N'Isadora', N'Noel', N'Noel', 2, N'C4395622', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (5, N'U', N'Apr 19 2023  3:04PM', N'RZPC-4005\alfa', 25, N'Uta', N'Uta', N'Gilbert', N'Gilbert', 2, N'F4771701', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (14, N'I', N'Apr 20 2023 11:24AM', N'HotelManager', 56, N'Roman', NULL, N'Pedro', NULL, 1, N'hkjhkj24h23', NULL, NULL, NULL, NULL, NULL, N'1234123412341234', 1, NULL)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (7, N'U', N'Apr 19 2023  3:05PM', N'RZPC-4005\alfa', 46, N'Ashely', N'Ashely', N'Simmons', N'Simmons', 3, N'A949OPK2937', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (8, N'U', N'Apr 19 2023  3:05PM', N'RZPC-4005\alfa', 49, N'Addison', N'Addison', N'Huber', N'Huber', 1, N'A02134VF1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (15, N'D', N'Apr 20 2023 11:24AM', N'HotelManager', 56, N'Roman', NULL, N'Pedro', NULL, 1, N'hkjhkj24h23', NULL, NULL, NULL, NULL, NULL, N'1234123412341234', 1, NULL)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (10, N'I', N'Apr 19 2023  3:13PM', N'RZPC-4005\alfa', 55, N'John', NULL, N'Mc Duck', NULL, 1, N'97987dasd', NULL, NULL, NULL, NULL, N'qwuy@er.com', N'5643235678345678', 2, NULL)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (11, N'U', N'Apr 19 2023  3:15PM', N'RZPC-4005\alfa', 55, N'John', N'John', N'Mc Duck', N'Mc Duck', 1, N'97987dasd', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (12, N'U', N'Apr 19 2023  3:15PM', N'RZPC-4005\alfa', 55, N'John', N'John', N'Mc Duck', N'Mc Duck', 1, N'979872313123', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2)
INSERT [dbo].[KundenLog] ([ID], [Mode], [EditOn], [EditUser], [KundenId], [VorName], [VornameAlt], [NachName], [NachNameAlt], [DokumentID], [DokumentNummer], [Strasse], [HausNummer], [Ort], [Telefonnummer], [Email], [KreditkardNummer], [StatusID], [StatusIDAlt]) VALUES (13, N'D', N'Apr 19 2023  3:15PM', N'RZPC-4005\alfa', 55, N'John', NULL, N'Mc Duck', NULL, 1, N'979872313123', NULL, NULL, NULL, NULL, N'qwuy@er.com', N'5643235678345678', 3, NULL)
SET IDENTITY_INSERT [dbo].[KundenLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (1, N'Abdul', N'Brooks', N'Congue', N'3', N'71364', N'Augsburg', N'(048) 85157235', N'semper.nam.tempor@yahoo.com', 1, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (3, N'Gary', N'Washington', N'Ornare', N'45', N'85172', N'Merzig', N'(0273) 56867351', N'elementum.lorem@icloud.edu', 1, 1)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (4, N'Alvin', N'Hanson', N'Adipiscing', N'5', N'8132 ', N'Bremerhaven', N'(036229) 484264', N'non.leo@icloud.com', 2, 2)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (5, N'Ignacia', N'Giles', N'Mauris', N'76', N'74454', N'Augsburg', N'(0268) 16847888', N'turpis.nulla.aliquet@outlook.com', 2, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (6, N'Carson', N'Jordan', N'Nascetur', N'43', N'8120 ', N'Berlin', N'(03543) 3745473', N'eleifend@yahoo.net', 2, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (7, N'Elliott', N'Riggs', N'Tempor', N'102', N'69238', N'Aschersleben', N'(09759) 7318731', N'ultrices.posuere@hotmail.couk', 1, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (8, N'Sara', N'Carey', N'Libero', N'4', N'79451', N'Bremerhaven', N'(034246) 536823', N'vitae.velit@hotmail.ca', 3, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (11, N'Kasimir', N'Casey', N'Nulla Street', N'4', N'59365', N'Hamburg', N'(032535) 526323', N'netus.et@aol.ca', 1, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (12, N'Remedios', N'Carlson', N'Vitae Rd.', N'76', N'42795', N'Heidenheim', N'(042) 25932183', N'quam.dignissim.pharetra@hotmail.com', 3, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (13, N'Jolie', N'Marquez', N'Adipiscing St.', N'12', N'74538', N'Flensburg', N'(05346) 5968483', N'aliquam@yahoo.com', 1, 2)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (14, N'Hadassah', N'Carroll', N'Orci. Road', N'16', N'1977 ', N'Ravensburg', N'(016) 57862193', N'pretium.neque.morbi@protonmail.com', 1, 2)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (16, N'Bevis', N'Wiggins', N'Magnis Rd.', N'3', N'66678', N'Wolfsburg', N'(00485) 5968111', N'dolor.quam.elementum@yahoo.net', 1, 3)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (17, N'Cameron', N'Estes', N'Dictum Rd.', N'2', N'38023', N'Sulzbach', N'(031589) 246654', N'risus.varius@protonmail.org', 3, 1)
INSERT [dbo].[Personal] ([PersonalID], [Vorname], [Name], [Strasse], [Hausnummer], [PLZ], [Ort], [Telefonnummer], [E-Mail], [BerufID], [PositionID]) VALUES (18, N'Alyssa', N'Le', N'Id Avenue', N'2', N'48019', N'Riesa', N'(083) 13366816', N'vulputate@aol.couk', 3, 2)
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (1, N'Geschaeftsleiter', NULL)
INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (2, N'Abteilungsleiter', NULL)
INSERT [dbo].[Position] ([PositionID], [Position], [Kommentar]) VALUES (3, N'Mitarbeiter', NULL)
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Reinigung] ON 

INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (1, 3, CAST(N'2023-04-17' AS Date), 1)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (2, 7, CAST(N'2023-04-25' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (3, 5, CAST(N'2023-04-26' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (4, 2, CAST(N'2023-04-18' AS Date), 1)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (5, 6, CAST(N'2023-04-17' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (6, 5, CAST(N'2023-04-19' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (10, 6, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (13, 11, CAST(N'2023-08-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (14, 5, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (15, 7, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (17, 1, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (25, 12, CAST(N'2023-04-13' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (26, 3, CAST(N'2023-04-22' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (27, 3, CAST(N'2023-04-23' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (28, 4, CAST(N'2023-04-23' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (29, 8, CAST(N'2023-04-23' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (30, 9, CAST(N'2023-04-20' AS Date), 0)
INSERT [dbo].[Reinigung] ([ReinigungID], [ZimmerID], [AnfrageDatum], [Erledigt]) VALUES (33, 9, CAST(N'2023-04-23' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Reinigung] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservierung] ON 

INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (6, 3, 4, 2, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-19' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (7, 7, 7, 2, CAST(N'2023-04-18' AS Date), CAST(N'2023-04-25' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (13, 5, 7, 2, CAST(N'2023-04-16' AS Date), CAST(N'2023-04-26' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (17, 6, 7, 2, CAST(N'2023-04-25' AS Date), CAST(N'2023-04-28' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (18, 5, 7, 2, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-08' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (25, 6, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (32, 11, 7, 2, CAST(N'2023-08-20' AS Date), CAST(N'2023-08-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (36, 5, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (37, 7, 7, 2, CAST(N'2023-06-20' AS Date), CAST(N'2023-06-22' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (48, 3, 7, 2, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-22' AS Date), 127.5000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (49, 3, 5, 2, CAST(N'2023-04-22' AS Date), CAST(N'2023-04-23' AS Date), 135.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (50, 4, 8, 2, CAST(N'2023-04-22' AS Date), CAST(N'2023-04-23' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (51, 8, 10, 2, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-23' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (52, 9, 10, 2, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-20' AS Date), 150.0000)
INSERT [dbo].[Reservierung] ([ReservierungID], [ZimmerID], [KundenID], [GaesteAnzahl], [BeginDatum], [EndDatum], [ReservierungsPreis]) VALUES (55, 9, 10, 2, CAST(N'2023-04-20' AS Date), CAST(N'2023-04-23' AS Date), 140.0000)
SET IDENTITY_INSERT [dbo].[Reservierung] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservierungslog] ON 

INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (1, N'I', CAST(N'2023-04-18T09:20:02.223' AS DateTime), N'RZPC-4005\alfa', 43, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-09-01' AS Date), NULL, CAST(N'2023-10-01' AS Date), NULL, 127.5000, N'OK! Zimmer_Nr 110 ist für 2023-09-01 - 2023-10-01 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (2, N'U', CAST(N'2023-04-18T09:20:46.440' AS DateTime), N'RZPC-4005\alfa', 43, NULL, 10, 7, 3, NULL, 2, NULL, CAST(N'2023-09-01' AS Date), NULL, CAST(N'2023-10-01' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (3, N'U', CAST(N'2023-04-18T09:20:55.343' AS DateTime), N'RZPC-4005\alfa', 43, NULL, 10, NULL, 3, NULL, 2, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-05' AS Date), NULL, CAST(N'2023-10-01' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (4, N'U', CAST(N'2023-04-18T09:20:59.430' AS DateTime), N'RZPC-4005\alfa', 43, NULL, 10, NULL, 3, NULL, 2, NULL, CAST(N'2023-09-05' AS Date), NULL, CAST(N'2023-10-01' AS Date), 127.5000, 110.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (5, N'D', CAST(N'2023-04-18T09:22:05.513' AS DateTime), N'RZPC-4005\alfa', 43, NULL, 10, NULL, 3, NULL, 2, NULL, CAST(N'2023-09-05' AS Date), NULL, CAST(N'2023-10-01' AS Date), NULL, 110.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (6, N'D', CAST(N'2023-04-18T11:19:06.943' AS DateTime), N'RZPC-4005\alfa', 42, NULL, 12, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-20' AS Date), NULL, CAST(N'2023-04-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (7, N'U', CAST(N'2023-04-18T11:22:21.470' AS DateTime), N'RZPC-4005\alfa', 41, NULL, 3, NULL, 7, NULL, 2, CAST(N'2023-04-20' AS Date), CAST(N'2023-03-20' AS Date), NULL, CAST(N'2023-04-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (8, N'U', CAST(N'2023-04-18T11:24:23.263' AS DateTime), N'RZPC-4005\alfa', 41, NULL, 3, NULL, 7, NULL, 2, CAST(N'2023-03-20' AS Date), CAST(N'2023-04-20' AS Date), NULL, CAST(N'2023-04-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (9, N'D', CAST(N'2023-04-18T11:25:05.590' AS DateTime), N'RZPC-4005\alfa', 41, NULL, 3, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-20' AS Date), NULL, CAST(N'2023-04-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (10, N'D', CAST(N'2023-04-18T11:33:30.587' AS DateTime), N'RZPC-4005\alfa', 39, NULL, 1, NULL, 7, NULL, 1, NULL, CAST(N'2023-06-20' AS Date), NULL, CAST(N'2023-06-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (11, N'D', CAST(N'2023-04-18T11:40:25.963' AS DateTime), N'RZPC-4005\alfa', 40, NULL, 3, NULL, 7, NULL, 2, NULL, CAST(N'2023-06-20' AS Date), NULL, CAST(N'2023-06-22' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (15, N'U', CAST(N'2023-04-18T16:04:22.230' AS DateTime), N'RZPC-4005\alfa', 38, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-06-20' AS Date), NULL, CAST(N'2023-06-22' AS Date), 127.5000, 95.6250, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (16, N'D', CAST(N'2023-04-18T16:31:29.853' AS DateTime), N'RZPC-4005\alfa', 38, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-06-20' AS Date), NULL, CAST(N'2023-06-22' AS Date), NULL, 95.6250, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (17, N'D', CAST(N'2023-04-18T16:41:57.357' AS DateTime), N'RZPC-4005\alfa', 31, NULL, 11, NULL, 7, NULL, 2, NULL, CAST(N'2023-06-20' AS Date), NULL, CAST(N'2023-06-22' AS Date), NULL, 150.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (18, N'I', CAST(N'2023-04-18T16:43:58.423' AS DateTime), N'RZPC-4005\alfa', 46, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-18' AS Date), NULL, CAST(N'2023-04-19' AS Date), NULL, 125.0000, N'OK! Zimmer_Nr 110 ist für 2023-04-18 - 2023-04-19 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (19, N'U', CAST(N'2023-04-18T16:44:06.703' AS DateTime), N'RZPC-4005\alfa', 46, NULL, 10, NULL, 7, NULL, 2, CAST(N'2023-04-18' AS Date), CAST(N'2023-04-17' AS Date), NULL, CAST(N'2023-04-19' AS Date), NULL, 125.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (20, N'U', CAST(N'2023-04-18T16:45:26.693' AS DateTime), N'RZPC-4005\alfa', 46, NULL, 10, NULL, 7, NULL, 2, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-18' AS Date), NULL, CAST(N'2023-04-19' AS Date), NULL, 125.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (21, N'D', CAST(N'2023-04-18T16:46:29.110' AS DateTime), N'RZPC-4005\alfa', 46, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-18' AS Date), NULL, CAST(N'2023-04-19' AS Date), NULL, 125.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (22, N'I', CAST(N'2023-04-18T16:48:20.770' AS DateTime), N'RZPC-4005\alfa', 47, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-18' AS Date), NULL, CAST(N'2023-04-20' AS Date), NULL, 125.0000, N'OK! Zimmer_Nr 110 ist für 2023-04-18 - 2023-04-20 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (23, N'D', CAST(N'2023-04-18T16:50:53.820' AS DateTime), N'RZPC-4005\alfa', 47, NULL, 10, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-18' AS Date), NULL, CAST(N'2023-04-20' AS Date), NULL, 125.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (24, N'I', CAST(N'2023-04-19T08:58:52.187' AS DateTime), N'RZPC-4005\alfa', 48, NULL, 3, NULL, 7, NULL, 2, NULL, CAST(N'2023-04-19' AS Date), NULL, CAST(N'2023-04-22' AS Date), NULL, 127.5000, N'OK! Zimmer_Nr 103 ist für 2023-04-19 - 2023-04-22 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (25, N'I', CAST(N'2023-04-19T09:07:35.970' AS DateTime), N'RZPC-4005\alfa', 49, NULL, 3, NULL, 5, NULL, 2, NULL, CAST(N'2023-04-22' AS Date), NULL, CAST(N'2023-04-23' AS Date), NULL, 135.0000, N'OK! Zimmer_Nr 103 ist für 2023-04-22 - 2023-04-23 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (26, N'I', CAST(N'2023-04-19T09:13:00.233' AS DateTime), N'RZPC-4005\alfa', 50, NULL, 4, NULL, 8, NULL, 2, NULL, CAST(N'2023-04-22' AS Date), NULL, CAST(N'2023-04-23' AS Date), NULL, 150.0000, N'OK! Zimmer_Nr 104 ist für 2023-04-22 - 2023-04-23 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (27, N'I', CAST(N'2023-04-19T09:17:54.347' AS DateTime), N'RZPC-4005\alfa', 51, NULL, 8, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-19' AS Date), NULL, CAST(N'2023-04-23' AS Date), NULL, 150.0000, N'OK! Zimmer_Nr 108 ist für 2023-04-19 - 2023-04-23 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (28, N'I', CAST(N'2023-04-19T14:45:06.163' AS DateTime), N'RZPC-4005\alfa', 52, NULL, 9, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-19' AS Date), NULL, CAST(N'2023-04-23' AS Date), NULL, 150.0000, N'OK! Zimmer_Nr 109 ist für 2023-04-19 - 2023-04-23 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (29, N'I', CAST(N'2023-04-20T10:35:34.967' AS DateTime), N'HotelRezeptionist', 53, NULL, 5, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-30' AS Date), NULL, CAST(N'2023-05-01' AS Date), NULL, 150.0000, N'OK! Zimmer_Nr 105 ist für 2023-04-30 - 2023-05-01 erfolgreich gebucht')
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (30, N'U', CAST(N'2023-04-20T10:41:40.020' AS DateTime), N'HotelRezeptionist', 53, NULL, 5, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-30' AS Date), NULL, CAST(N'2023-05-01' AS Date), 150.0000, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (31, N'D', CAST(N'2023-04-20T10:46:55.513' AS DateTime), N'HotelRezeptionist', 53, NULL, 5, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-30' AS Date), NULL, CAST(N'2023-05-01' AS Date), NULL, 127.5000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (32, N'U', CAST(N'2023-04-20T12:16:16.650' AS DateTime), N'RZPC-4005\alfa', 52, NULL, 9, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-19' AS Date), CAST(N'2023-04-23' AS Date), CAST(N'2023-04-20' AS Date), NULL, 150.0000, NULL)
INSERT [dbo].[Reservierungslog] ([ID], [Mode], [EditOn], [EditUser], [ReservierungID], [ZimmerID_alt], [ZimmerID], [KundenID_alt], [KundenID], [GaesteAnzahl_alt], [GaesteAnzahl], [BeginDatum_alt], [BeginDatum], [EndDatum_alt], [EndDatum], [ReservierungsPreis_alt], [ReservierungsPreis], [Meldung]) VALUES (33, N'I', CAST(N'2023-04-20T12:17:24.480' AS DateTime), N'RZPC-4005\alfa', 55, NULL, 9, NULL, 10, NULL, 2, NULL, CAST(N'2023-04-20' AS Date), NULL, CAST(N'2023-04-23' AS Date), NULL, 140.0000, N'OK! Zimmer_Nr 109 ist für 2023-04-20 - 2023-04-23 erfolgreich gebucht')
SET IDENTITY_INSERT [dbo].[Reservierungslog] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (1, N'Standard', 0)
INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (2, N'StammKunder', 10)
INSERT [dbo].[Status] ([StatusID], [Status], [Rabatt]) VALUES (3, N'VIP', 15)
SET IDENTITY_INSERT [dbo].[Status] OFF
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
SET IDENTITY_INSERT [dbo].[ZimmernKlasse] ON 

INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (1, N'Standard')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (2, N'Business')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (3, N'Lux')
INSERT [dbo].[ZimmernKlasse] ([ZimmernKlasseID], [Klassenname]) VALUES (4, N'Königsklasse')
SET IDENTITY_INSERT [dbo].[ZimmernKlasse] OFF
GO
SET IDENTITY_INSERT [dbo].[ZimmernPlaetze] ON 

INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (1, 1)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (2, 2)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (3, 3)
INSERT [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID], [Platznummer]) VALUES (4, 4)
SET IDENTITY_INSERT [dbo].[ZimmernPlaetze] OFF
GO
SET IDENTITY_INSERT [dbo].[Zimmerzuordnung] ON 

INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (2, 1, 1, 150.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (5, 1, 2, 150.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (6, 1, 3, 180.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (7, 1, 4, 200.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (8, 2, 1, 250.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (10, 2, 2, 350.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (11, 3, 1, 300.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (12, 3, 2, 450.0000)
INSERT [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID], [ZimmernKlasseID], [ZimmernPlaetzeID], [KostProNacht]) VALUES (13, 4, 4, 750.0000)
SET IDENTITY_INSERT [dbo].[Zimmerzuordnung] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20230417-102742]    Script Date: 20.04.2023 14:20:01 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20230417-102742] ON [dbo].[Arbeitzeit]
(
	[PersonalID] ASC,
	[Datum] ASC,
	[Schicht] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KuVN_KuNN_Dokument]    Script Date: 20.04.2023 14:20:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_KuVN_KuNN_Dokument] ON [dbo].[Kunden]
(
	[Vorname] ASC,
	[Nachname] ASC,
	[DokumentID] ASC,
	[Dokumentnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20230417-084342]    Script Date: 20.04.2023 14:20:01 ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20230417-084342] ON [dbo].[Personal]
(
	[Vorname] ASC,
	[Name] ASC,
	[Telefonnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Zimmernummer]    Script Date: 20.04.2023 14:20:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Zimmernummer] ON [dbo].[Zimmer]
(
	[Zimmernummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Arbeitzeit] ADD  CONSTRAINT [DF_Arbeitzeit_Datum]  DEFAULT (getdate()) FOR [Datum]
GO
ALTER TABLE [dbo].[KundenLog] ADD  CONSTRAINT [DF_KundenLog_EditOn]  DEFAULT (getdate()) FOR [EditOn]
GO
ALTER TABLE [dbo].[KundenLog] ADD  CONSTRAINT [DF_KundenLog_EditUser]  DEFAULT (original_login()) FOR [EditUser]
GO
ALTER TABLE [dbo].[Reinigung] ADD  CONSTRAINT [DF_Reinigung_Datum]  DEFAULT (getdate()) FOR [AnfrageDatum]
GO
ALTER TABLE [dbo].[Reservierungslog] ADD  DEFAULT (getdate()) FOR [EditOn]
GO
ALTER TABLE [dbo].[Reservierungslog] ADD  DEFAULT (original_login()) FOR [EditUser]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [FK_Arbeitzeit_Personal] FOREIGN KEY([PersonalID])
REFERENCES [dbo].[Personal] ([PersonalID])
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [FK_Arbeitzeit_Personal]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [FK_Arbeitzeit_Reinigung] FOREIGN KEY([ReinigungID])
REFERENCES [dbo].[Reinigung] ([ReinigungID])
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [FK_Arbeitzeit_Reinigung]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [FK_Kunden_Dokument] FOREIGN KEY([DokumentID])
REFERENCES [dbo].[Dokument] ([DokumentID])
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [FK_Kunden_Dokument]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [FK_Kunden_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [FK_Kunden_Status]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Beruf] FOREIGN KEY([BerufID])
REFERENCES [dbo].[Beruf] ([BerufID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Beruf]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Position]
GO
ALTER TABLE [dbo].[Reinigung]  WITH CHECK ADD  CONSTRAINT [FK_Reinigung_Zimmer] FOREIGN KEY([ZimmerID])
REFERENCES [dbo].[Zimmer] ([ZimmerID])
GO
ALTER TABLE [dbo].[Reinigung] CHECK CONSTRAINT [FK_Reinigung_Zimmer]
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [FK_Reservierung_Kunden] FOREIGN KEY([KundenID])
REFERENCES [dbo].[Kunden] ([KundenID])
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [FK_Reservierung_Kunden]
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [FK_Reservierung_Zimmer] FOREIGN KEY([ZimmerID])
REFERENCES [dbo].[Zimmer] ([ZimmerID])
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [FK_Reservierung_Zimmer]
GO
ALTER TABLE [dbo].[Zimmer]  WITH CHECK ADD  CONSTRAINT [FK_Zimmer_Zimmerzuordnung] FOREIGN KEY([ZimmerzuordnungID])
REFERENCES [dbo].[Zimmerzuordnung] ([ZimmerzuordnungID])
GO
ALTER TABLE [dbo].[Zimmer] CHECK CONSTRAINT [FK_Zimmer_Zimmerzuordnung]
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [FK_Zimmerzuordnung_ZimmernKlasse] FOREIGN KEY([ZimmernKlasseID])
REFERENCES [dbo].[ZimmernKlasse] ([ZimmernKlasseID])
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [FK_Zimmerzuordnung_ZimmernKlasse]
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [FK_Zimmerzuordnung_ZimmernPlaetze] FOREIGN KEY([ZimmernPlaetzeID])
REFERENCES [dbo].[ZimmernPlaetze] ([ZimmernPlaetzeID])
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [FK_Zimmerzuordnung_ZimmernPlaetze]
GO
ALTER TABLE [dbo].[Arbeitzeit]  WITH CHECK ADD  CONSTRAINT [CK_Arbeitzeit_Schicht] CHECK  (([Schicht]=(0) OR [Schicht]=(1)))
GO
ALTER TABLE [dbo].[Arbeitzeit] CHECK CONSTRAINT [CK_Arbeitzeit_Schicht]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Alter mehr als 18 Jahre] CHECK  (([dbo].[sf_GetAge]([Geburtsdatum])>=(18)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Alter mehr als 18 Jahre]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_EMail] CHECK  (([E-Mail] like '_%@%_.__%'))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_EMail]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Kreditkartnummer] CHECK  ((isnumeric([Kreditkartnummer])=(1) AND len([Kreditkartnummer])=(16)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Kreditkartnummer]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Nachname_nur_von_Buchstaben] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Nachname],(20))=(1)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Nachname_nur_von_Buchstaben]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Name_Laenge_mehr_als_1 ] CHECK  ((len([Vorname])>(1) AND len([Nachname])>(1)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Name_Laenge_mehr_als_1 ]
GO
ALTER TABLE [dbo].[Kunden]  WITH CHECK ADD  CONSTRAINT [CK_Kunden_Vorname_nur_von_Buchstaben] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Vorname],(20))=(1)))
GO
ALTER TABLE [dbo].[Kunden] CHECK CONSTRAINT [CK_Kunden_Vorname_nur_von_Buchstaben]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_EMail] CHECK  (([E-Mail] like '_%@%_.__%'))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_EMail]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Name_hat_Buchstaben_Zahlen] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Name],(20))=(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Name_hat_Buchstaben_Zahlen]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Name_Laenge] CHECK  ((len([Vorname])>(1) AND len([Name])>(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Name_Laenge]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [CK_Personal_Vorname_hat_Buchstaben_Zahlen] CHECK  (([dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen]([Vorname],(20))=(1)))
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [CK_Personal_Vorname_hat_Buchstaben_Zahlen]
GO
ALTER TABLE [dbo].[Reservierung]  WITH CHECK ADD  CONSTRAINT [CK_Reservierung_GaesteAnzahl] CHECK  (([GaesteAnzahl]>(0)))
GO
ALTER TABLE [dbo].[Reservierung] CHECK CONSTRAINT [CK_Reservierung_GaesteAnzahl]
GO
ALTER TABLE [dbo].[Zimmer]  WITH NOCHECK ADD  CONSTRAINT [CK_Zimmer_Zimmernummer] CHECK  (([Zimmernummer]>(100) AND [Zimmernummer]<(500)))
GO
ALTER TABLE [dbo].[Zimmer] CHECK CONSTRAINT [CK_Zimmer_Zimmernummer]
GO
ALTER TABLE [dbo].[Zimmerzuordnung]  WITH CHECK ADD  CONSTRAINT [CK_Zimmerzuordnung_KostProNacht] CHECK  (([KostProNacht]>(10) AND [KostProNacht]<(10000)))
GO
ALTER TABLE [dbo].[Zimmerzuordnung] CHECK CONSTRAINT [CK_Zimmerzuordnung_KostProNacht]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddArbeitZeit]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	die Prozedur prüft die Eingabeparameter und fügt die Daten in die Tabelle 'Projektzuordnung' hinzu.
-- =============================================
CREATE   PROCEDURE [dbo].[sp_AddArbeitZeit] 
	-- TODO: Add the parameters for the stored procedure here
	----------------------------------------------------
	@Datum date,
	@ReinigungID int,
	@Beruf int,
	@Position int,
	@Erfolg bit OUTPUT, -- geklappt oder nicht
	@Feedback VARCHAR(MAX) OUTPUT -- Fehlermeldungen etc.
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DECLARE @msg AS nvarchar(MAX); -- Fehlermeldung
	--DECLARE @CheckResult AS int;	
	DECLARE @PersonalFreiID int;
	-------------------------------------------------------------------	
	BEGIN TRY
		--Überprüfen wir, ob das Zimmer bereits gereinigt wurde
		IF (SELECT [Erledigt]
			FROM [dbo].[Reinigung]
			WHERE dbo.Reinigung.ReinigungID = @ReinigungID) = 1
			THROW 50001, 'Vorsichtig! Das Zimmer ist bereits gereinigt!',1;
		-- Auswahl der ersten freien Reinigungskraft für das Datum
		SET @PersonalFreiID = (SELECT TOP 1 * FROM [dbo].[tf_PersonalFreiDatum](@Datum,@Beruf,@Position))
		IF @PersonalFreiID IS NOT NULL
		BEGIN
			-- INSERT INTO [dbo].[Arbeitzeit]
			-- Update Tabelle Reinigung.Erledigt
			UPDATE [dbo].[Reinigung]
			SET [Erledigt] = 1
			WHERE [dbo].[Reinigung].[ReinigungID] = @ReinigungID;
			--Prüfung, ob für diesen Mitarbeiter an einem bestimmten Datum ein Arbeitszeitdatensatz vorhanden ist
			IF ((SELECT COUNT(*) 
				FROM dbo.Arbeitzeit 
				WHERE (dbo.Arbeitzeit.Datum = @Datum)
				AND (dbo.Arbeitzeit.PersonalID = @PersonalFreiID)) = 0)
			BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '0');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 0'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;
			END
			ELSE
			BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '1');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 1'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;
			END
		END
		--falls der Arbeitnehmer an diesem Tag nicht angetroffen wird, wird der nächste Tag genommen
		WHILE @PersonalFreiID IS NULL
		BEGIN
			SET @Datum=DATEADD(day,1,@Datum);
			SET @PersonalFreiID = (SELECT TOP 1 * FROM [dbo].[tf_PersonalFreiDatum](@Datum,@Beruf,@Position))
			IF @PersonalFreiID IS NOT NULL
			BEGIN
				-- INSERT INTO [dbo].[Arbeitzeit]
				-- Update Tabelle Reinigung.Erledigt
				UPDATE [dbo].[Reinigung]
				SET [Erledigt] = 1
				WHERE [dbo].[Reinigung].[ReinigungID] = @ReinigungID;
				--Prüfen wir, ob für diesen Mitarbeiter zu einem bestimmten Datum ein Eintrag in der Arbeitszeit vorhanden ist
				IF ((SELECT COUNT(*) 
					FROM dbo.Arbeitzeit 
					WHERE (dbo.Arbeitzeit.Datum = @Datum)
					AND (dbo.Arbeitzeit.PersonalID = @PersonalFreiID)) = 0)
				BEGIN
						INSERT INTO [dbo].[Arbeitzeit]
						([ReinigungID],[PersonalID],[Datum],[Schicht])
						VALUES (@ReinigungID, @PersonalFreiID, @Datum, '0');
						----------------------
						SET @Erfolg = 1;
						SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
						+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 0'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;;
				END
				ELSE
				BEGIN
					INSERT INTO [dbo].[Arbeitzeit]
					([ReinigungID],[PersonalID],[Datum],[Schicht])
					VALUES (@ReinigungID, @PersonalFreiID, @Datum, '1');
					----------------------
					SET @Erfolg = 1;
					SET @Feedback = 'Reinigung: ' + CONVERT(varchar,  @ReinigungID) + ' erledigt! ' 
					+' MitarbeiterID: '+CONVERT(varchar,  @PersonalFreiID)+ ',  Schicht: 1'+ ', Datum: ' + CONVERT(varchar,  @Datum) ;;
				END
				BREAK;
			END
		END
		--IF @PersonalFreiID IS NULL 
		--	SET @Datum=DATEADD(day,1,@Datum);

	END TRY 
	BEGIN CATCH
		SET @Erfolg = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH;    
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_AddArbeitZeit] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sp_AddArbeitZeit] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sp_AddArbeitZeit] TO [ReinigungsLeiter] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup_HotelProjekt]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 14.04.2023
-- Description:	Backup des HotelProjekts
-- =============================================
CREATE     PROCEDURE [dbo].[sp_Backup_HotelProjekt]
	@Pfad nvarchar(256)='C:\SQL-Kurs\DB\Backup\'	
	--@Feedback nvarchar(MAX) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		DECLARE @Feedback nvarchar(MAX);
		DECLARE @backupFile NVARCHAR(MAX); -- file name
		SET @backupFile = @Pfad + 
						  'HotelProjekt-' + [dbo].[sf_Zeitstempel]() + '.bak';

		DECLARE @t TABLE (FileExists int, FileIsDir int, ParentDirExists int);
		INSERT INTO @t EXEC master.dbo.xp_fileexist @Pfad;

		IF ((SELECT FileIsDir FROM @t) = 0 OR (SELECT ParentDirExists FROM @t) =0)
		BEGIN
		-- Ordner existiert nicht
			PRINT 'Pfad existiert nicht.';

			EXEC master.sys.xp_create_subdir @Pfad;

			PRINT 'Der Pfad '+ @Pfad + ' wurde erstellt.'+ CHAR(10); 
		END
	
		BACKUP DATABASE [HotelProjekt] TO DISK = @backupFile;
		SET @Feedback = CHAR(10) + 'Alles OK!';
		PRINT @Feedback;
	END TRY
	BEGIN CATCH	
		----------------------------------
		SET @Feedback = ERROR_MESSAGE() + CHAR(10)-- Zeilenumbruch
						+ 'Fehler Nr. ' + CONVERT(varchar, ERROR_NUMBER()) + CHAR(10)
						+ 'Prozedur: '  + ERROR_PROCEDURE() + CHAR(10)
						+ 'Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
		PRINT @Feedback;

	END CATCH
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Backup_HotelProjekt] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Kunden_Status_UPDATE]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   PROCEDURE [dbo].[sp_Kunden_Status_UPDATE]
	-- Add the parameters for the stored procedure here
	  @KundenID int,
	  
	  @Feedback AS NVARCHAR(MAX) OUTPUT
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @ReservAnzahl AS int
	
	DECLARE @Status AS int

	DECLARE @StatusName AS nvarchar(30)
	
	DECLARE @StatusWar AS int

	BEGIN TRY 
					SELECT 
					@ReservAnzahl = COUNT(dbo.Kunden.KundenID) 
					FROM dbo.Reservierung INNER JOIN
					dbo.Kunden ON dbo.Reservierung.KundenID = @KundenID INNER JOIN
					dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
					WHERE dbo.Kunden.KundenID = @KundenID	

					IF @ReservAnzahl IS NULL
					SET @ReservAnzahl = 0
						
					SELECT  
					@Status = dbo.Kunden.StatusID
					FROM dbo.Kunden, dbo.Reservierung
					WHERE dbo.Kunden.KundenID = @KundenID 

					SELECT
					@StatusName = dbo.Status.Status
					FROM            
					dbo.Kunden INNER JOIN
                    dbo.Status ON dbo.Kunden.StatusID = dbo.Status.StatusID
					WHERE dbo.Kunden.KundenID = @KundenID	

								
					--Status = 1--
					IF @Status = 1 AND @ReservAnzahl BETWEEN 1 AND 2 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geändert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 1 AND @ReservAnzahl BETWEEN 3 AND 7 
						BEGIN							
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 2
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geändert. Vorherige Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 1 AND @ReservAnzahl >=8 
						BEGIN
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 3
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geändert. Vorherige Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50001, @Feedback, 1;
						END

					----Status = 2--
					--IF @Status = 2 AND @ReservAnzahl BETWEEN 1 AND 2  
					--	BEGIN
					--		UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 1
					--		WHERE dbo.Kunden.KundenID = @KundenID
					--		SET @Feedback = 'Status hat sich geändert, Status = Stndart';
					--		--THROW 50002, @Feedback, 1;
					--	END

					IF @Status = 2 AND @ReservAnzahl BETWEEN 3 AND 7
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geändert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50002, @Feedback, 1;
						END

					IF @Status = 2 AND @ReservAnzahl >=8 
						BEGIN
							SET @StatusWar = @Status
							UPDATE dbo.Kunden SET dbo.Kunden.StatusID = 3
							WHERE dbo.Kunden.KundenID = @KundenID
							SET @Feedback = 'Status hat sich geändert. Vorherige Status war ' + CONVERT(varchar,  @StatusWar) + '. ' + 'Der Kunde hat den neuen Status: ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50002, @Feedback, 1;
						END
					
					----Status = 3--
					IF @Status = 3 AND @ReservAnzahl BETWEEN 1 AND 2 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geändert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END

					IF @Status = 3 AND @ReservAnzahl BETWEEN 3 AND 7 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geändert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END

					IF @Status = 3 AND @ReservAnzahl >=8 
						BEGIN
							SET @Feedback = 'Status hat sich NICHT geändert. Der Kunde hat den Status ' + 
							CONVERT(varchar,  @StatusName) + '. ' + 'Die Anzahl der Reservierungen: ' + CONVERT(varchar,  @ReservAnzahl);
							--THROW 50003, @Feedback, 1;
						END
					
					--Status = null--
					IF @Status  IS NULL
						BEGIN
							SET @Feedback = 'Status hat sich nicht geändert! Kein KundeID = ' +  
							CONVERT(varchar,  @KundenID) + ', ' + 'Status: NULL';
							--THROW 50003, @Feedback, 1;
						END

					--Reservierung = null--

					--IF @ReservAnzahl = 0 AND @Status = 1 OR @Status = 2 OR @Status = 3
					--	BEGIN
					--		SET @Feedback = 'Status hat sich nicht geändert! Kunde hat keine Reservierungen';
					--		--THROW 50001, @Feedback, 1;
					--	END

					IF @Status = 1 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END

					IF @Status = 2 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END
	
					IF @Status = 3 AND @ReservAnzahl = 0
						BEGIN
							SET @Feedback = 'Der Kunde hat den Status ' + CONVERT(varchar,  @StatusName) + '. ' + 'Kunde hat keine Reservierungen';
							--THROW 50001, @Feedback, 1;
						END
		
				

														
	END TRY

	BEGIN CATCH
			SET @Feedback =
			ERROR_MESSAGE() + ' Fehler Nr.: '+ CONVERT(varchar, ERROR_NUMBER()) + ', '+ ' Prozedur: '  + ERROR_PROCEDURE() + ', '+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
			THROW 50004, @Feedback, 1;
	END CATCH;
   
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Kunden_Status_UPDATE] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_DELETE]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 18.04.2023
-- Description:	Prüfung und Löschung von Reservierungsdaten
-- =============================================
CREATE     PROCEDURE [dbo].[sp_Zimmer_Reservierung_DELETE] 
 @Reservierung_ID AS int,

 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @BegDatum AS date;
	DECLARE @EndDatum AS date;
	DECLARE @msg AS NVARCHAR(MAX);

	BEGIN TRY
		DECLARE @Res_ID AS int;

		SELECT @Res_ID=[ReservierungID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;
		
		IF @Res_ID IS NULL
		BEGIN
			SET @msg= CONCAT_WS(' ','Es gibt keine Reservierung Nr.', @Reservierung_ID, 
									'Korrigieren Sie bitte!');
					THROW 70001, @msg, 1;
		END

		SELECT @BegDatum=[BeginDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @EndDatum=[EndDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		IF DATEDIFF(DAY, @BegDatum, GETDATE()) > 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Die Reservierung fing schon am', @BegDatum, 'an.',
									'Löschung ist leider nicht möglich!');
					THROW 70002, @msg, 1;
		END
		
		--------------------- Vorbereitung zum Löschen----------------------------- 
		DECLARE @Zimmer_ID AS int;
		DECLARE @Reinigung_ID AS int;

		SELECT @Zimmer_ID=[ZimmerID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Reinigung_ID=[ReinigungID] FROM [dbo].[Reinigung]
		WHERE [ZimmerID]=@Zimmer_ID AND [AnfrageDatum]=@EndDatum;

		------------ Löschung der Zeile von der Tabelle 'Reservierung' -----------------
		DELETE FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Die Reservierung Nr.', @Reservierung_ID, 'für',
						@BegDatum, '-', @EndDatum, 'wurde entfernt.');

		--------Löschung der Zeile von der Tabelle 'Reinigung' (Antrag auf Zimmerreinigung)--------- 
		IF @Reinigung_ID IS NULL
		BEGIN
			SET @msg= @Feedback + ' '+ 
				CONCAT_WS(' ','Leider gibt es keinen Reinigungsantrag mit der Nr.',@Reinigung_ID, 
								'für Reservierung Nr.', @Reservierung_ID 
								);
					THROW 70003, @msg, 1;
		END

		DELETE FROM [dbo].[Reinigung]
		WHERE @Reinigung_ID=[ReinigungID];

		SET @Feedback = CONCAT_WS(' ','Die Reservierung Nr.', @Reservierung_ID, 'für',
						@BegDatum, '-', @EndDatum, 'ist gelöscht.',
						'Der Reinigungsantrag ist auch gelöscht.');

	END TRY
	BEGIN CATCH
		SET @ErfolgStatus = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH; 
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Zimmer_Reservierung_DELETE] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_DELETE] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_DELETE] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_INSERT]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 17.04.2023
-- Description:	Buchungsdaten prüfen und Buchung durchführen oder ablehnen
-- =============================================
CREATE     PROCEDURE [dbo].[sp_Zimmer_Reservierung_INSERT] 
 @KundID AS int,							-- KundenID
 @ZimmerID AS int,							-- Ausgewähltes Zimmer
 --@GesuchtPlaetzeNummer AS tinyint,		-- Gesuchte Schlafplätze
 --@GesuchtKost AS int,						-- Höchstpreis für ein Zimmer, den der Kunde zu zahlen bereit ist
 --@GesuchtKlasse AS tinyint,				-- Mindestklasse des Zimmers, die der Kunde sucht

 @GesuchtBegDatum AS date,					-- Gesuchte BeginDatum
 @GesuchtEndDatum AS date,					-- Gesuchte EndDatum
 
 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @GesuchtPlaetzeNummer AS tinyint;
	DECLARE @GesuchtKost AS smallmoney=10000;
	DECLARE @GesuchtKlasse AS int;
	DECLARE @msg AS NVARCHAR(MAX);

	BEGIN TRY
		SELECT @GesuchtPlaetzeNummer=[dbo].[ZimmernPlaetze].[Platznummer] 
			FROM [dbo].[Zimmer] 
				INNER JOIN [dbo].[Zimmerzuordnung]
			ON 	[dbo].[Zimmerzuordnung].[ZimmerzuordnungID] = [dbo].[Zimmer].[ZimmerzuordnungID] 
				INNER JOIN [dbo].[ZimmernPlaetze]
			ON [dbo].[Zimmerzuordnung].[ZimmernPlaetzeID]=[dbo].[ZimmernPlaetze].ZimmernPlaetzeID
		WHERE [ZimmerID]=@ZimmerID;

		SELECT @GesuchtKlasse=[dbo].[Zimmerzuordnung].[ZimmernKlasseID]
			FROM [dbo].[Zimmer] 
				INNER JOIN [dbo].[Zimmerzuordnung]
			ON 	[dbo].[Zimmerzuordnung].[ZimmerzuordnungID] = [dbo].[Zimmer].[ZimmerzuordnungID]
		WHERE [ZimmerID]=@ZimmerID;

			--------------------------Überprüfung des Kunden ------------------------
			DECLARE @KundAlt AS tinyint;
			DECLARE @GeburtsDatum AS date;
		
			SELECT @GeburtsDatum= [Geburtsdatum] FROM [dbo].[Kunden]
			WHERE [KundenID]=@KundID;
		
			IF [dbo].[sf_GetAge] (@GeburtsDatum)<18
				BEGIN
					DECLARE @KuVN AS NVARCHAR(50);
					DECLARE @KuNN AS NVARCHAR(50);

					SELECT @KuVN= [Vorname] FROM [dbo].[Kunden]
					WHERE [KundenID]=@KundID;

					SELECT @KuNN= [Nachname] FROM [dbo].[Kunden]
					WHERE [KundenID]=@KundID;

					SET @msg=CONCAT_WS(' ','Der Kunde', @KuVN, @KuNN, 
											'ist unter 18 Jahren. Die Reservierung ist leider nicht möglich.');
					THROW 50001, @msg, 1;
				END

				---------------Überprüfung der Daten: BegDatum >= Heute, EndDatum>BegDatum-----------------

				DECLARE @Heute AS date;
				SET @Heute = GETDATE();

				IF (DATEDIFF(DAY, @Heute, @GesuchtBegDatum)<0) OR (@GesuchtBegDatum >= @GesuchtEndDatum)
				BEGIN
					SET @msg='Die Daten der Reservierung enthalten Fehler. Korrigieren Sie bitte!';												
					THROW 50002, @msg, 1;
				END

				------------------  Überprüfung der Zimmernummer --------------------------
		DECLARE @Zimm_ID AS int;
		DECLARE @ZimmNum AS int;

		SELECT @ZimmNum=[Zimmernummer] FROM [dbo].[Zimmer] 
		WHERE [ZimmerID]=@ZimmerID;

		SET @Zimm_ID =(
	
				SELECT Zimmer_ID FROM [dbo].[tf_Frei_Zimmer_Suchen]
			(	
			 @KundID,							-- KundenID 
			 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplätze
			 @GesuchtKost,						-- Höchstpreis für ein Zimmer, den der Kunde zu zahlen bereit ist
			 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

			 @GesuchtBegDatum,					-- Gesuchte BeginDatum
			 @GesuchtEndDatum					-- Gesuchte EndDatum
			) WHERE Zimmer_ID=@ZimmerID
		);

		IF @Zimm_ID IS NULL 
		BEGIN
			SET @msg=CONCAT_WS(' ','Das Zimmer', @ZimmNum,
									'ist leider schon gebucht.',
									'Die Reservierung ist nicht möglich.',
									'Wählen Sie bitte ein anderes Zimmer aus');
			THROW 50003, @msg, 1;
		END

		DECLARE @Preis AS smallmoney;

		SET @Preis =(
	
				SELECT Preis_fuer_den_Kunden FROM [dbo].[tf_Frei_Zimmer_Suchen]
			(	
			 @KundID,							-- KundenID
			 @GesuchtPlaetzeNummer,				-- Gesuchte Schlafplätze
			 @GesuchtKost,						-- Höchstpreis für ein Zimmer, den der Kunde zu zahlen bereit ist
			 @GesuchtKlasse,					-- Mindestklasse des Zimmers, die der Kunde sucht

			 @GesuchtBegDatum,					-- Gesuchte BeginDatum
			 @GesuchtEndDatum					-- Gesuchte EndDatum
			) WHERE Zimmer_ID=@ZimmerID
		);

		------------- Neue Zeile in der Tabelle 'Reservierung' -------------------- 
		INSERT INTO [dbo].[Reservierung]
				([ZimmerID],[KundenID],[GaesteAnzahl],			[BeginDatum],	[EndDatum],			[ReservierungsPreis])
		VALUES   (@ZimmerID, @KundID,	@GesuchtPlaetzeNummer,	@GesuchtBegDatum,@GesuchtEndDatum,	@Preis);	

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Zimmer_Nr', @ZimmNum, 'ist für',
						@GesuchtBegDatum, '-', @GesuchtEndDatum, 'erfolgreich gebucht!');

		--------Neue Zeile in der Tabelle 'Reinigung' (Neuer Reinigungsantrag für ein Zimmer)------------------ 
		INSERT INTO [dbo].[Reinigung]
					([ZimmerID],[AnfrageDatum],		[Erledigt])
		VALUES		(@ZimmerID, @GesuchtEndDatum,	0);	

	END TRY
	BEGIN CATCH
		SET @ErfolgStatus = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH; 
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Zimmer_Reservierung_INSERT] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_INSERT] TO [Manager] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_INSERT] TO [Rezeptionist] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 18.04.2023
-- Description:	Änderung des Zimmerpreises mit dem Mahager-Rabatt
-- =============================================
CREATE   PROCEDURE [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis] 
 @Reservierung_ID AS int,
 @Manager_Rabatt AS smallmoney,		-- Maximaler Rabatt, der Manager benutzen kann
 @Max_Rabatt AS smallmoney,			-- Höhster Rabatt pro Zimmer vom Standardpreis

 @ErfolgStatus AS bit OUTPUT,
 @Feedback AS NVARCHAR(MAX) OUTPUT
 AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @msg AS NVARCHAR(MAX);
	
	DECLARE @BegDatum AS date;
	DECLARE @Zimmer_ID AS int;

	BEGIN TRY
		DECLARE @Res_ID AS int;
		
		SELECT @Res_ID=[ReservierungID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @BegDatum=[BeginDatum] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		-----------------Überprüfung der ReservierungID--------------------------------
		IF @Res_ID IS NULL
		BEGIN
			SET @msg= CONCAT_WS(' ','Es gibt keine Reservierung Nr.', @Reservierung_ID, 
									'Korrigieren Sie bitte die Reservierungsnummer!');
					THROW 80001, @msg, 1;
		END

		--------------Überprüfung der Anfang der Reservierung--------------------------------
		IF DATEDIFF(DAY, @BegDatum, GETDATE()) > 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Die Reservierung fing schon am', @BegDatum, 'an.',
									'Die Änderung ist leider nicht möglich!');
					THROW 80002, @msg, 1;
		END

		--------------Überprüfung der schon gemachte Änderungen im Preis dieser Reservierung----------------
		DECLARE @Reslog_ID AS int;
		
		SELECT TOP 1 @Reslog_ID = [ID] FROM [dbo].[Reservierungslog]
		WHERE [ReservierungID]=@Reservierung_ID AND [Mode]='U' AND ([ReservierungsPreis_alt] IS NOT NULL)
		ORDER BY [ID] DESC;

		IF @Reslog_ID IS NOT NULL
		BEGIN
			SET @msg= 'Das Rabatt kann nicht mehr als einmal angewendet werden!';
			THROW 80003, @msg, 1;		
		END

		--------------------------Änderung des Preises --------------------------------------
		DECLARE @Standard_Preis AS smallmoney;
		DECLARE @Heutiger_Preis AS smallmoney;
		
		SELECT @Zimmer_ID=[ZimmerID] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Heutiger_Preis=[ReservierungsPreis] FROM [dbo].[Reservierung]
		WHERE [ReservierungID]=@Reservierung_ID;

		SELECT @Standard_Preis=[KostProNacht] FROM [dbo].[Zimmerzuordnung]
		INNER JOIN [dbo].[Zimmer]
		ON [dbo].[Zimmerzuordnung].[ZimmerzuordnungID]=[dbo].[Zimmer].[ZimmerzuordnungID]
		WHERE [ZimmerID]=@Zimmer_ID;
		
		DECLARE @Min_Preis AS smallmoney;
		DECLARE @Neuer_Preis AS smallmoney;

		SET @Min_Preis = @Standard_Preis * (1-@Max_Rabatt/100);
		SET @Neuer_Preis = @Heutiger_Preis*(1-@Manager_Rabatt/100);
		
		IF @Neuer_Preis< @Min_Preis SET @Neuer_Preis=@Min_Preis;
			
		---------------------Überprüfung des Preises--------------------------------
		IF @Neuer_Preis < = 0
		BEGIN 
			SET @msg= CONCAT_WS(' ','Der Zimmerpreis kann nicht niedriger als 0 sein.',
							'Korrigieren Sie bitte die Rabattgröße!');
					THROW 80004, @msg, 1;
		END

		------------------- Update des ReservierungsPreises-----------------------
		UPDATE [dbo].[Reservierung]
		SET [ReservierungsPreis]=@Neuer_Preis
		WHERE [ReservierungID]=@Reservierung_ID;

		SET @ErfolgStatus=1;
		SET @Feedback = CONCAT_WS(' ','Der Reservierungspreis für Reservierung Nr.',
						@Reservierung_ID, 'ist erfolgreich geändert!');
				
	END TRY
	BEGIN CATCH
		SET @ErfolgStatus = 0; -- nicht geklappt--
		-- 	@Feedback text OUTPUT --Fehlermeldungen etc.
		SET @Feedback = 
			ERROR_MESSAGE() + ' Fehler Nr. '+ CONVERT(varchar, ERROR_NUMBER())
						+ ' Prozedur: '  + ERROR_PROCEDURE()
						+ ' Zeile Nr.: ' + CONVERT(varchar,  ERROR_LINE());
	END CATCH; 
END
GO
ALTER AUTHORIZATION ON [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis] TO [Manager] AS [dbo]
GO
/****** Object:  Trigger [dbo].[tr_Kunden_Delete]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Description:	<Triggertabellen: Registrierung im Kundenlog der Änderung von Kundendaten>
-- =============================================
CREATE TRIGGER [dbo].[tr_Kunden_Delete]
   ON  [dbo].[Kunden] 
   FOR DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
(Mode, KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, Email,
KreditKardNummer,StatusID)
SELECT 'D', KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, [E-Mail],
KreditKartNummer,StatusID 
FROM deleted;
END
GO
ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [tr_Kunden_Delete]
GO
/****** Object:  Trigger [dbo].[tr_Kunden_Insert]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE TRIGGER [dbo].[tr_Kunden_Insert]
   ON  [dbo].[Kunden] 
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
(Mode, KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, Email,
KreditKardNummer,StatusID)
SELECT 'I', KundenID, Vorname, NachName,DokumentID, DokumentNummer, Strasse , HausNummer, Ort, TelefonNummer, [E-Mail],
KreditKartNummer,StatusID 
FROM inserted;
END
GO
ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [tr_Kunden_Insert]
GO
/****** Object:  Trigger [dbo].[tr_Kunden_Update]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE   TRIGGER [dbo].[tr_Kunden_Update] 
   ON [dbo].[Kunden] 
   FOR UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for trigger here
	INSERT INTO dbo.KundenLog
	(
		Mode, 
		KundenID, 
		[VorName], -- neu
		[VornameAlt], -- alt
		NachName, 
		[NachNameAlt],
		[DokumentID],
		[DokumentNummer],
		[StatusID], 
		[StatusIDAlt]
	)
	SELECT   
		'U', -- Mode
		KundenID,
		(SELECT [VorName] FROM inserted), -- neu
		[VorName], -- alt 
		(SELECT [NachName] FROM inserted), -- neu              
		NachName,  -- alt		
		[DokumentID],
		[DokumentNummer],
		(SELECT [StatusID] FROM inserted), -- neu   
		[StatusID] -- alt 
	FROM deleted;
END
GO
ALTER TABLE [dbo].[Kunden] ENABLE TRIGGER [tr_Kunden_Update]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_DELETE]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	Protokollierung der Änderung von Reservierungsdaten (DELETE)
-- =============================================
CREATE     TRIGGER [dbo].[tr_Reservierung_DELETE] 
   ON [dbo].[Reservierung]  
   FOR DELETE 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    ------------- DECLARE -----------------
	
	--DECLARE @KundID AS int;
		
	--DECLARE @ZimmerNr AS tinyint;
	--DECLARE @ZimmID AS int;

	--DECLARE @GesuchtBegDatum AS date;
	--DECLARE @GesuchtEndDatum AS date;

	---------Variables ausfüllen----------------
	--SELECT @KundID = KundenID FROM inserted;
	--SELECT @ZimmID = ZimmerID FROM inserted;
	
	--SELECT @GesuchtBegDatum = BeginDatum FROM inserted;
	--SELECT @GesuchtEndDatum = EndDatum FROM inserted;

	
	--SET @ZimmerNr =
	--	(SELECT Zimmernummer FROM dbo.Zimmer
	--	WHERE ZimmerID=@ZimmID
	--	);
	---------------Meldung aufbauen-----------------------
	DECLARE @msg AS NVARCHAR(MAX);
	
	--SET @msg = CONCAT_WS(' ', 'OK! Zimmer_Nr',
	--					@ZimmerNr, 'ist für',
	--					@GesuchtBegDatum, '-',
	--					@GesuchtEndDatum,'erfolgreich gebucht');

	INSERT INTO [dbo].[Reservierungslog]
				(Mode, [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],[Meldung])
		SELECT   'D',  [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],@msg  
		FROM deleted;	
END
GO
ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_DELETE]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_INSERT]    Script Date: 20.04.2023 14:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	Protokollierung der Änderung von Reservierungsdaten (INSERT)
-- =============================================
CREATE   TRIGGER [dbo].[tr_Reservierung_INSERT] 
   ON [dbo].[Reservierung]  
   FOR INSERT 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    ------------- DECLARE -----------------
	
	DECLARE @KundID AS int;
		
	DECLARE @ZimmerNr AS tinyint;
	DECLARE @ZimmID AS int;

	DECLARE @GesuchtBegDatum AS date;
	DECLARE @GesuchtEndDatum AS date;

	-------Variables ausfüllen----------------
	SELECT @KundID = KundenID FROM inserted;
	SELECT @ZimmID = ZimmerID FROM inserted;
	
	SELECT @GesuchtBegDatum = BeginDatum FROM inserted;
	SELECT @GesuchtEndDatum = EndDatum FROM inserted;

	
	SET @ZimmerNr =
		(SELECT Zimmernummer FROM dbo.Zimmer
		WHERE ZimmerID=@ZimmID
		);
	---------------Meldung aufbauen-----------------------
	DECLARE @msg AS NVARCHAR(MAX);
	
	SET @msg = CONCAT_WS(' ', 'OK! Zimmer_Nr',
						@ZimmerNr, 'ist für',
						@GesuchtBegDatum, '-',
						@GesuchtEndDatum,'erfolgreich gebucht');

	INSERT INTO [dbo].[Reservierungslog]
				(Mode, [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],[Meldung])
		SELECT   'I',  [ReservierungID],[ZimmerID],[KundenID],[GaesteAnzahl],
				[BeginDatum],[EndDatum],[ReservierungsPreis],@msg  
		FROM inserted;	
END
GO
ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_INSERT]
GO
/****** Object:  Trigger [dbo].[tr_Reservierung_UPDATE]    Script Date: 20.04.2023 14:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Vsevolod Dorskiy
-- Create date: 16.04.2023
-- Description:	Protokollierung der Änderung von Reservierungsdaten (UPDATE)
-- =============================================
CREATE   TRIGGER [dbo].[tr_Reservierung_UPDATE] 
   ON [dbo].[Reservierung]  
   FOR UPDATE 
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Reservierungslog]
	(
	Mode, 
	[ReservierungID],
	
	[ZimmerID_alt],
	[ZimmerID],
	
	[KundenID_alt],
	[KundenID],
	
	[GaesteAnzahl_alt],
	[GaesteAnzahl],
				
	[BeginDatum_alt],
	[BeginDatum],
	
	[EndDatum_alt],
	[EndDatum],
	
	[ReservierungsPreis_alt],
	[ReservierungsPreis]
	)

	SELECT
	'U',
	[ReservierungID],

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [ZimmerID] FROM inserted) = (SELECT [ZimmerID] FROM deleted)
			THEN NULL
		ELSE [ZimmerID]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [ZimmerID] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [KundenID] FROM inserted) = (SELECT [KundenID] FROM deleted)
			THEN NULL
		ELSE [KundenID]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [KundenID] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [GaesteAnzahl] FROM inserted) = (SELECT [GaesteAnzahl] FROM deleted)
			THEN NULL
		ELSE [GaesteAnzahl]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [GaesteAnzahl] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [BeginDatum] FROM inserted) = (SELECT [BeginDatum] FROM deleted)
			THEN NULL
		ELSE [BeginDatum]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [BeginDatum] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [EndDatum] FROM inserted) = (SELECT [EndDatum] FROM deleted)
			THEN NULL
		ELSE [EndDatum]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [EndDatum] FROM inserted),

	----------------------------Alter Wert ------------------------------
	CASE	
		WHEN (SELECT [ReservierungsPreis] FROM inserted) = (SELECT [ReservierungsPreis] FROM deleted)
			THEN NULL
		ELSE [ReservierungsPreis]  -- Wert alt
	END,
	----------------------------Neuer Wert ------------------------------
	(SELECT [ReservierungsPreis] FROM inserted)

	FROM deleted; 	
END
GO
ALTER TABLE [dbo].[Reservierung] ENABLE TRIGGER [tr_Reservierung_UPDATE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[12] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Personal"
            Begin Extent = 
               Top = 28
               Left = 81
               Bottom = 353
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Position"
            Begin Extent = 
               Top = 226
               Left = 802
               Bottom = 382
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Beruf"
            Begin Extent = 
               Top = 131
               Left = 449
               Bottom = 283
               Right = 643
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Arbeitzeit"
            Begin Extent = 
               Top = 12
               Left = 919
               Bottom = 231
               Right = 1113
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_welchen Tagen ein Mitarbeiter beschäftigt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_welchen Tagen ein Mitarbeiter beschäftigt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Status"
            Begin Extent = 
               Top = 7
               Left = 315
               Bottom = 148
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-AlleKunden_GebDatum-Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-AlleKunden_GebDatum-Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 259
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Reservierung"
            Begin Extent = 
               Top = 7
               Left = 315
               Bottom = 170
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Zimmer"
            Begin Extent = 
               Top = 7
               Left = 558
               Bottom = 148
               Right = 791
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-Buchungen des Kunden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-Buchungen des Kunden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Status"
            Begin Extent = 
               Top = 24
               Left = 418
               Bottom = 165
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-VipKunden-GebDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View-VipKunden-GebDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Reinigung"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Reservierung"
            Begin Extent = 
               Top = 18
               Left = 659
               Bottom = 254
               Right = 846
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zimmer"
            Begin Extent = 
               Top = 146
               Left = 291
               Bottom = 292
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1950
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1590
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ZimmerNichtGereinigtDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ZimmerNichtGereinigtDatum'
GO
USE [master]
GO
ALTER DATABASE [Hotelprojekt] SET  READ_WRITE 
GO
