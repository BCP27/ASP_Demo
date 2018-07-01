<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resolution.aspx.cs" Inherits="WebApplication1.Resolution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Problem Resolution</title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 117px;
            left: 158px;
            z-index: 1;
            width: 15px;
        }
        .auto-style2 {
            position: absolute;
            top: 23px;
            left: 297px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 76px;
            left: 80px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 78px;
            left: 154px;
            z-index: 1;
            width: 9px;
        }
        .auto-style5 {
            position: absolute;
            top: 514px;
            left: 154px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 514px;
            left: 346px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 518px;
            left: 536px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 159px;
            left: 155px;
            z-index: 1;
            width: 15px;
        }
        .auto-style9 {
            position: absolute;
            top: 116px;
            left: 51px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 157px;
            left: 40px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 70px;
            left: 331px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 108px;
            left: 227px;
            z-index: 1;
            width: 327px;
            height: 129px;
        }
        .auto-style13 {
            position: absolute;
            top: 292px;
            left: 174px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 292px;
            left: 293px;
            z-index: 1;
            width: 46px;
        }
        .auto-style15 {
            position: absolute;
            top: 265px;
            left: 181px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 265px;
            left: 301px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 263px;
            left: 392px;
            z-index: 1;
            margin-top: 3px;
        }
        .auto-style18 {
            position: absolute;
            top: 267px;
            z-index: 1;
            left: 512px;
        }
        .auto-style19 {
            position: absolute;
            top: 292px;
            left: 382px;
            z-index: 1;
            width: 82px;
            right: 545px;
        }
        .auto-style20 {
            position: absolute;
            top: 293px;
            left: 500px;
            z-index: 1;
            width: 97px;
        }
        .auto-style21 {
            position: absolute;
            top: 334px;
            left: 292px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 335px;
            left: 381px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 335px;
            left: 522px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 370px;
            left: 289px;
            z-index: 1;
            width: 45px;
            right: 671px;
        }
        .auto-style25 {
            position: absolute;
            top: 370px;
            left: 378px;
            z-index: 1;
            width: 92px;
            right: 535px;
        }
        .auto-style26 {
            position: absolute;
            top: 370px;
            left: 519px;
            z-index: 1;
            width: 50px;
        }
        .auto-style27 {
            position: absolute;
            top: 368px;
            left: 173px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 155px;
            left: 729px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblticketNo" runat="server" CssClass="auto-style1" Text="0"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" CssClass="auto-style2" Text="Problem Resolution"></asp:Label>
        <asp:Label ID="lblResolution" runat="server" CssClass="auto-style3" Text="Resolution:"></asp:Label>
        <asp:Label ID="lblResolutionNo" runat="server" CssClass="auto-style4" Text="1"></asp:Label>
        <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style5" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" CssClass="auto-style6" Text="Clear" OnClick="btnClear_Click" />
        <asp:Button ID="btnReturn" runat="server" CssClass="auto-style7" Text="Return" OnClick="btnReturn_Click" />
        <asp:Label ID="lblIncidentNo" runat="server" CssClass="auto-style8" Text="0"></asp:Label>
        <asp:Label ID="lblTicket" runat="server" CssClass="auto-style9" Text="Ticket Number:"></asp:Label>
        <asp:Label ID="lblIncident" runat="server" CssClass="auto-style10" Text="Incident Number:"></asp:Label>
        <asp:Label ID="lblResolutionDesc" runat="server" CssClass="auto-style11" Text="Resolution Description*"></asp:Label>
        <asp:TextBox ID="txtResDesc" runat="server" CssClass="auto-style12" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
        <asp:DropDownList ID="drpTech" runat="server" CssClass="auto-style13">
        </asp:DropDownList>
        <asp:TextBox ID="txtHours" runat="server" CssClass="auto-style14"></asp:TextBox>
        <asp:Label ID="lblTech" runat="server" CssClass="auto-style15" Text="Technician*"></asp:Label>
        <asp:Label ID="lblHours" runat="server" CssClass="auto-style16" Text="Hours*"></asp:Label>
        <asp:Label ID="lblDateFix" runat="server" CssClass="auto-style17" Text="Date Fixed"></asp:Label>
        <asp:Label ID="lblDateOnsite" runat="server" CssClass="auto-style18" Text="Date Onsite"></asp:Label>
        <asp:TextBox ID="txtDateFix" runat="server" CssClass="auto-style19"></asp:TextBox>
        <asp:TextBox ID="txtDateOnsite" runat="server" CssClass="auto-style20"></asp:TextBox>
        <asp:Label ID="lblMileage" runat="server" CssClass="auto-style21" Text="Mileage"></asp:Label>
        <asp:Label ID="lblMisc" runat="server" CssClass="auto-style22" Text="Misc. Expenses"></asp:Label>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Text="Supplies"></asp:Label>
        <asp:TextBox ID="txtMileage" runat="server" CssClass="auto-style24"></asp:TextBox>
        <asp:TextBox ID="txtMisc" runat="server" CssClass="auto-style25"></asp:TextBox>
        <asp:TextBox ID="txtSupplies" runat="server" CssClass="auto-style26"></asp:TextBox>
        <asp:CheckBox ID="chkNoCost" runat="server" CssClass="auto-style27" Text="No Cost" />
        <asp:Label ID="lblError" runat="server" CssClass="auto-style28" Font-Bold="True" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
