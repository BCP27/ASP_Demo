<%@ Page Title="Report" Language="C#" MasterPageFile="~/ServiceCenter.Master" AutoEventWireup="true" CodeBehind="ReportDisplay.aspx.cs" Inherits="WebApplication1.ReportDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <asp:GridView ID="gvReport" runat="server" style="margin: auto;">
        </asp:GridView>

    
</asp:Content>
