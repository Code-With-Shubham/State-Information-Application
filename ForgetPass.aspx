<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" Inherits="ForgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 54px;
        }
    </style>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/forget pswd.png" CssClass="auto-style1" Height="204px" Width="828px"/>
            <hr /><br />
             </center>
            <center>
            <h2 style="color:green"><u>Forget Password Form..</u></h2>
            <br />
            <table>
                <tr>
                    <td>UserId</td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Security Questions</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>What is Favourite color??</asp:ListItem>
                    <asp:ListItem>What is Favourite sweet??</asp:ListItem>
                    <asp:ListItem>What is Favourite teacher during gradution??</asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="forget" /></td>
                </tr>
            </table>
            <a href="Home.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
