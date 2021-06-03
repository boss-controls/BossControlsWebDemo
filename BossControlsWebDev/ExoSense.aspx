<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="ExoSense.aspx.cs" Inherits="BossControlsWeb2.ExoSense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <span style="color: rgb(255, 255, 255); font-family: Arial, -apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif; font-size: 21.6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(34, 39, 54); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">ExoSense</span></p>
    <p>
        <asp:Button ID="btGetUsers" runat="server" OnClick="btGetUsers_Click" Text="Get Users" />
    </p>
    <p>
        <asp:TextBox ID="tbResponce" runat="server" Height="453px" TextMode="MultiLine" Width="648px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
