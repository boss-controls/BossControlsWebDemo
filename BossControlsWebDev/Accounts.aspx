<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="BossControlsWeb2.Accounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Accounts</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Atmosphere_Accounts_seq_id" DataSourceID="ObjectDataSource1" AllowSorting="true">
            <Columns>
                <asp:TemplateField HeaderText="Name" SortExpression="fullName">
                    <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fullName") %>'></asp:TextBox>  
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Controls.aspx?PortalID=" + Eval("PortalID") %>'  Text='<%# Eval("fullName") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="PortalID" HeaderText="PortalID" SortExpression="PortalID" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BossControlsWeb2.Boss_DBTableAdapters.Atmosphere_AccountsTableAdapter">

        </asp:ObjectDataSource>
    </p>
</asp:Content>
