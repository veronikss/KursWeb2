<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pml.aspx.cs" Inherits="KursWeb.Contact" %>

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
			<a href="Default.aspx">Om kurset</a>
			<a class="active" href="Pml.aspx">Påmelding</a>
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
			
	<div class="container">

		<asp:Label ID="LabelConf" runat="server" Visible="false" Text="Takk! Nå er du registrert"></asp:Label>
		<asp:Panel ID="PanelReg" runat="server" >


		<h1 style= "font-size: 32px; text-align: center">Du kan melde deg på kurset ved å opprette en konto.</h1>
		
		<div class="login">

		<h2>Registrer ny bruker</h2>
		<p>Fyll ut dette skjemaet for å opprette en konto.</p>
		<hr/>

			<table>
                <tr>
                    <td>E-post:</td>
                    <td><asp:TextBox ID="TextBoxRegEmail" runat="server"></asp:TextBox></td>
                    <td><ASP:RequiredFieldValidator ControlToValidate="TextBoxRegEmail"
                        Display="Static" ErrorMessage="*" runat="server" 
                        ID="vUserName" /></td>
                </tr>
                <tr>
                    <td>Passord:</td>
                    <td><asp:TextBox ID="TextBoxPassord" runat="server"></asp:TextBox></td>
                    <td><ASP:RequiredFieldValidator ControlToValidate="TextBoxPassord"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="vUserPass" />
                    </td>
                </tr>
				<tr>
                    <td>Gjenta passord:</td>
                    <td><asp:TextBox ID="TextBoxRepPsw" runat="server"></asp:TextBox></td>
                    <td><ASP:RequiredFieldValidator ControlToValidate="TextBoxRepPsw"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="vUserPassRep" />
                </td>
                </tr>
            </table>

		<asp:CheckBox ID="CheckBoxReg" runat="server" Text="Husk meg"/>

		<p>Ved å opprette en konto godtar du våre <a href="#" style="color:dodgerblue">Vilkår og Personvern</a>.</p>

			<div class="clearfix">
			<asp:Button ID="ButtonReg" runat="server" CssClass="button" Text="Registrer meg" OnClick="ButtonReg_Click" />

			</div>
		</div>

		</asp:Panel>

	</div>
			
</form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
