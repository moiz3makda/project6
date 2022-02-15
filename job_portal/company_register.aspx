<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="company_register.aspx.cs" Inherits="company_register" %>

<ASP:CONTENT ContentPlaceHolderID="slider" runat ="server">
    <table align="center" border="10" width ="1000">
<tr><td> 
    <ASP:LABEL ID="Label1" runat="server" Text="Company Name:"></ASP:LABEL></td>
    <td>
        <ASP:TEXTBOX ID="cname" runat="server"></ASP:TEXTBOX>
        <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="cname" ErrorMessage=" plz enter your company name:" 
            ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
    </td></tr>
        <tr><td style="width: 857px">
            <ASP:LABEL ID="Label2" runat="server" Text="Type of Company:"></ASP:LABEL> </td>
            <td>
                <ASP:TEXTBOX ID="ctype" runat="server"></ASP:TEXTBOX> 
                <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ctype" ErrorMessage="plz enter your company type:" 
                    ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
            </td></tr>
                <tr><td style="width: 857px">
                    <ASP:LABEL ID="Label3" runat="server" Text="State:"></ASP:LABEL> </td>
                    <td><ASP:TEXTBOX ID ="cstat" runat ="server" ></ASP:TEXTBOX>
                        &nbsp;<ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="cstat" ErrorMessage="plz enter your state" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                    </td></tr>
                        <tr><td style="width: 857px"> 
                            <ASP:LABEL ID="Label4" runat="server" Text="City:"></ASP:LABEL></td>
                            <td> <ASP:TEXTBOX ID ="cct" runat ="server" ></ASP:TEXTBOX>
                                &nbsp;<ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="cct" ErrorMessage=" plz enter your city name" 
                                    ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                            </td></tr>
                            <tr><td style="width: 857px"> 
                                <ASP:LABEL ID="Label5" runat="server" Text="Office Address:"></ASP:LABEL></td>
                                <td> 
                                    <ASP:TEXTBOX ID="cadd" runat="server"  TextMode ="MultiLine" Height="40px"></ASP:TEXTBOX>
                                    <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="cadd" ErrorMessage="plz enter your address:" ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                                </td></tr>
                                    <tr><td style="width: 857px"> 
                                        <ASP:LABEL ID="Label6" runat="server" Text="Mobile No:"></ASP:LABEL></td>
                                        <td> 
                                            <ASP:TEXTBOX ID="cmob" runat="server"></ASP:TEXTBOX>
                                            <ASP:REGULAREXPRESSIONVALIDATOR ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="cmob" ErrorMessage="plz enter proper mobile no" 
                                                ForeColor="Red" ValidationExpression="\d{10}" DISPLAY="Dynamic"></ASP:REGULAREXPRESSIONVALIDATOR>
                                            <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="cmob" ErrorMessage=" enter mobile no" ForeColor="Red" DISPLAY="Dynamic"></ASP:REQUIREDFIELDVALIDATOR>
                                        </td></tr>
                                            <tr><td style="width: 857px">
                                                <ASP:LABEL ID="Label7" runat="server" Text="Email Id:"></ASP:LABEL> </td>
                                                <td>
                                                    <ASP:TEXTBOX ID="cmail" runat="server"></ASP:TEXTBOX> 
                                                    <ASP:REGULAREXPRESSIONVALIDATOR ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="cmail" ErrorMessage=" enter proper email id" ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" DISPLAY="Dynamic"></ASP:REGULAREXPRESSIONVALIDATOR>
                                                    <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="cmail" ErrorMessage=" enter your email id" ForeColor="Red" DISPLAY="Dynamic"></ASP:REQUIREDFIELDVALIDATOR>
                                                </td></tr>
                                                    <tr><td style="height: 231px">
                                                        <ASP:LABEL ID="Label8" runat="server" Text="Comapny Description:"></ASP:LABEL> </td>
                                                        <td style="height: 231px">
                                                            <ASP:REQUIREDFIELDVALIDATOR ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="cdisc" ErrorMessage=" enter your company's description" 
                                                                ForeColor="Red"></ASP:REQUIREDFIELDVALIDATOR>
                                                            <ASP:TEXTBOX ID="cdisc" runat="server" Height="300"  TextMode="MultiLine" Width ="500"></ASP:TEXTBOX></td></tr>
                                                        <tr><td align="center" colspan="2">
                                                            <ASP:BUTTON ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                                                                 /> </td></tr>
</table>
</ASP:CONTENT>