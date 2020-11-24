<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unauthorized.aspx.cs" Inherits="WebAppP5.Unauthorized" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You are unauthorized to view this page.<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Member Registration" />
        </div>
    </form>
</body>
</html>
