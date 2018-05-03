<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Darbuka_Prototype.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    AD DARBUKA - ADMIN
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div id="AdminBanner">
        <a><img src="Pictures/BannerAdmin.jpg" alt="Banner"></a>
    </div>

    <div id="AdminPanelMenu">
        <table id="AdminMenuTable">
            <tr>
                <td><asp:Button ID="btnAddProduct" runat="server" Text="ADD PRODUCT" CssClass="btnAddProduct" OnClick="btnAddProduct_Click" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnEditPage" runat="server" Text="MANAGE PRODUCT" CssClass="btnManageProduct" OnClick="btnEditPage_Click" /></td>
            </tr>
        </table>
   

    <div id="ToLogout">
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" OnClick="btnLogout_Click" CssClass="btnLogOut" />
    </div>
    
    </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
