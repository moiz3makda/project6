<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.master" AutoEventWireup="true" CodeFile="subrem.aspx.cs" Inherits="subrem" %>

<asp:Content ID="Content4" ContentPlaceHolderID="slider" Runat="Server">
    <center><asp:FileUpload ID="FileUpload1" runat="server" Height="30px"  />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Resume" ControlToValidate="FileUpload1" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Select Only PDF File"></asp:Label><br /><br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="submit" Height="40px" Width="70px" OnClick="Button1_Click"/>
    </center>
</asp:Content>

