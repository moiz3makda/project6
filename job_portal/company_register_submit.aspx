<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile ="~/loggedin.master" CodeFile="company_register_submit.aspx.cs" Inherits="company_register_submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="slider" runat ="server" >
<table align="center" border ="10px" width ="1000px" height="500px">
<tr><td><asp:Label ID ="unm" Text ="choose your user name:" runat ="server" Font-Size ="X-Large"   ></asp:Label></td>
<td><asp:TextBox ID ="txtunm" runat ="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtunm" ErrorMessage="enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td><asp:Label ID="pwd" Text="choose your password:" runat ="server"  Font-Size="X-Large"></asp:Label></td>
<td><asp:TextBox ID="txtpwd" TextMode ="Password" runat ="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtpwd" ErrorMessage="enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td><asp:Label ID="lbl1" runat ="server" Text ="confirm your password:" Font-Size="X-Large"></asp:Label></td>
<td><asp:TextBox ID="cpwd" runat ="server" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="cpwd" ErrorMessage="plz confirm your password" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtpwd" ControlToValidate="cpwd" 
        ErrorMessage="password not match" ForeColor="Red"></asp:CompareValidator>
    </td></tr>
<tr><td colspan="2" align ="center"><asp:Button ID="btnsubmit" Text="submit" 
        runat ="server" onclick="btnsubmit_Click" /></td></tr>
</table>
</asp:Content>