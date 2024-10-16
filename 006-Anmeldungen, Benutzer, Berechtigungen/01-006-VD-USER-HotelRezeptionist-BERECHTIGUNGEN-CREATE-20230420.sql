USE [Hotelprojekt]
GO
CREATE USER [Rezeptionist] FOR LOGIN [HotelRezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Suchen] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_DELETE] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_Rabatt_Koeffizient] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmer] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Reservierung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Status] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_INSERT] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Zeigen] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Kunden] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Arbeitzeit] TO [Rezeptionist]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [Rezeptionist]
GO
