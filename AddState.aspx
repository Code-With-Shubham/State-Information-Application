<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddState.aspx.cs" Inherits="AddState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div>
            <center>
                <br />
                <br />
                <h2><u>Add States</u></h2>
                <br />
                <hr />
                <table>
                    
                    <tr>
                        <td>State Name</td>
                        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Capital</td>
                        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Primary Language</td>
                        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Area</td>
                        <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Region</td>
                        <td><asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Northern</asp:ListItem>
                             <asp:ListItem>Western</asp:ListItem>
                             <asp:ListItem>Southern</asp:ListItem>
                             <asp:ListItem>Eastern</asp:ListItem>
                             <asp:ListItem>Central</asp:ListItem>
                            <asp:ListItem>North Eastern</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"></asp:Button></td>
                    </tr>
                   
                </table>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Green" Font-Size="X-Large"></asp:Label>
                <br />
                <hr />
                <br />
                <a href="Administrator.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
