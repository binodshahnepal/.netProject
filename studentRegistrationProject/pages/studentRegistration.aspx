<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="studentRegistration.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h1>Student Registration Form</h1></div>
<div>
    <table>
        <tr><td>Student Name:</td>
            <td><asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox></td>
        </tr>
            <tr><td>Address:</td>
        <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
    </tr>
            <tr><td>Contact:</td>
        <td><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
    </tr>
            <tr><td>DOB:</td>
        <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox></td>
    </tr>
            <tr><td>Program:</td>
        <td><asp:TextBox ID="txtProgram" runat="server"></asp:TextBox></td>

    </tr>
        <tr><td colspan="4"><asp:Button ID="btnRegisterStudent" Text="Register" runat="server" OnClick="btnRegisterStudent_Click" /></td></tr>
        <tr><td colspan="4"><asp:Label runat="server" Text="" ID="lblMessage"></asp:Label></td></tr>
    </table>
</div>
</asp:Content>
