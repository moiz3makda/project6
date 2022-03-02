<%@ Page Language="C#" MasterPageFile ="~/loggedin.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID ="content" ContentPlaceHolderID="slider" runat ="server">
<table border ="15" align="center" style ="height:500px;width:1000px;" >
<tr><td colspan ="2" align ="center" ><h1>Admin Login</h1></td></tr>
<tr><td><asp:Label ID ="lbl1" runat ="server" Text ="<h3>Enter User-Name:</h3>" /></td> 
<td><asp:TextBox ID="unm" runat ="server" Width ="250px" /></td></tr><br />
<tr><td><asp:Label ID ="lbl2" runat ="server" Text ="<h3>Enter password:</h3>" /></td>
<td><asp:TextBox ID ="pwd" runat ="server" TextMode ="Password"  Width ="250px"/></td></tr><br />
<tr><td colspan ="2" align ="center" >
    <asp:Button ID ="login" runat ="server" 
        Text ="Login"  Font-Size="X-Large" 
        onclick="login_Click" /></td></tr><br />
<tr><td colspan ="2" align ="center" ></td></tr>

</table><br /><br />
</asp:Content>