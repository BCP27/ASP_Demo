<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainSelection.aspx.cs" Inherits="WebApplication1.MainSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Menu</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblFormName" runat="server" style="z-index: 1; position: absolute; text-align: center; top: 42px; left: 129px; margin-top: 6px; width: 171px; height: 16px;" Text="Main Menu" Font-Size="Larger"></asp:Label>
        <asp:Button ID="btnServiceEvent" runat="server" style="z-index: 1; left: 129px; top: 110px; position: absolute; width: 171px" Text="Service Event" OnClick="btnServiceEvent_Click" />
        <asp:Button ID="btnProblem" runat="server" style="z-index: 1; left: 129px; top: 173px; position: absolute" Text="Problem Resolution" Width="171px" OnClick="btnProblem_Click" />
        <asp:Button ID="btnReports" runat="server" style="z-index: 1; left: 129px; top: 236px; position: absolute" Text="Reports" Width="171px" Enabled="False" />
        <asp:Button ID="btnTechnicians" runat="server" style="z-index: 1; left: 129px; top: 299px; position: absolute" Text="Manage Technicians" Width="171px" OnClick="btnTechnicians_Click" />
    </form>
</body>
</html>
