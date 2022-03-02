<%@ Page Language="C#" MasterPageFile ="~/loggedin.master" AutoEventWireup="true" CodeFile="User_List.aspx.cs" Inherits="User_List" %>

<asp:Content ID="content" ContentPlaceHolderID ="slider" runat ="server">
    <center><asp:TextBox ID="search1" runat ="server"></asp:TextBox>
<asp:Button ID="search" runat ="server" Text="Search skill" onclick="search_Click" /></center>
<asp:GridView ID="gd1" runat ="server" Font-Size="Larger" Height="50px" BorderColor ="black" BorderWidth ="20px" 
        Width ="1000px" align="center"  
        AutoGenerateColumns="true" DataKeyNames="id" 
        onselectedindexchanged="gd1_SelectedIndexChanged">
       
    <Columns><asp:CommandField ShowSelectButton="true" SelectText="download resume" ControlStyle-ForeColor="Blue" /></Columns>
    </asp:GridView>
    
    <center ><asp:LinkButton ID="login" runat ="server" Text ="LogOut" PostBackUrl ="~/Company_Login.aspx"></asp:LinkButton> </center>
</asp:Content>
