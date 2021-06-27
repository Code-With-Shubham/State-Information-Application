<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepsw.aspx.cs" Inherits="changepsw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div><center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/chgpwd.png.png" Height="220px" Width="631px"/>
            <br />
            <h1 style="background-color:mediumaquamarine">Change Password Form</h1>
            <br />
            <hr />
            
            <table>
                
                <tr>
                    <td>Password</td>
                    <td> <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>New Password</td>
                    <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="change" /></td>
                </tr>
            </table>
                <asp:Label ID="Label1" runat="server" ></asp:Label><br />
                <a href="User.aspx">Home</a>
                </center>
        </div>
    </form>
</body>
</html>
