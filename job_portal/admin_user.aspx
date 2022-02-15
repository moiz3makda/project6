﻿<%@ Page Language="C#" MasterPageFile ="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_user.aspx.cs" Inherits="admin_user" %>

<asp:Content ID="content" ContentPlaceHolderID ="slider" runat ="server">
<center>
    <asp:GridView ID="GridView1" Height ="500px" Width ="1000px" runat="server" BorderColor ="Black" BorderWidth ="20px" 
        AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" 
                SortExpression="mobile_no" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" 
                SortExpression="email_id" />
            <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" 
                SortExpression="date_of_birth" />
            <asp:BoundField DataField="resume" HeaderText="resume" 
                SortExpression="resume" />
               
            <asp:BoundField DataField="education_status" HeaderText="education_status" 
                SortExpression="education_status" />
            <asp:BoundField DataField="key_skills" HeaderText="key_skills" 
                SortExpression="key_skills" />
        </Columns>
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:job_portalConnectionString %>" 
        DeleteCommand="delete from user_reg where id=@id;
delete from user_register where id=@id" 
        SelectCommand="SELECT * FROM [user_reg]"></asp:SqlDataSource>
        <center><asp:LinkButton ID="logout" runat ="server" Text="LogOut" PostBackUrl ="~/Admin_Login.aspx"></asp:LinkButton></center>
</asp:Content>