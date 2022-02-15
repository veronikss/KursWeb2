<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="KursWeb.Contact1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Kontakt</title>
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
			<a class="active" href="Contact.aspx">Kontakt</a>
			<a href="MyPage.aspx">Min side</a>
			<a href="Quiz.aspx">Quiz</a>

			<div style="float:right">
                <a href="Login.aspx"><asp:LoginStatus ID="LoginStatus1" runat="server" /></a>
				<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
				<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
			</div>
		</div>
	</div>

		<div class="container">

			<div class="login">

				<h1 style="font-size: 32px;">Kontakt</h1>
				<p style= "font-size: 24px;">Skriv inn en melding til lederen av kurset her:</p>

				<asp:Label ID="LabelMldBruker" runat="server" Text="Brukernavn"></asp:Label>
				<td><asp:TextBox ID="TextBoxMldBruker" runat="server"></asp:TextBox>
				<ASP:RequiredFieldValidator ControlToValidate="TextBoxMldBruker"
                        Display="Static" ErrorMessage="*" runat="server" 
                        ID="vUserMsg" /></td>
			
				<asp:Label ID="LabelMld" runat="server" Text="Melding"></asp:Label>
				<textarea id="subject" name="subject" placeholder="Skriv inn det du lurer på.." style="height:100px"></textarea> <%--lage en kobling til contact form--%>
					<asp:Button ID="ButtonMld" runat="server" CssClass="button" Text="Send" Width="88px" OnClick="ButtonMld_Click" />

			</div>

		</div>

	</form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
