<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Darbuka_Prototype.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>Username:_____________________________</p>
    <p>Password:___________________________</p>
    <p></p>
    <a href="~/Default" runat="server">>>SUBMIT<<</a>
     <p></p>
    <a href="~/Register" runat="server">>>REGISTER<<</a>
</asp:Content>
