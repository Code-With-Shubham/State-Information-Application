<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewReg.aspx.cs" Inherits="NewReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 74px;
            margin-right: 7px;
        }
    </style>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/signUp.jpg" CssClass="auto-style1" Height="187px" Width="1002px" />
           <h1 style="background-color:lightseagreen"><u>New User Registration Form..</u></h1>
               <hr />
              <table>
                <tr>
                    <td>Userid</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" AutoComplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gn" Text="Male" Checked="true"></asp:RadioButton>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gn" Text="Female"></asp:RadioButton>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Security Questions</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>What is Favourite color??</asp:ListItem>
                            <asp:ListItem>What is Favourite sweet??</asp:ListItem>
                            <asp:ListItem>What is Favourite teacher during gradution??</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="SignUp" OnClick="Submit"/></td>
                </tr>
                <br />
                   
            </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br /><br />
            <hr />
            <a href="Home.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
