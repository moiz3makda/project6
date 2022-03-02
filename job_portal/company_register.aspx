<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/loggedin.master" CodeFile="company_register.aspx.cs" Inherits="company_register" %>

<asp:Content ContentPlaceHolderID="slider" runat ="server">
    <table align="center" border="10" width ="1000">
<tr><td> 
    <asp:Label ID="Label1" runat="server" Text="Company Name:"></asp:Label></td>
    <td>
        <asp:TextBox ID="cname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="cname" ErrorMessage=" plz enter your company name:" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
        <tr><td style="width: 857px">
            <asp:Label ID="Label2" runat="server" Text="Type of Company:"></asp:Label> </td>
            <td>
                <asp:TextBox ID="ctype" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ctype" ErrorMessage="plz enter your company type:" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
                <tr><td style="width: 857px">
                    <asp:Label ID="Label3" runat="server" Text="State:"></asp:Label> </td>
                    <td><asp:TextBox ID ="cstat" runat ="server" ></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="cstat" ErrorMessage="plz enter your state" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
                        <tr><td style="width: 857px"> 
                            <asp:Label ID="Label4" runat="server" Text="City:"></asp:Label></td>
                            <td> <asp:TextBox ID ="cct" runat ="server" ></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="cct" ErrorMessage=" plz enter your city name" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td></tr>
                            <tr><td style="width: 857px"> 
                                <asp:Label ID="Label5" runat="server" Text="Office Address:"></asp:Label></td>
                                <td> 
                                    <asp:TextBox ID="cadd" runat="server"  TextMode ="MultiLine" Height="40px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="cadd" ErrorMessage="plz enter your address:" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td></tr>
                                    <tr><td style="width: 857px"> 
                                        <asp:Label ID="Label6" runat="server" Text="Mobile No:"></asp:Label></td>
                                        <td> 
                                            <asp:TextBox ID="cmob" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="cmob" ErrorMessage="plz enter proper mobile no" 
                                                ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="cmob" ErrorMessage=" enter mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td></tr>
                                            <tr><td style="width: 857px">
                                                <asp:Label ID="Label7" runat="server" Text="Email Id:"></asp:Label> </td>
                                                <td>
                                                    <asp:TextBox ID="cmail" runat="server"></asp:TextBox> 
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="cmail" ErrorMessage=" enter proper email id" ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="cmail" ErrorMessage=" enter your email id" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td></tr>
                                                    <tr><td style="height: 231px">
                                                        <asp:Label ID="Label8" runat="server" Text="Comapny Description:"></asp:Label> </td>
                                                        <td style="height: 231px">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="cdisc" ErrorMessage=" enter your company's description" 
                                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="cdisc" runat="server" Height="300"  TextMode="MultiLine" Width ="500"></asp:TextBox></td></tr>
                                                        <tr><td align="center" colspan="2">
                                                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                                                                 /> </td></tr>
</table>
</asp:Content>