<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdmin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Darbuka_Prototype.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Ad Darbuka - Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    ADMIN PANEL
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div id="AdminBanner">
        <a><img src="Pictures/BannerAdmin.jpg" alt="Banner"></a>
    </div>

    <form id="viewForm" runat="server">
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Height="1cm" Width="2cm" />
    </form>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
