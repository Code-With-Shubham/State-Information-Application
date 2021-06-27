<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
            margin-top: 15px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/stateinfo.jpg" Height="278px"></asp:Image>
                <em><h1 style="background-color:lightblue" class="auto-style1"><u>States Information Application....</u></h1></em>
                <hr class="auto-style2" />
               <table>
                    <tr>
                        <td>UserID</td>
                         <td><asp:TextBox ID="TextBox1" runat="server" AutoComplete="off"></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td>Password</td>
                         <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                      <tr>
                        <td></td>
                         <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="submit"></asp:Button></td>
                    </tr>
                </table>
                <br />
                <a href="ForgetPass.aspx">Forget Password...</a>
                <br />
                <br />
                <a href="NewReg.aspx">Create New Account ?</a>
                <br />
                <hr />
                <br />
                &copy;adarsh9920@gmail.com
                <br /><br />
                Developed in ASP.Net
            </center>
        </div>
    </form>
</body>
</html>
