<%@ Page Language="C#"  MasterPageFile ="~/MasterPage.master" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="about_us" %>


<asp:Content ID ="content" ContentPlaceHolderID ="slider" runat ="server">
<center>
This site is developed for job finding .<br />
in this site any user can find the job according to his/her keyskill .<br />
any company can find employees according to its company's demand .<br />
</center>
<h3>Explanation of Menu:</h3><br />
<asp:LinkButton ID ="menu" runat ="server" Text ="Home" onclick="menu_Click"></asp:LinkButton>: from this menu-item you can move to home page .<br />
<asp:LinkButton ID ="LinkButton1" runat ="server" Text ="User_Login" 
        onclick="LinkButton1_Click"></asp:LinkButton>: from this menu-item user can login with his/her user id and password if he/she haven't created account in this site he/she can create that account using register here link button.<br />
<asp:LinkButton ID ="LinkButton2" runat ="server" Text ="Company_Login" 
        onclick="LinkButton2_Click"></asp:LinkButton>: from this menu-item company can login and if he havent account it can create by register here link at this form.<br />
<asp:LinkButton ID ="LinkButton3" runat ="server" Text ="About us" 
        onclick="LinkButton3_Click"></asp:LinkButton>: from this menu-item you can move to this page which gives info about our site.<br />
<asp:LinkButton ID ="LinkButton4" runat ="server" Text ="Login" 
        onclick="LinkButton4_Click"></asp:LinkButton>: this menu-item is for administrator of this site.<br />

</asp:Content>