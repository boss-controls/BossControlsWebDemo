<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Portals.aspx.cs" Inherits="BossControlsWeb2.Portals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/ScrollableGridPlugin.js" type="text/javascript"></script>

 
    <br />
    <asp:RadioButtonList id="rbFilter" runat="server" onselectedindexchanged="rbFilter_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" CssClass="rbl" CellPadding ="5">
                <asp:ListItem value="1" Text="  All" Selected ="True"></asp:ListItem>
                <asp:ListItem value="2" Text="  Only @exosite.com"></asp:ListItem>
                <asp:ListItem value="3" Text="  Without  @exosite.com"></asp:ListItem>
                <asp:ListItem value="4" Text="  Without  @exosite.com and Without Customer"></asp:ListItem>
                <asp:ListItem value="5" Text="  Without  @exosite.com and With Customer"></asp:ListItem>
            </asp:RadioButtonList>
   
    <br />
    <div id="popup">
            <script type = "text/javascript">
                $(document).ready(function () {
                    $('#<%=gvPortals.ClientID %>').Scrollable({
                        ScrollHeight: 800
                    });
                });
            </script>
    <asp:GridView ID="gvPortals" runat="server" AutoGenerateColumns="False" DataKeyNames="Atmosphere_Accounts_seq_id" DataSourceID="odsPortals" AllowSorting="True" OnPreRender="gvPortals_PreRender"  >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <%-- <asp:BoundField DataField="Atmosphere_Accounts_seq_id" HeaderText="Atmosphere_Accounts_seq_id" InsertVisible="False" ReadOnly="True" SortExpression="Atmosphere_Accounts_seq_id" /> --%>
            <asp:TemplateField HeaderText="Portal ID" SortExpression="PortalID" >
                 <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PortalID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer DBA" SortExpression="c_DBA" >
                 <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_DBA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Full Name" SortExpression="fullName" >
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fullName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name" SortExpression="userName" >
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email" >
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone Number" SortExpression="phoneNumber" >
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("phoneNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Online Devices" SortExpression="On_Line" >
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("On_Line") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Offline Devices" SortExpression="Off_Line" >
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Off_Line") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
 </div>
   
    <asp:ObjectDataSource ID="odsPortals" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BossControlsWeb2.Boss_DBTableAdapters.Atmosphere_Accounts_PortalsTableAdapter">
    </asp:ObjectDataSource>

    <br />


</asp:Content>
