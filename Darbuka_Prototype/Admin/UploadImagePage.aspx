<%@ Page Title="" Language="C#" MasterPageFile="~/MyAdmin.Master" AutoEventWireup="true" CodeBehind="UploadImagePage.aspx.cs" Inherits="Darbuka_Prototype.Admin.UploadImagePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Ad Darbuka - Upload Image Page.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
    UPLOAD OMAGE OF PRODUCT
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<form id="viewForm" runat="server">

    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <p></p>
    <asp:Image ID="ImageEditPage" runat="server" />
    <p></p>
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
</form>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
