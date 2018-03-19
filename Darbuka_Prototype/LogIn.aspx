<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Darbuka_Prototype.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">

    <div id="LoginPage">
        <h1>Log In</h1>

        <!-- Username Field -->
        <asp:Label ID="lblLoginEmail" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>

    <p></p>
        <!-- Passwoerd Field -->
        <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
    <p></p>
        <!-- Login Button -->
        <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
    <p></p>
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>

     </div>
        
     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
