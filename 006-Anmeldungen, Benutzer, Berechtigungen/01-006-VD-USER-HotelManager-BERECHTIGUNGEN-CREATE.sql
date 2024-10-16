USE [Hotelprojekt]
GO
CREATE USER [Manager] FOR LOGIN [HotelManager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_UngereinigteZimmer] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_MonatlichesEinkommen] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Dokument] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_AddArbeitZeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_Rabatt_Koeffizient] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Suchen] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_Frei_Zimmer_Zeigen] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Position] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_INSERT] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Personal] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Status] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Beruf] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_DELETE] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [Manager]
GO
use [Hotelprojekt]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Arbeitzeit] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_PersonalFreiDatum] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmerNichtGereinigtDatum] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [Manager]
GO
use [Hotelprojekt]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Reservierung] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_Zimmer_Reservierung_UPDATE_Preis] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Kunden] TO [Manager]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmer] TO [Manager]
GO
