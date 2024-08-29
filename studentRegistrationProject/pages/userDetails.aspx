<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="userDetails.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User Details</h1>
   <div style="width:100%;">
       <asp:GridView ID="gvUserDetails" CssClass="table table-hover"
           runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
           <AlternatingRowStyle BackColor="White" />
           <FooterStyle BackColor="#CCCC99" />
           <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
           <RowStyle BackColor="#F7F7DE" />
           <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FBFBF2" />
           <SortedAscendingHeaderStyle BackColor="#848384" />
           <SortedDescendingCellStyle BackColor="#EAEAD3" />
           <SortedDescendingHeaderStyle BackColor="#575357" Width="100%" />
       </asp:GridView>
   </div>
</asp:Content>
