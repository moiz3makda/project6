<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile ="~/MasterPage.master" CodeFile="user_register.aspx.cs" Inherits="user_register" %>


<ASP:CONTENT ID ="Content1" ContentPlaceHolderID ="slider" runat ="server" >
    <table align="center" border="10" width="1000">
<tr><td> 
    <ASP:LABEL ID="Label1" runat="server" Text="Enter Your Name:" Font-Size="Medium"></ASP:LABEL></td>
    <td> 
        <ASP:TEXTBOX ID="uname" runat="server"></ASP:TEXTBOX>
        <ASP:REQUIREDFIELDVALIDATOR ID="namevalid" runat="server" 
            ControlToValidate="uname" ErrorMessage="plz enter your name:" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
    </td></tr>
        <tr><td>
            <ASP:LABEL ID="Label2" runat="server" Text="Address:" Font-Size="Medium"></ASP:LABEL> </td>
            <td> 
                <ASP:TEXTBOX ID="uadd" runat="server" TextMode="MultiLine"></ASP:TEXTBOX>
                <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uadd" ErrorMessage="plz enter your address" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
            </td></tr>
                <tr><td> 
                    <ASP:LABEL ID="Label3" runat="server" Text="State:" Font-Size="Medium"></ASP:LABEL></td>
                    <td> 
                        <ASP:TEXTBOX ID ="ustat" runat ="server" ></ASP:TEXTBOX>
                        <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ustat" ErrorMessage="plz enter your state name" 
                            ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                    </td></tr>
                    <tr><td> 
                        <ASP:LABEL ID="Label4" runat="server" Text="City:"></ASP:LABEL></td>
                        <td>
                            <ASP:TEXTBOX ID="uct" runat ="server" ></ASP:TEXTBOX>
                            <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="uct" ErrorMessage="plz enter your city name" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                            <tr><td>
                                <ASP:LABEL ID="Label5" runat="server" Text="Mobile No:"></ASP:LABEL> </td>
                                <td> 
                                    <ASP:TEXTBOX ID="umob" runat="server"></ASP:TEXTBOX>
                                    <ASP:REGULAREXPRESSIONVALIDATOR ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="umob" ErrorMessage="enter proper mobile no:" ForeColor="Red" 
                                        ValidationExpression="\d{10}" DISPLAY="Dynamic"></ASP:REGULAREXPRESSIONVALIDATOR>
                                    <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="umob" ErrorMessage=" enter your mobile no" ForeColor="Red" DISPLAY="Dynamic"></ASP:REQUIREDFIELDVALIDATOR>
                                </td></tr>
                                    <tr><td>
                                        <ASP:LABEL ID="Label6" runat="server" Text="Gender:"></ASP:LABEL> </td>
                                        <td> 
                                            <ASP:RADIOBUTTON ID="rbMal" runat="server" GroupName ="gen" Text="Male" />
                                            
                                                <ASP:RADIOBUTTON ID="rbFm" runat="server" GroupName ="gen" Text="Female" /> </td></tr>
                                                <tr><td><ASP:LABEL ID="lbl" runat ="server" Text="enter your email id:"></ASP:LABEL></td>
                                                <td><ASP:TEXTBOX ID="umail" runat ="server" ></ASP:TEXTBOX>
                                                    <ASP:REGULAREXPRESSIONVALIDATOR ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="umail" ErrorMessage="enter proper email id:" ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" DISPLAY="Dynamic"></ASP:REGULAREXPRESSIONVALIDATOR>
                                                    <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="umail" ErrorMessage=" enter your email id" ForeColor="Red" DISPLAY="Dynamic"></ASP:REQUIREDFIELDVALIDATOR>
                                                    </td></tr>
                                                <tr><td> 
                                                    <ASP:LABEL ID="Label7" runat="server" Text="Date of Birth:"></ASP:LABEL></td>
                                                    <td>
                                                        <asp:TextBox ID="udt" runat="server"></asp:TextBox>
                                                    </td></tr>
                                                        <tr><td> 
                                                            <ASP:LABEL ID="Label8" runat="server" Text="upload Resume:"></ASP:LABEL></td>
                                                            <td> 
                                                                <ASP:FILEUPLOAD ID="ures" runat="server" />
                                                               
                                                                <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator2" runat="server" 
                                                                    ControlToValidate="ures" ErrorMessage="upload your resume:" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                                                            </td></tr>
                                                                <tr><td> 
                                                                    <ASP:LABEL ID="Label9" runat="server" Text="Education Status:"></ASP:LABEL></td>
                                                                    <td>
                                                                        <ASP:DROPDOWNLIST ID="ued" runat="server">
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
                                                                        </ASP:DROPDOWNLIST> </td></tr>
                                                                        <tr><td> 
                                                                            <ASP:LABEL ID="Label10" runat="server" Text="Key Skills"></ASP:LABEL></td>
                                                                            <td> 
                                                                                <ASP:TEXTBOX ID ="uskill" runat ="server" ></ASP:TEXTBOX>
                                                                                <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator7" runat="server" 
                                                                                    ControlToValidate="uskill" ErrorMessage=" plz enter your keyskills" 
                                                                                    ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                                                                            </td></tr>
                                                                            <tr><td align="center" colspan="2">
                                                                                <ASP:BUTTON ID="Button1" runat="server" Text="Submit" 
                                                                                     Height="52px" 
                                                                                    onclick="Button1_Click" Width="117px" 
                                                                                     /> </td></tr>

</table>
<br /><br />
</ASP:CONTENT>
