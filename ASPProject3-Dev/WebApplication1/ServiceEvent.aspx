<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceEvent.aspx.cs" Inherits="WebApplication1.ServiceEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Event Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblPageTitle" runat="server" style="z-index: 1; left: 10px; top: 34px; position: absolute; left: 129px; text-align: center" Text="Service Event" Width="183px" Font-Size="Larger" ></asp:Label>
        <asp:Label ID="lblDate" runat="server" style="z-index: 1; left: 34px; top: 94px; position: absolute; text-align: right" Text="Event Date:" Width="85px"></asp:Label>
        <asp:Button ID="btnReturn" runat="server" style="z-index: 1; left: 129px; top: 364px; position: absolute" Text="Return to Main Menu" Width="183px" OnClick="btnReturn_Click" />
        <asp:Label ID="lblClient" runat="server" style="z-index: 1; left: 44px; top: 137px; position: absolute; text-align: right" Text="*Client:" Width="70px"></asp:Label>
        <asp:Label ID="lblContact" runat="server" style="z-index: 1; left: 44px; top: 180px; position: absolute; text-align: right" Text="*Contact:" Width="70px"></asp:Label>
        <asp:Label ID="lblPhone" runat="server" style="z-index: 1; left: 44px; top: 223px; position: absolute; text-align: right" Text="*Phone:" Width="70px"></asp:Label>
        <asp:DropDownList ID="drpClient" runat="server" style="z-index: 1; left: 120px; top: 137px; position: absolute" Width="200px">
        </asp:DropDownList>
        <asp:TextBox ID="txtContact" runat="server" style="z-index: 1; left: 120px; top: 180px; position: absolute" Width="200px" MaxLength="30"></asp:TextBox>
        <asp:TextBox ID="txtPhone" runat="server" style="z-index: 1; left: 120px; top: 223px; position: absolute" Width="200px"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" style="z-index: 1; left: 129px; top: 287px; position: absolute" Text="Submit" Width="61px" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" style="z-index: 1; top: 287px; position: absolute; left: 266px" Text="Clear" Width="61px" OnClick="btnClear_Click" />
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 199px; top: 426px; position: absolute" Text="Error"></asp:Label>
    </form>
</body>
</html>
