<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpenProblems.aspx.cs" Inherits="WebApplication1.OpenProblems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Open Problems</title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 45px;
            left: 400px;
            z-index: 1;
        }
        .auto-style2 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 120px;
            left: 328px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 289px;
            left: 405px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblTitle" runat="server" CssClass="auto-style1" Text="Open Problems"></asp:Label>
        <asp:GridView ID="gvProblems" runat="server" CssClass="auto-style2" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField ButtonType="Button" Text="Select" CommandName="Select" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblError" runat="server" CssClass="auto-style3" Font-Bold="True" ForeColor="Red" Text="Error"></asp:Label>
    </form>
</body>
</html>
