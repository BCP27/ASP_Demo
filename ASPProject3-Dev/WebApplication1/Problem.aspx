<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Problem.aspx.cs" Inherits="WebApplication1.Problem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Problem Submission</title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 78px;
            left: 145px;
            z-index: 1;
            height: 18px;
        }
        .auto-style2 {
            position: absolute;
            top: 110px;
            left: 145px;
            z-index: 1;
            width: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblTitle" runat="server" style="z-index: 1; left: 379px; top: 46px; position: absolute" Text="Problem Entry"></asp:Label>
        <asp:Label ID="lblTicket" runat="server" style="z-index: 1; left: 60px; top: 79px; position: absolute" Text="Ticket ID: "></asp:Label>
        <asp:Label ID="lblIncident" runat="server" style="z-index: 1; left: 15px; position: absolute; top: 109px" Text="Incident Number: "></asp:Label>
        <asp:Label ID="lblDesc" runat="server" style="z-index: 1; left: 25px; top: 215px; position: absolute; height: 20px" Text="Problem Description: *"></asp:Label>
        <asp:TextBox ID="txtProbDesc" runat="server" style="z-index: 1; left: 178px; top: 224px; position: absolute; height: 216px; width: 419px" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="lblCharMax" runat="server" Font-Italic="False" Font-Size="Smaller" style="z-index: 1; left: 48px; top: 263px; position: absolute; height: 15px; width: 81px" Text="500 character max"></asp:Label>
        <asp:Label ID="lblProduct" runat="server" style="z-index: 1; left: 103px; top: 143px; position: absolute" Text="Product: *"></asp:Label>
        <asp:DropDownList ID="drpProduct" runat="server" style="z-index: 1; left: 175px; top: 143px; position: absolute">
        </asp:DropDownList>
        <asp:Label ID="lblTech" runat="server" style="z-index: 1; left: 91px; top: 473px; position: absolute" Text="Technician: *"></asp:Label>
        <asp:DropDownList ID="drpTech" runat="server" style="z-index: 1; left: 192px; top: 473px; position: absolute">
        </asp:DropDownList>
        <asp:Button ID="btnSubmit" runat="server" style="z-index: 1; left: 105px; top: 578px; position: absolute" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" style="z-index: 1; left: 287px; top: 579px; position: absolute" Text="Clear Info" OnClick="btnClear_Click" />
        <asp:Button ID="btnReturn" runat="server" style="z-index: 1; left: 525px; top: 578px; position: absolute" Text="Return" OnClick="btnReturn_Click" />
        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 363px; top: 150px; position: absolute" Text="Error"></asp:Label>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblTicketID" runat="server" CssClass="auto-style1" Text="1"></asp:Label>
        <asp:Label ID="lblIncidentNo" runat="server" CssClass="auto-style2" Text="1"></asp:Label>
    </form>
</body>
</html>
