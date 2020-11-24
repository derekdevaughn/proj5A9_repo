<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppP5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Login Page"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        </div>
        <p>
            username:&nbsp;&nbsp; <asp:TextBox ID="txtUser" runat="server" Width="203px"></asp:TextBox>
        </p>
        <p>
            password:&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" Width="203px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblOutput" runat="server" Text="Message"></asp:Label>
        </p>
        <asp:Button ID="btnStaffLogin" runat="server" OnClick="btnStaffLogin_Click" Text="Staff Login" Width="132px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMemberLogin" runat="server" OnClick="btnMemberLogin_Click" Text="Member Login" Width="136px" />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Member Registration" />
    </form>
</body>
</html>
