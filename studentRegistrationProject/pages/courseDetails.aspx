<%@ Page Title="" Language="C#" MasterPageFile="~/pages/studentMaster.Master" AutoEventWireup="true" CodeBehind="courseDetails.aspx.cs" Inherits="studentRegistrationProject.pages.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Course Details</h1>
    <asp:GridView ID="gvCourseDetails" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="courseId" DataSourceID="courseDataSource" ForeColor="Black" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary" />
            <asp:BoundField DataField="courseId" HeaderText="courseId" InsertVisible="False" ReadOnly="True" SortExpression="courseId" />
            <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
            <asp:BoundField DataField="courseDescription" HeaderText="courseDescription" SortExpression="courseDescription" />
            <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="courseDataSource" runat="server" ConnectionString="Data Source=LAPTOP-RVU9QBPT\SQLEXPRESS;Initial Catalog=studentRegistrationDB;Integrated Security=True;Encrypt=True;TrustServerCertificate=True" DeleteCommand="DELETE FROM [courseTable] WHERE [courseId] = @courseId" InsertCommand="INSERT INTO [courseTable] ([courseName], [courseDescription], [startDate]) VALUES (@courseName, @courseDescription, @startDate)" SelectCommand="SELECT * FROM [courseTable]" UpdateCommand="UPDATE [courseTable] SET [courseName] = @courseName, [courseDescription] = @courseDescription, [startDate] = @startDate WHERE [courseId] = @courseId">
    <DeleteParameters>
        <asp:Parameter Name="courseId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="courseName" Type="String" />
        <asp:Parameter Name="courseDescription" Type="String" />
        <asp:Parameter DbType="Date" Name="startDate" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="courseName" Type="String" />
        <asp:Parameter Name="courseDescription" Type="String" />
        <asp:Parameter DbType="Date" Name="startDate" />
        <asp:Parameter Name="courseId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
