<%@ Page Language="C#" MasterPageFile ="~/loggedin.master" AutoEventWireup="true" CodeFile="admin_link.aspx.cs" Inherits="admin_link" %>
<asp:Content ID="content" ContentPlaceHolderID ="slider" runat ="server" >
<center>
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/admin_user.aspx"><h3>User</h3></asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" 
        PostBackUrl="~/admin_company.aspx"><h3>Company</h3></asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" 
        PostBackUrl="~/admin_feedback.aspx"><h3>FeedBack</h3></asp:LinkButton>
    </center>
    <center><asp:LinkButton ID="logout" runat ="server" Text="LogOut" PostBackUrl ="~/Admin_Login.aspx"></asp:LinkButton></center>
</asp:Content>
