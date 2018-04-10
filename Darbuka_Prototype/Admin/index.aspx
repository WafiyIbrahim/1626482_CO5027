<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Darbuka_Prototype.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <h1>Admin Panel for Admin</h1>
    <form id="AdminPage" runat="server">
      <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
