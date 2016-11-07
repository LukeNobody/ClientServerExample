# ClientServerExample
Ukázka dvou aplikací komunikujících pomocí Hessian protokolu. Aplikace ClientApp odesílá zprávu aplikaci ServerApp, 
která tuto zprávu ukládá do databáze.

U projektu Common je třeba provést Maven install a provést import přiloženého dump souboru MessagesExample.dpdmp do 
Oracle databáze, tím se vytvoží požadované schéma.

Dále je třeba nastavit správné URL v souboru src/main/resources/application.properties projektu ClientApp a správné 
hodnoty v src/main/resources/hibernate.properties projektu ServerApp.
