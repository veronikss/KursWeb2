<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="KursWeb.MyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Min Side</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
    <form runat="server" style="border:1px solid #ccc">


    <div class="top">
	<a href="Default.aspx">Kurs i Microsoft SQL Server Management Studio</a>
	</div>

	<div class="sticky">
		<div class="nav">
			<a href="Default.aspx">Om kurset</a>
			<a href="Pml.aspx">Påmelding</a>
			<a href="Contact.aspx">Kontakt</a>
			<a class="active" href="MyPage.aspx">Min side</a>
			<a href="Quiz.aspx">Quiz</a>

			<div style="float:right">
                <a href="Login.aspx"><asp:LoginStatus ID="LoginStatus1" runat="server" /></a>
				<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
				<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
			</div>
		</div>
	</div>


		<div class="container">
			<h1>MS SQL Server</h1>
			<h1 style="font-size: 28px">Del 1</h1>
			<p style= "font-size: 24px">Først må du logge deg inn i SQL gjennom Windows authentication. Det er den letteste måten for pålogging, men uten sikkerhet fordi den mangler et passord. For å prøve hvordan SQL-en funker er det et bra forslag.
				Da kan du høyreklikke på Databases feltet og lage ne ny database, gi den eventuelt navn, f.eks. Brukere.</p>
			<p style= "font-size: 24px"> Da kan du begynne å lage et diagram – det er en modell til din fremtidig tabell. Gi det et navn og begynn å fylle den opp. I Column Name skriver du navn til verdiene du skal ha, 
				f.eks. Id, Brukernavn og Passord. Så velger du en datatype for hver. Id kan ha en int-verdi fordi id-en er bare tall. Brukernavn kan ha en nvarchar (50) verdi fordi denne kan inneholde både tall og 
				bokstaver, maks tegn er 50. Passord kan ha samme verdien som Brukernavnet fordi for mer sikkerhet trenger vi både tall og bokstaver. Nå kan du lagre diagrammet. Tabellen ble opprettet automatisk.</p>
			<p style= "font-size: 24px">Det var nesten alt du trenger å vite om hvordan man lager en databasemodell.</p>
			<p style= "font-size: 24px">For at databasen skal bli fullt opp må det kobles sammen med f.eks. en nettside der brukere skal oppgi dataen selv. Du kan også skrive dataene inn i databasen selv. Det spørs hvilke oppgaver databasen er lagt for. 
				For å skrive dataene selv må du høyreklikke tabellen som du lagde og velge edit top 200 rows.</p>
		</div>

    </form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
