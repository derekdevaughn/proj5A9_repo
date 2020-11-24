<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRegister.aspx.cs" Inherits="WebAppP5.MemberRegister" %>
<%@ Register TagPrefix="captcha" TagName="UserControlCaptcha" Src="UserControlCaptcha.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Member Registration"></asp:Label>
        </div>
        <br />
        Enter a username:
        <asp:TextBox ID="txtRegisterUser" runat="server" Width="163px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRegisterOutput" runat="server" Text="Output Message"></asp:Label>
        <br />
        <br />
        Enter a password:
        <asp:TextBox ID="txtRegisterPassword" runat="server" Width="158px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            <!-- Captcha here --- -->
            <asp:Panel ID="Panel1" runat="server">
                <captcha:UserControlCaptcha id="UserControlCaptcha1" Visible="false" runat="server"></captcha:UserControlCaptcha>
            </asp:Panel>
            <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnCaptcha" runat="server" OnClick="btnCaptcha_Click" Text="Submit Captcha" /><br />
            <asp:Label ID="lblCaptcha" runat="server"></asp:Label><br /><br />
        </p>
        <p>
            <asp:Button ID="btnRegister" runat="server" Text="Submit New Member Info" OnClick="btnRegister_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
        </p>
    </form>
</body>
</html>
