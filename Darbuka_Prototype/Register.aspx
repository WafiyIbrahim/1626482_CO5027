<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Darbuka_Prototype.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

    <div id="RegisterPage">
        <h1>Register</h1>

        <!-- Username Field -->
            <asp:Label ID="lblRegEmail" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>

        <!-- Password Field -->
        <p></p>
            <asp:Label ID="lblRegPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>

        <!-- Register Button -->
        <p></p>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        <p></p>
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

    </div>

    </form>

</asp:Content>
