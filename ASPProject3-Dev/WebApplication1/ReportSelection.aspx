<%@ Page Title="Report Selection" Language="C#" MasterPageFile="~/ServiceCenter.Master" AutoEventWireup="true" CodeBehind="ReportSelection.aspx.cs" Inherits="WebApplication1.ReportSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto">
        <asp:Button ID="btnClient" runat="server" style="z-index: 1; left: 576px; top: 89px; position: absolute; width: 219px" Text="Client Problem Report" OnClick="btnClient_Click" />
        <asp:Button ID="btnInstitution" runat="server" style="z-index: 1; left: 573px; top: 147px; position: absolute; width: 221px" Text="Institution Problem Report" OnClick="btnInstitution_Click" />
        <asp:Button ID="btnProduct" runat="server" style="z-index: 1; left: 571px; top: 211px; position: absolute; width: 222px; margin-top: 2px" Text="Product Problem Report" OnClick="btnProduct_Click" />
        <asp:Button ID="btnTech" runat="server" style="z-index: 1; left: 570px; top: 284px; position: absolute; width: 223px" Text="Technician Problem Report" OnClick="btnTech_Click" />
        <asp:Button ID="btnMainMenu" runat="server" style="z-index: 1; left: 577px; top: 628px; position: absolute; width: 207px" Text="Return to Main Menu" OnClick="btnMainMenu_Click" />
    </div>
</asp:Content>
