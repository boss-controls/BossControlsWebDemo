<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Atmosphere.aspx.cs" Inherits="BossControlsWeb2.Atmosphere" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Atmosphere.</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Atmosphere URL:"></asp:Label>
        <asp:TextBox ID="tbAtmosphereURL" runat="server" Width="269px"></asp:TextBox>
&nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="UserID:"></asp:Label>
&nbsp;
        <asp:TextBox ID="tbUserID" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="PW: "></asp:Label>
&nbsp;<asp:TextBox ID="tbPW" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btGet" runat="server" Text="Get Account" OnClick="btGet_Click" />
    </p>
    <p>
        <asp:Button ID="btPortals" runat="server" OnClick="btPortals_Click" Text="Get Portals" />
    </p>
    <p>
        <asp:Button ID="btPortalsDataSource" runat="server" OnClick="Button1_Click" Text="Get Portals Data Source" />
    </p>
<p>
        <asp:Button ID="btGetDevices" runat="server" OnClick="btGetDevices_Click" Text="Get Devices" />
    </p>
<p>
        <asp:Button ID="btGetDeviceDataSource" runat="server" OnClick="btGetDeviceDataSource_Click" Text="Get Device Data Source" />
    </p>
    <p>
        <asp:Button ID="btGetDataDourceData" runat="server" OnClick="btGetDataDourceData_Click" Text="Get Data Time Source Data" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Portal ID: "></asp:Label>
&nbsp;<asp:TextBox ID="tbPortalID" runat="server">2661800537</asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="From Date:"></asp:Label>
&nbsp;
        <asp:TextBox ID="tbFromDate" runat="server">09/23/2020</asp:TextBox>
&nbsp;<asp:Label ID="Label5" runat="server" Text="To Date:"></asp:Label>
&nbsp;<asp:TextBox ID="tbToDate" runat="server">10/23/2020</asp:TextBox>
    </p>
</asp:Content>
