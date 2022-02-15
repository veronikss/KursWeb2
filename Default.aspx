<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KursWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Databasemodellering</title>
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
			<a class="active" href="Default.aspx">Om kurset</a>
			<a href="Pml.aspx">Påmelding</a>
			<a href="Contact.aspx">Kontakt</a>
			<a href="MyPage.aspx">Min side</a>
			<a href="Quiz.aspx">Quiz</a>

			<div style="float:right">
                <a href="Login.aspx"><asp:LoginStatus ID="LoginStatus1" runat="server" /></a>
				<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
				<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
			</div>
		</div>
	</div>

		<div style="overflow:auto">

			<div class="contentleft">
				<p>Annonse</p>
			</div>


			<div class="maincontent">
				<h1 style="font-size: 30px">MS SQL Server</h1>
				<p style= "font-size: 26px">Om du påmelder deg på dette kurset får du informasjon om konfigurering av SQL, innledning og alt du trenger for å starte med MS SQL Management Studio.</p>
				<p style= "font-size: 26px">Du kan også kontakte kursledere via e-post, Instagram eller skrive en melding på nettsiden vår.</p>

			</div>

			<div class="contentright">
				<p>Annonse</p>
			</div>

		</div>

	</form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
