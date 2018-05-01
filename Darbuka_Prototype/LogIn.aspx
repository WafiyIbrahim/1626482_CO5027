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
            <table id="LoginTable">
            <!-- Username Field -->
                <tr>
                    <td style="height: 23px"><asp:Label ID="lblLoginEmail" runat="server" Text="USERNAME: " CssClass="lblLoginEmail"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtLoginEmail" runat="server" CssClass="txtLoginEmail"></asp:TextBox></td>
                </tr>
                <!-- Passwoerd Field -->
                <tr>
                    <td><asp:Label ID="lblLoginPassword" runat="server" Text="PASSWORD: " CssClass="lblLoginPassword"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" CssClass="txtLoginPassword"></asp:TextBox></td>
                </tr>

            </table>

             <!-- Login Button -->
             <div id="LoginBtn">
                <asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" CssClass="btnLogin" />
             </div>

           <!-- Register link -->
           <div id="RegLink">
               <a href="~/Register.aspx" runat="server"><p>Create Account</p></a>
           </div>
        </div>

           
           <!-- Display Error -->
           <div id="litMsg">
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
           </div>
         
           
        
    </div>
        
     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
