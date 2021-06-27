<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditStateInfo.aspx.cs" Inherits="EditStateInfo" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="StateID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowSorting="True" Height="177px" Width="503px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="StateID" HeaderText="StateID" InsertVisible="False" ReadOnly="True" SortExpression="StateID" />
                        <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
                        <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
                        <asp:BoundField DataField="StateLanguage" HeaderText="StateLanguage" SortExpression="StateLanguage" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EditStateInformation %>" DeleteCommand="DELETE FROM [states] WHERE [StateID] = @StateID" InsertCommand="INSERT INTO [states] ([StateName], [Capital], [StateLanguage], [Area], [Region]) VALUES (@StateName, @Capital, @StateLanguage, @Area, @Region)" SelectCommand="SELECT [StateID], [StateName], [Capital], [StateLanguage], [Area], [Region] FROM [states]" UpdateCommand="UPDATE [states] SET [StateName] = @StateName, [Capital] = @Capital, [StateLanguage] = @StateLanguage, [Area] = @Area, [Region] = @Region WHERE [StateID] = @StateID">
                    <DeleteParameters>
                        <asp:Parameter Name="StateID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StateName" Type="String" />
                        <asp:Parameter Name="Capital" Type="String" />
                        <asp:Parameter Name="StateLanguage" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Region" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StateName" Type="String" />
                        <asp:Parameter Name="Capital" Type="String" />
                        <asp:Parameter Name="StateLanguage" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter Name="Region" Type="String" />
                        <asp:Parameter Name="StateID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <a href="Administrator.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
