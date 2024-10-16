USE [Hotelprojekt]
GO
CREATE USER [ReinigungsLeiter] FOR LOGIN [HotelReinigungsleiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Position] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmer] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernPlaetze] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reservierung] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Beruf] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Personal] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_UngereinigteZimmer] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT UPDATE ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT INSERT ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT DELETE ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Arbeitzeit] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[tf_PersonalFreiDatum] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmerNichtGereinigtDatum] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT ALTER ON [dbo].[Reinigung] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Reinigung] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT CONTROL ON [dbo].[Reinigung] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_GetAge] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sf_IstZimmerGereinigt] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[ZimmernKlasse] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT SELECT ON [dbo].[Zimmerzuordnung] TO [ReinigungsLeiter]
GO
use [Hotelprojekt]
GO
GRANT EXECUTE ON [dbo].[sp_AddArbeitZeit] TO [ReinigungsLeiter]
GO
