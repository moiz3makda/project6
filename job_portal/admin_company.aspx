﻿<%@ Page Language="C#" MasterPageFile ="~/loggedin.master" AutoEventWireup="true" CodeFile="admin_company.aspx.cs" Inherits="admin_company" %>

<asp:Content ID ="content" ContentPlaceHolderID ="slider" runat ="server">
<center>
    <asp:GridView ID="GridView1" Height ="500px" Width ="1000px" runat="server" BorderColor ="Black" BorderWidth="20px" 
        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="office_address" HeaderText="office_address" 
                SortExpression="office_address" />
            <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" 
                SortExpression="mobile_no" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="company_description" 
                HeaderText="company_description" SortExpression="company_description" />
        </Columns>
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:job_portalConnectionString %>" 
        DeleteCommand="delete from company where id=@id;
delete from company_register where id=@id" 
        SelectCommand="SELECT * FROM [company]"></asp:SqlDataSource>
        <center><asp:LinkButton ID="logout" runat ="server" Text="LogOut" PostBackUrl ="~/Admin_Login.aspx"></asp:LinkButton></center>
</asp:Content>