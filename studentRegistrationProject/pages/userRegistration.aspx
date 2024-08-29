<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="userRegistration.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User Registration Page</h1>
    <div>
        <table>
            <tr>
                <td>Full Name:</td>
                <td>
                    <asp:TextBox ID="txtfullName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Please Provide full name"
                        ControlToValidate="txtFullName" ForeColor="Red">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email Address:</td>
                <td>
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Please provide email address"
                        ControlToValidate="txtEmailAddress" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please provide valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailAddress"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>User Name:</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Please provide user name"
                        ControlToValidate="txtUserName" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Please provide password"
                        ControlToValidate="txtPassword" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Please provide confirmation password"
                        ControlToValidate="txtConfirmPassword" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator
                        ID="CompareValidator1"
                        runat="server"
                        ErrorMessage="Passwords do not match"
                        ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btnCreateUser" Text="Create User" runat="server" OnClick="btnCreateUser_Click" /></td>

            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
