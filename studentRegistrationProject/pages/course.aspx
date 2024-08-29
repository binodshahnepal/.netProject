<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Course Details</h1>
    </div>
    <div>
        <table>
            <tr>
                <td class="td">Course Name:</td>
                <td>
                    <asp:TextBox ID="txtCourseName" runat="server" CssClass="textBox" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please provide the course name" ControlToValidate="txtCourseName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="td">Course Description:</td>
                <td>
                    <asp:TextBox ID="txtCourseDescription" runat="server" TextMode="MultiLine" Rows="10" Columns="20" CssClass="textBox"></asp:TextBox></td>
            </tr>
             <tr>
     <td class="td">Course Start Date:</td>
     <td>
         <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" CssClass="textBox" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtStartDate" runat="server" ErrorMessage="Please choose date" ForeColor="Red"></asp:RequiredFieldValidator>
     </td>
 </tr>
            <tr>
                <td colspan="4" ><asp:Button ID="btnCreateCourse" Text="Create Course" runat="server" OnClick="btnCreateCourse_Click" CssClass="btn"/></td>
            </tr>
            <tr><td colspan="4" ><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td></tr>
        </table>
    </div>
</asp:Content>
