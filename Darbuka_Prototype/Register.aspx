<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Darbuka_Prototype.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <div id="RegisterPage">
        <h1>REGISTER</h1>

        <div id="RegisterForm">
            <table id="RegisterTable">
            <!-- Username Field -->
                <tr>
                    <td><asp:Label ID="lblRegEmail" runat="server" Text="Username" CssClass="lblRegEmail"></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:TextBox ID="txtRegEmail" runat="server" CssClass="txtRegEmail"></asp:TextBox></td>
                </tr>
                
            <!-- Password Field -->
                <tr>
                    <td><asp:Label ID="lblRegPassword" runat="server" Text="Password" CssClass="lblRegPassword"></asp:Label></td>
                </tr>
               
                <tr>
                    <td><asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" CssClass="txtRegPassword"></asp:TextBox></td>
                </tr>
               

            </table>

            <!-- Register Button -->
            <div id="RegBtn">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btnReg" />
            </div>
            
            <!-- Register link -->
           <div id="LoginLink">
               <a href="~/LogIn.aspx" runat="server"><p>Already have an account?</p></a>
           </div>
        </div>
            <!-- Display Error -->
               <div id="litMsg">
                    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
               </div>

    </div>



</asp:Content>
