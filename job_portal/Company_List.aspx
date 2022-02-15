<%@ Page Language="C#" MasterPageFile ="~/MasterPage.master" AutoEventWireup="true" CodeFile="Company_List.aspx.cs" Inherits="Company_List" %>

<asp:Content ID ="content" ContentPlaceHolderID ="slider" runat ="server" >
    <asp:GridView ID ="gd1" align="center" BorderWidth="20px" BorderColor="Black" Height="50px" Width ="1000px" Font-Size="Larger" runat ="server" AutoGenerateColumns="False" 
    DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="office_address" HeaderText="office_address" 
            SortExpression="office_address" />
        <asp:BoundField DataField="email" HeaderText="email" 
            SortExpression="email" />
        <asp:BoundField DataField="company_description" 
            HeaderText="company_description" SortExpression="company_description" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:job_portalConnectionString %>" 
    
        SelectCommand="SELECT [id], [name], [type], [state], [city], [office_address], [email], [company_description] FROM [company]"></asp:SqlDataSource>
    <br /><br />
    <center><asp:LinkButton ID="logout" runat ="server" Text="LogOut" PostBackUrl ="~/User_Login.aspx"></asp:LinkButton></center>
</asp:Content>