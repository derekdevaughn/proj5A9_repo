<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="WebAppP5.Staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome to the Staff Page"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Font-Underline="True" Text="Add a new Staff Member:"></asp:Label>
        <br />
        <br />
        username:
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            password:
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblOutput" runat="server" Text="Output Message"></asp:Label>
        </p>
        <asp:Button ID="btnNewStaff" runat="server" Text="Submit New Staff Info" OnClick="btnNewStaff_Click" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
    </form>
</body>
</html>
