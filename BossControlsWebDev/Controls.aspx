<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Controls.aspx.cs" Inherits="BossControlsWeb2.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Controls</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="true">
            <Columns>
                <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="dev_info" HeaderText="dev_info" SortExpression="dev_info" />
                <asp:BoundField DataField="Max" HeaderText="Max" ReadOnly="True" SortExpression="Max" />
                <asp:BoundField DataField="Min" HeaderText="Min" ReadOnly="True" SortExpression="Min" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Boss_DBConnectionString %>" SelectCommand="SELECT 
	 [Serial]
	,[model]
	,d.[name]
	,ds.data_value 'Status'
	,df.data_value 'dev_info'
	,round((Select max([Measurement_Max_Value_1]) from [dbo].[Monthly_Transaction] where [Device_MAC] = [Serial]),2) as [Max]
	,round((Select min([Measurement_Max_Value_1]) from [dbo].[Monthly_Transaction] where [Device_MAC] = [Serial]),2) as [Min]
  FROM 
	[Atmosphere_Devices] d
	join [Atmosphere_Devices_DataSource] ds on d.Device_ID = ds.Device_ID and ds.[DataSource_type] = 'status'
	join [Atmosphere_Devices_DataSource] df on d.Device_ID = df.Device_ID and df.[DataSource_type] = 'dev_info'
	
  where Portal_ID = @PortalID ">
            <SelectParameters>
                <asp:QueryStringParameter Name="PortalID" QueryStringField="PortalID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
