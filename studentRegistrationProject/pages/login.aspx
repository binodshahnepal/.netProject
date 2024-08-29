<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="studentRegistrationProject.pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="margin-top: 30px;">Student Registration</h1>
        </div>
        <div class="center">
            <table>
                <tr>

                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"
                            CssClass="input" placeholder="User Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Please provide user name"
                            ControlToValidate="txtUserName"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td>
                        <asp:TextBox ID="txtPassword" CssClass="input" runat="server"
                            TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Please provide Password"
                            ControlToValidate="txtPassword"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="input" BackColor="DarkGreen" ForeColor="white" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
