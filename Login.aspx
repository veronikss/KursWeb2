<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KursWeb.Login" %>

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
    <form id="form1" runat="server" style="border:1px solid #ccc">


    <div class="top">
	<a href="Default.aspx">Kurs i Microsoft SQL Server Management Studio</a>
	</div>
        	
    <div class="sticky">
		<div class="nav">
			<a href="Default.aspx">Om kurset</a>
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

        <div class="container">

            <div class="login">

		        <h1 style="text-align:center">Pålogging</h1>
		        <hr/>

			    <table>
                <tr>
                    <td>E-post:</td>
                    <td><asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></td>
                    <td><ASP:RequiredFieldValidator ControlToValidate="TextBoxEmail"
                        Display="Static" ErrorMessage="*" runat="server" 
                        ID="vUserName" /></td>
                </tr>
                <tr>
                    <td>Passord:</td>
                    <td><asp:TextBox ID="TextBoxPsw" runat="server"></asp:TextBox></td>
                    <td><ASP:RequiredFieldValidator ControlToValidate="TextBoxPsw"
                    Display="Static" ErrorMessage="*" runat="server"
                    ID="vUserPass" />
                    </td>
                </tr>
                <tr>
                    <td>Persistent Cookie:</td>
                    <td><ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" /></td>
                    <td></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="ButtonLogin" runat="server" CssClass="button" Text="Logg inn" OnClick="ButtonLogin_Click"/><p></p>
            <asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />

            </div>

        </div>

    </form>

    <div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>

</body>
</html>
