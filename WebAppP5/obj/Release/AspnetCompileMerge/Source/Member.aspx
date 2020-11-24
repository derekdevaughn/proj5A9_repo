<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="WebAppP5.Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Member Page"></asp:Label>
            <br />
        </div>
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Registration" />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
    </form>
</body>
</html>
