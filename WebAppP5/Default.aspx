<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppP5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="College Utility Tool (CUT): Weather, Crime, File Storage"></asp:Label>
        </p>
        <p style="margin-left: 40px">
            <asp:Label ID="lblOutput" runat="server" Text="--"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label5" runat="server" Text="Numbers of visitors: "></asp:Label>
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAccidental" runat="server" OnClick="btnAccidental_Click" Text="Accidents Killings" />
            &nbsp; As of date : Current Year Accidents : Previous Year Accidents -
            <asp:Label ID="lblAccidental" runat="server" Text="Accidents Stats"></asp:Label>
            </p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnFelonious" runat="server" OnClick="btnFelonious_Click" Text="Felonious Killings" />
            &nbsp; As of date : Current Year Felonious : Previous Year Felonious -
            <asp:Label ID="lblFelonious" runat="server" Text="Felonious Stats"></asp:Label>
            </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Larissa Storage SVC Here ---&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <div style="margin-left: 40px">
             <h3> FILE STORAGE SERVICE :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h3>
            <asp:Label ID="Label2" runat="server" Text="The following service can load a local file and store it file into the server and return the URL of the saved location."></asp:Label>
            <br />
            <br />
      
            <asp:Label ID="Label3" runat="server" Text="Select the file name with local path or a URL"></asp:Label>
            <br />
         <br />
         <asp:FileUpload ID="FileUpload1" runat="server" />
             <br />
         <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Store file" />
        <br />
        <br />
         <asp:Label ID="lblmessage" runat="server" />

             <br />

            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>

 
        </div>
    </form>
</body>
</html>
