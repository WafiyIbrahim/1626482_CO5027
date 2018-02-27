<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Darbuka_Prototype.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
    <div id="contactInfo">
        <h1>CONTACT US</h1>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p></p>
            <asp:Label ID="Label2" runat="server" Text="E-Mail"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p></p>   
            <asp:Label ID="Label3" runat="server" Text="Comment"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
        <h2>EMAIL ADDRESS</h2>
        <p>ArabInstrument@Hotmail.com</p>
    
        <h2>OUR SOCIAL MEDIA</h2>
        <p>WWW.Facebook.com/ArabInstrument</p>
        <p>www.Instagram.com/ArabInstrument</p>
    
        <h2>LOCATION</h2>
        <p>Google Map</p>
    </div>
</form>
    
</asp:Content>
