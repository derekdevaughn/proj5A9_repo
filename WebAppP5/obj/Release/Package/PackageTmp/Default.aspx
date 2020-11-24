<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppP5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Team Web Application"></asp:Label>
        </p>
        <p style="margin-left: 40px">
            <asp:Label ID="lblOutput" runat="server" Text="--"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Staff Page" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Member Page" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnRegister" runat="server" Text="Member Registration" Width="162px" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnStaffLogin" runat="server" Text="Login Page" Width="116px" OnClick="btnStaffLogin_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Logout" Width="92px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            &nbsp;Enter zip code: &nbsp;<asp:TextBox ID="txtZipWeather" runat="server" Width="86px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnWeather" runat="server" OnClick="btnWeather_Click" Text="Get Weather" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City:&nbsp;
            <asp:Label ID="lblCity" runat="server" Text="--"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Currrently:&nbsp;
            <asp:Label ID="lblFahr" runat="server" Text="F"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCel" runat="server" Text="C"></asp:Label>
            <br />
            <br />
            <p>
            Check FBI crime data for accidental killings and felonious killings:<br />
            <asp:Button ID="btnAccidental" runat="server" OnClick="btnAccidental_Click" Text="Accidents Killings" />
            &nbsp; As of date : Current Year Accidents : Previous Year Accidents -
            <asp:Label ID="lblAccidental" runat="server" Text="Accidents Stats"></asp:Label>
            </p>
            <p>
            <asp:Button ID="btnFelonious" runat="server" OnClick="btnFelonious_Click" Text="Felonious Killings" />
            &nbsp; As of date : Current Year Felonious : Previous Year Felonious -
            <asp:Label ID="lblFelonious" runat="server" Text="Felonious Stats"></asp:Label>
            </p>
            TODO: Coming soon, individual zipcode crime killings.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <div style="margin-left: 40px">
        </div>
    </form>
</body>
</html>
