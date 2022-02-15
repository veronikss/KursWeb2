<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="KursWeb.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Quiz</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
    <form runat="server" action="/action_page.php" style="border:1px solid #ccc">


	<div class="top">
	<a href="Default.aspx">Kurs i Microsoft SQL Server Management Studio</a>
	</div>

	<div class="sticky">
		<div class="nav">
			<a href="Default.aspx">Om kurset</a>
			<a href="Pml.aspx">Påmelding</a>
			<a href="Contact.aspx">Kontakt</a>
			<a href="MyPage.aspx">Min side</a>
			<a class="active" href="Quiz.aspx">Quiz</a>

			<div style="float:right">
                <a href="Login.aspx"><asp:LoginStatus ID="LoginStatus1" runat="server" /></a>
				<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
				<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
			</div>
		</div>
	</div>


		<div class="container">

			<table align="center">
				<tr>
					<td><h1>Quiz</h1></td>
				</tr>
				<tr>
					<td>
						<asp:Label ID="Label1" runat="server" Text="Hva er et diagram i SQL?"></asp:Label></td>
				</tr>
				<tr>
					<td>
						<asp:RadioButton GroupName="quiz" ID="RadioButton1" runat="server" Text="88" OnCheckedChanged="RadioButton1_CheckedChanged"/><br />
						<asp:RadioButton GroupName="quiz" ID="RadioButton2" runat="server" Text="eehur" OnCheckedChanged="RadioButton2_CheckedChanged"/><br />
						<asp:RadioButton GroupName="quiz" ID="RadioButton3" runat="server" Text="sjhjf" OnCheckedChanged="RadioButton3_CheckedChanged"/><br />

					</td>
				</tr>
				<tr>
					<td>
						<asp:Button ID="btnSubmit" runat="server" Text="Godta" OnClick="btnSubmit_Click" />
						<asp:Button ID="btnChceck" runat="server" Text="Sjekk" OnClick="btnChceck_Click" />
					</td>
				</tr>
			</table>

		</div>

    </form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
