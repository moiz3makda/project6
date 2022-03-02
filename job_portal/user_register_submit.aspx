<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/loggedin.master" CodeFile="user_register_submit.aspx.cs" Inherits="user_register_submit" %>

<asp:Content ContentPlaceHolderID ="slider" runat ="server" >
    <table align="center" border ="10px" width ="1000px" height="500px">
<tr><td><asp:Label ID ="unm" Text ="choose your user name:" runat ="server" 
        Font-Size="Larger"  ></asp:Label></td>
<td><asp:TextBox ID ="txtunm" runat ="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtunm" ErrorMessage=" plz enter your user name" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td><asp:Label ID="pwd" Text="choose your password:" runat ="server"  
        Font-Size="Larger"></asp:Label></td>
<td><asp:TextBox ID="txtpwd" TextMode ="Password" runat ="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtpwd" ErrorMessage="plz enter password" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td><asp:Label ID ="lbl" runat ="server" Text ="confirm your password" 
        Font-Size="Larger"></asp:Label></td>
<td><asp:TextBox ID ="txtpwd1" runat ="server" TextMode ="Password" ></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtpwd" ControlToValidate="txtpwd1" 
        ErrorMessage=" password not match" ForeColor="Red"></asp:CompareValidator>
    </td></tr></body>
<tr><td colspan="2" align ="center">
    <asp:Button ID="btnsubmit" Text="submit" 
        runat ="server" Height="51px" onclick="btnsubmit_Click" 
        style="margin-left: 0px" Width="107px" /></td></tr>
</table><br /><br />
</asp:Content>