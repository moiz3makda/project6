<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile ="~/loggedin.master" CodeFile="user_register.aspx.cs" Inherits="user_register" %>


<asp:Content ID ="Content1" ContentPlaceHolderID ="slider" runat ="server" >
    <table align="center" border="10" width="1000">
<tr><td> 
    <asp:Label ID="Label1" runat="server" Text="Enter Your Name:" Font-Size="Medium"></asp:Label></td>
    <td> 
        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="namevalid" runat="server" 
            ControlToValidate="uname" ErrorMessage="plz enter your name:" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
        <tr><td>
            <asp:Label ID="Label2" runat="server" Text="Address:" Font-Size="Medium"></asp:Label> </td>
            <td> 
                <asp:TextBox ID="uadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uadd" ErrorMessage="plz enter your address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
                <tr><td> 
                    <asp:Label ID="Label3" runat="server" Text="State:" Font-Size="Medium"></asp:Label></td>
                    <td> 
                        <asp:TextBox ID ="ustat" runat ="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ustat" ErrorMessage="plz enter your state name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
                    <tr><td> 
                        <asp:Label ID="Label4" runat="server" Text="City:"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="uct" runat ="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="uct" ErrorMessage="plz enter your city name" ForeColor="Red"></asp:RequiredFieldValidator>
                            <tr><td>
                                <asp:Label ID="Label5" runat="server" Text="Mobile No:"></asp:Label> </td>
                                <td> 
                                    <asp:TextBox ID="umob" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="umob" ErrorMessage="enter proper mobile no:" ForeColor="Red" 
                                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="umob" ErrorMessage=" enter your mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td></tr>
                                    <tr><td>
                                        <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label> </td>
                                        <td> 
                                            <asp:RadioButton ID="rbMal" runat="server" GroupName ="gen" Text="Male" />
                                            
                                                <asp:RadioButton ID="rbFm" runat="server" GroupName ="gen" Text="Female" /> </td></tr>
                                                <tr><td><asp:Label ID="lbl" runat ="server" Text="enter your email id:"></asp:Label></td>
                                                <td><asp:TextBox ID="umail" runat ="server" ></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="umail" ErrorMessage="enter proper email id:" ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="umail" ErrorMessage=" enter your email id" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </td></tr>
                                                <tr><td> 
                                                    <asp:Label ID="Label7" runat="server" Text="Date of Birth:"></asp:Label></td>
                                                    <td>
                                                        <asp:TextBox ID="udt" runat="server"></asp:TextBox> 
                                                    </td></tr>
                                                       <tr><td> 
                                                            <asp:Label ID="Label8" runat="server" Text="upload Resume:"></asp:Label></td>
                                                            <td> 
                                                                <asp:FileUpload ID="ures" runat="server" />
                                                               
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                    ControlToValidate="ures" ErrorMessage="upload your resume:" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                                            </td></tr>
                                                                <tr><td> 
                                                                    <asp:Label ID="Label9" runat="server" Text="Education Status:"></asp:Label></td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ued" runat="server">
                                                                            <asp:ListItem> None</asp:ListItem>
                                                                            <asp:ListItem> BCA</asp:ListItem>
                                                                            <asp:ListItem> Bcom</asp:ListItem>
                                                                            <asp:ListItem> BBA</asp:ListItem>
                                                                            <asp:ListItem> BSW</asp:ListItem>
                                                                            <asp:ListItem>BA</asp:ListItem>
                                                                            <asp:ListItem>PGDCA</asp:ListItem>
                                                                            <asp:ListItem>BSC_IT</asp:ListItem>
                                                                            <asp:ListItem> MCA</asp:ListItem>
                                                                            <asp:ListItem>MCOM</asp:ListItem>
                                                                            <asp:ListItem>MBA</asp:ListItem>
                                                                            <asp:ListItem>MA</asp:ListItem>
                                                                            <asp:ListItem> MSW</asp:ListItem>
                                                                            <asp:ListItem> Bed</asp:ListItem>
                                                                        </asp:DropDownList> </td></tr>
                                                                        <tr><td> 
                                                                            <asp:Label ID="Label10" runat="server" Text="Key Skills"></asp:Label></td>
                                                                            <td> 
                                                                                <asp:TextBox ID ="uskill" runat ="server" ></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                                    ControlToValidate="uskill" ErrorMessage=" plz enter your keyskills" 
                                                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                                            </td></tr>
                                                                            <tr><td align="center" colspan="2">
                                                                                <asp:Button ID="Button1" runat="server" Text="submit" 
                                                                                     Height="52px" 
                                                                                    onclick="Button1_Click" Width="117px" 
                                                                                     /> </td></tr>

</table>
<br /><br />
</asp:Content>
