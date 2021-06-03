<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BossControlsWeb2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <asp:Button ID="btnManageCustomers" runat="server" OnClick="Button1_Click" Text="Manage Customers" PostBackUrl="~/Customers.aspx" />
        <br />
        <br />
        <asp:Button ID="btnManageUsers" runat="server" Text="Manage Users" />
        
        <br />
                



</asp:Content>
