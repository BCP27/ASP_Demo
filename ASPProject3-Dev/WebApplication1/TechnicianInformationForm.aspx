<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TechnicianInformationForm.aspx.cs" Inherits="WebApplication1.TechnicianInformationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Technician Information Page
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblTitle" runat="server" Font-Size="Larger" style="z-index: 1; left: 129px; top: 34px; position: absolute" Text="Technician Maintenance" Width="237px"></asp:Label>
        <asp:Label ID="lblTechnician" runat="server" style="z-index: 1; left: 44px; top: 94px; position: absolute; text-align: right;" Text="Technician" Width="84px"></asp:Label>
        <asp:Label ID="lblFName" runat="server" style="z-index: 1; left: 44px; top: 137px; position: absolute; text-align: right;" Text="*First Name:" Width="84px"></asp:Label>
        <asp:Label ID="lblMiddleInitial" runat="server" style="z-index: 1; left: 44px; top: 180px; position: absolute; text-align: right;" Text="Middle Initial:" Width="84px"></asp:Label>
        <asp:Label ID="lblLName" runat="server" style="z-index: 1; left: 44px; top: 223px; position: absolute; text-align: right;" Text="*Last Name:" Width="84px"></asp:Label>
        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 44px; top: 266px; position: absolute; text-align: right;" Text="Email:" Width="84px"></asp:Label>
        <asp:Label ID="lblDepartment" runat="server" style="z-index: 1; left: 44px; top: 309px; position: absolute; text-align: right;" Text="Department:" Width="84px"></asp:Label>
        <asp:Label ID="lblPhone" runat="server" style="z-index: 1; left: 44px; top: 352px; position: absolute; text-align: right;" Text="*Phone:" Width="84px"></asp:Label>
        <asp:Label ID="lblHourlyRate" runat="server" style="z-index: 1; left: 44px; top: 395px; position: absolute; text-align: right;" Text="*Hourly Rate:" Width="84px"></asp:Label>
        <asp:DropDownList ID="drpTechnician" runat="server" style="z-index: 1; left: 135px; top: 94px; position: absolute;" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="drpTechnician_SelectedIndexChanged">
            <asp:ListItem Selected="True"></asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtFName" runat="server" style="z-index: 1; left: 135px; top: 137px; position: absolute" Width="200px" AutoPostBack="True" OnTextChanged="txtFName_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txtMiddleInitial" runat="server" style="z-index: 1; left: 135px; top: 180px; position: absolute" Width="200px" OnTextChanged="txtMiddleInitial_TextChanged" AutoPostBack="True"></asp:TextBox>
        <asp:TextBox ID="txtLName" runat="server" style="z-index: 1; left: 135px; top: 223px; position: absolute" Width="200px" AutoPostBack="True" OnTextChanged="txtLName_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server" style="z-index: 1; left: 135px; top: 266px; position: absolute" Width="200px"></asp:TextBox>
        <asp:TextBox ID="txtDepartment" runat="server" style="z-index: 1; left: 135px; top: 309px; position: absolute" Width="200px"></asp:TextBox>
        <asp:TextBox ID="txtPhone" runat="server" style="z-index: 1; left: 135px; top: 352px; position: absolute" Width="200px" AutoPostBack="True" OnTextChanged="txtPhone_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txtHourlyRate" runat="server" style="z-index: 1; left: 135px; top: 395px; position: absolute" Width="200px" AutoPostBack="True" OnTextChanged="txtHourlyRate_TextChanged"></asp:TextBox>
        <asp:Label ID="lblReqInfo" runat="server" ForeColor="Red" style="z-index: 1; left: 135px; top: 436px; position: absolute; width: 200px; text-align: right" Text="* indicates required information" Width="200px"></asp:Label>
        <asp:Button ID="btnAccept" runat="server" style="z-index: 1; left: 135px; top: 479px; position: absolute" Text="Accept" Width="68px" Enabled="False" OnClick="btnAccept_Click" />
        <asp:Button ID="btnClear" runat="server" style="z-index: 1; left: 226px; top: 479px; position: absolute" Text="Clear" Width="68px" />
        <asp:Button ID="btnMainMenu" runat="server" style="z-index: 1; left: 129px; top: 522px; position: absolute" Text="Return to Main Menu" OnClick="btnMainMenu_Click" Width="237px" />
        <asp:Label ID="lblMode" runat="server" style="z-index: 1; left: 389px; top: 94px; position: absolute; height: 26px; width: 61px" Text="Mode"></asp:Label>
        <asp:RadioButton ID="rdoUpdateTech" runat="server" style="z-index: 1; left: 389px; top: 137px; position: absolute" AutoPostBack="True" CausesValidation="True" OnCheckedChanged="rdoUpdateTech_CheckedChanged" Text="Update Technician" Checked="True" />
        <asp:RadioButton ID="rdoAddTech" runat="server" style="z-index: 1; left: 389px; top: 180px; position: absolute" AutoPostBack="True" CausesValidation="True" OnCheckedChanged="rdoAddTech_CheckedChanged" Text="Add Technician" />
        <asp:Label ID="lblMInitWarning" runat="server" Font-Bold="True" Font-Size="Smaller" ForeColor="Red" style="z-index: 1; left: 143px; top: 161px; position: absolute" Text="Middle Initial can only be 1 character" Visible="False"></asp:Label>
        <asp:Label ID="lblTechAdded" runat="server" Font-Bold="True" ForeColor="Red" style="z-index: 1; left: 133px; top: 568px; position: absolute"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:RadioButton ID="rdoDeleteTech" runat="server" style="z-index: 1; left: 389px; top: 223px; position: absolute" AutoPostBack="True" CausesValidation="True" OnCheckedChanged="rdoDeleteTech_CheckedChanged" Text="Delete Technician" />
    </form>
</body>
</html>
