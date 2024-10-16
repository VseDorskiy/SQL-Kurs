USE Hotelprojekt
GO

DECLARE @Str AS NVARCHAR(MAX)='gkjsadh kja12312';
DECLARE @CheckStatus AS bit;
DECLARE @Parameter AS tinyint;
--Parameter						--10 nur Latinische Buchstaben [a-z,A-Z],
								--01 nur Zahlen [0-9],
								--11 nur Latinische Buchstaben und Zahlen [a-z,A-Z,0-9],
								--02 nur Zahlen und Blanks [0-9,' '],
								--20 nur Latinische Buchstaben,Blanks [a-z,A-Z,' '],
								--22 nur Latinische Buchstaben,Zahlen,Blanks [a-z,A-Z,0-9,' ']
--Parameter (standard)=10

--Checkstatus=1, wenn die Daten korrekt sind und Checkstatus=0 wenn nicht

SET @Checkstatus=[dbo].[sf_Haben_Daten_nur_Buschstaben_Zahlen] (@Str,22);

SELECT @Checkstatus;