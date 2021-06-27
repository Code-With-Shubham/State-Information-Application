<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Central.aspx.cs" Inherits="Central" %>

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
                <h2><u>West Indian States</u></h2>
                <br />
                <hr />
                <br />
                <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="323px" Width="750px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
                        <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
                        <asp:BoundField DataField="StateLanguage" HeaderText="StateLanguage" SortExpression="StateLanguage" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Central states %>" SelectCommand="SELECT [StateName], [Capital], [StateLanguage], [Area], [Region] FROM [states] WHERE ([Region] = @Region)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Central" Name="Region" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <a href="ShowStates.aspx">Back</a>
                </center>
        </div>
    </form>
</body>
</html>
