﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ElectronicsPOS.Reports" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Selected="True" Text="Sales Report" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="Inventory Report" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Restock Report" Value="2"></asp:MenuItem>
                <asp:MenuItem Text="Customer Purchase History" Value="3"></asp:MenuItem>
                <asp:MenuItem Text="Customer Information" Value="4"></asp:MenuItem>
                <asp:MenuItem Text="Employee Information" Value="5"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="TotalSalesReport" runat="server">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Sales Report"></asp:Label>
                <br />
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Additional Search Tools: "></asp:Label>
                    <br />
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Direction="LeftToRight" Height="30px">
                    <asp:Label ID="startDateLabel" runat="server" Text="Start Date: "></asp:Label>
                    &nbsp;<input id="startDateText" type="text" />
                    <asp:Label ID="endDateLabel" runat="server" Text="End Date: "></asp:Label>
                    &nbsp;<input id="endDateText" type="text" />
                </asp:Panel>
                &nbsp;<asp:Panel ID="Panel3" runat="server">
                    <asp:Label ID="Label4" runat="server" Text="Month: "></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="Year: "></asp:Label>
                    &nbsp;</asp:Panel>
                <asp:Panel ID="Panel1" runat="server">
                    <div>
                    </div>
                    <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="X-Large" ForeColor="Black" Height="70px" Text="Generate Report" Width="210px" OnClick="Button1_Click" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                    <hr />
                </asp:Panel>
            </asp:View>
            <asp:View ID="InventoryReport" runat="server">
                <asp:Panel ID="Panel5" runat="server">
                </asp:Panel>
            </asp:View>
            <asp:View ID="RestockRecords" runat="server">
            </asp:View>
            <asp:View ID="CustomerPurchaseHistory" runat="server">
            </asp:View>
            <asp:View ID="CustomerInfo" runat="server">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Customer Information"></asp:Label>
                <br />
                <asp:Panel ID="Panel6" runat="server">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Additional Search Tools: "></asp:Label>
                    <br />
                </asp:Panel>
                <asp:Panel ID="Panel7" runat="server" Direction="LeftToRight" Height="30px">
                    <asp:Label ID="customerIDLabel" runat="server" Text="Customer ID: "></asp:Label>
                    &nbsp;<input id="customerIDText" type="text" />
                    </asp:Panel>
                &nbsp;<asp:Panel ID="Panel9" runat="server">
                    <div>
                    </div>
                    <asp:Button ID="Button2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="X-Large" ForeColor="Black" Height="70px" Text="Generate Report" Width="210px" OnClick="Button2_Click" />
                    <hr />
                </asp:Panel>
            </asp:View>
            <asp:View ID="EmployeeInfo" runat="server">
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
