<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="studentDetails.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>STUDENT DETAILS</h1>
    <asp:GridView ID="gvStudenDetails" runat="server" CssClass="table table-hover" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="studentId" HeaderText="Student ID" />
            <asp:BoundField DataField="studentName" HeaderText="Student Name" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="contact" HeaderText="Contact" />
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
            <asp:BoundField DataField="program" HeaderText="Program" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />

    </asp:GridView>
</asp:Content>
