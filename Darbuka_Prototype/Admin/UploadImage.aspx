<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Darbuka_Prototype.Admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <form id="UploadImage" runat="server">
        <h1>Upload Image of Product</h1>

         <asp:FileUpload ID="imageFileUploadControl" runat="server" />
         <p></p>
         <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
         <p></p>
         <asp:Image ID="CurrentImage" runat="server" BorderStyle="Solid" Height="150px" Width="110px" />
     </form>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
