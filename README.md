LAB1
A mssql Aggregate functions


### MoonMissions
Använd ”select into” för att ta ut kolumnerna ’Spacecraft’, ’Launch date’, ’Carrier rocket’, ’Operator’, samt ’Mission type’ för alla lyckade uppdrag (Successful outcome) och sätt in i en ny tabell med namn ”SuccessfulMissions”.
GO


I kolumnen ’Operator’ har det smugit sig in ett eller flera mellanslag före operatörens namn skriv en query som uppdaterar ”SuccessfulMissions” och tar bort mellanslagen kring operatör.
GO


För betyg väl godkänt:
I ett flertal fall har värden i kolumnen ’Spacecraft’ ett alternativt namn som står inom parantes, t.ex: ”Pioneer 0 (Able I)”. Skriv en query som uppdaterar ”SuccessfulMissions” på ett sådant sätt att alla värden i kolumnen ’Spacecraft’ endast innehåller originalnamnet, dvs ta bort alla paranteser och deras innehåll. Ex: ”Pioneer 0 (Able I)” => ”Pioneer 0”.
GO


Skriv en select query som tar ut, grupperar, samt sorterar på kolumnerna ’Operator’ och ’Mission type’ från ”SuccessfulMissions”. Som en tredje kolumn ’Mission count’ i resultatet vill vi ha antal uppdrag av varje operatör och typ. Ta bara med de grupper som har fler än ett (>1) uppdrag av samma typ och operatör.
GO



### Users
Ta ut samtliga rader och kolumner från tabellen ”Users”, men slå ihop ’Firstname’ och ’Lastname’ till en ny kolumn ’Name’, samt lägg till en extra kolumn ’Gender’ som du ger värdet ’Female’ för alla användare vars näst sista siffra i personnumret är jämn, och värdet ’Male’ för de användare där siffran är udda. Sätt in resultatet i en ny tabell ”NewUsers”.
GO


Skriv en query som returnerar en tabell med alla användarnamn i ”NewUsers” som inte är unika i den första kolumnen, och antalet gånger de är duplicerade i den andra kolumnen.
GO


Skriv en följd av queries som uppdaterar de användare med dubblerade användarnamn som du fann ovan, så att alla användare får ett unikt användarnamn. D.v.s du kan hitta på nya användarnamn för de användarna, så länge du ser till att alla i ”NewUsers” har unika värden på ’Username’.
GO


Skapa en query som tar bort alla kvinnor födda före 1970 från ”NewUsers”. GO
Lägg till en ny användare i tabellen ”NewUsers”.
GO
