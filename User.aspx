<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div>
            <center>
            <h1 style="background-color:lightgreen">Welcome User...</h1>
            <hr />
             <h2 style="background-color:aliceblue">Logged in as :<asp:Label ID="Label1" runat="server" forecolor="#000066"></asp:Label></h2></center>
            <br />   
             <center>
            <a href="AboutYou.aspx">Details About You</a>
            <br /></br>
            <a href="setting.aspx">Setting</a>
                <br /><br />
            <a href="ShowStates.aspx">States Informations..</a>
                <br />
                <br />
                <hr />
            
                </center>
        </div>
    </form>
</body>
</html>
