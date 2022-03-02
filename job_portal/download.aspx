<%@ Page Language="C#" MasterPageFile ="~/loggedin.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="download" %>
<asp:Content ID="content" ContentPlaceHolderID="slider" runat ="server">
<center><h3>Click <asp:LinkButton ID ="dld" runat ="server" Text="here" 
        onclick="dld_Click"></asp:LinkButton>for download resume</h3>
        <asp:LinkButton ID="logout" Text ="LogOut" runat ="server" 
        onclick="logout_Click" ></asp:LinkButton></center>
</asp:Content>
