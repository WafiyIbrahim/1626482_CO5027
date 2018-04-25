<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Darbuka_Prototype.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">

    <div id="LoginPage">
        <h1>SIGN IN</h1>

        <div id="LoginForm">
            <!-- Username Field -->
            <div id="LoginEmailLabel">
                <asp:Label ID="lblLoginEmail" runat="server" Text="USERNAME: "></asp:Label>
            </div>

            <div id="LoginEmailBox">
                <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
            </div>

            <!-- Passwoerd Field -->
            <div id="LoginPasswordLabel">
                <asp:Label ID="lblLoginPassword" runat="server" Text="PASSWORD: "></asp:Label>
            </div>

            <div id="LoginPasswordBox">
                <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
   
            <!-- Login Button -->
            <div id="buttonLogin">
                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
            </div>
            
            <div id="LoginError">
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            </div>
            
        </div>

    </div>
        
     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
