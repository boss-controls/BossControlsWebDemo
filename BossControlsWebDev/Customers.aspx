<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="BossControlsWeb2.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/ScrollableGridPlugin.js" type="text/javascript"></script>
    <div>
        <h1>Customers</h1>
        <p>
            <asp:RadioButtonList id="rbFilter" runat="server" onselectedindexchanged="rbFilter_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" CssClass="rbl" CellPadding ="5">
                <asp:ListItem value="1" Text="  All" Selected ="True"></asp:ListItem>
                <asp:ListItem value="2" Text="  With Portal IDs"></asp:ListItem>
                <asp:ListItem value="3" Text="  Without  Portal IDs"></asp:ListItem>
            </asp:RadioButtonList>
        </p>
  <script type = "text/javascript">
      $(document).ready(function () {
          $('#<%=gvCustomers.ClientID %>').Scrollable({
              ScrollHeight: 800
          });
      });
  </script>
 <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" DataKeyNames="c_seq_id" DataSourceID="dsCustomers" AllowPaging="False" AllowSorting="True" OnPreRender="gvCustomers_PreRender">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <%-- <asp:BoundField DataField="c_Branch_No" HeaderText="Branch No" SortExpression="c_Branch_No" />
                <asp:BoundField DataField="c_seq_id" HeaderText="c_seq_id" SortExpression="c_seq_id" /> --%>
                <asp:BoundField DataField="c_Exosite_Portal_ID" HeaderText="Exosite Portal ID" SortExpression="c_Exosite_Portal_ID" />
                <asp:TemplateField HeaderText="Legal Name" SortExpression="Legal Name">
 
                    <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Customer.aspx?c_seq_id=" + Eval("c_seq_id")%>'   Text='<%# Eval("c_Legal_Name") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="c_DBA" HeaderText="DBA" SortExpression="c_DBA" />
                <asp:BoundField DataField="c_EIN" HeaderText="EIN" SortExpression="c_EIN" />
                <asp:BoundField DataField="c_Status" HeaderText="Status" SortExpression="c_Status" />
                <asp:BoundField DataField="c_Corp_Address_1" HeaderText="Corp Address1" SortExpression="c_Corp_Address_1" />
                <asp:BoundField DataField="c_Corp_Address_2" HeaderText="Corp Address2" SortExpression="c_Corp_Address_2" />
                <asp:BoundField DataField="c_Corp_City" HeaderText="Corp City" SortExpression="c_Corp_City" />
                <asp:BoundField DataField="c_Corp_State" HeaderText="Corp State" SortExpression="c_Corp_State" />
                <asp:BoundField DataField="c_Corp_County" HeaderText="Corp County" SortExpression="c_Corp_County" />
                <asp:BoundField DataField="c_Corp_Country" HeaderText="Corp Country" SortExpression="c_Corp_Country" />
                <asp:BoundField DataField="c_Corp_Zip" HeaderText="Corp Zip" SortExpression="c_Corp_Zip" />
                <asp:BoundField DataField="c_Main_Phone" HeaderText="Main Phone" SortExpression="c_Main_Phone" ItemStyle-Width="30" HeaderStyle-Width ="30"/>
                <asp:BoundField DataField="c_Main_Fax" HeaderText="Main Fax" SortExpression="c_Main_Fax" ItemStyle-Width="30" HeaderStyle-Width ="30" />
                <asp:BoundField DataField="c_Website" HeaderText="Website" SortExpression="c_Website" ItemStyle-Width="30" HeaderStyle-Width ="30" />
                <%-- <asp:BoundField DataField="c_Billing_Address_1" HeaderText="c_Billing_Address_1" SortExpression="c_Billing_Address_1" /> 
                <asp:BoundField DataField="c_Billing_Address_2" HeaderText="c_Billing_Address_2" SortExpression="c_Billing_Address_2" />
                <asp:BoundField DataField="c_Billing_City" HeaderText="c_Billing_City" SortExpression="c_Billing_City" />
                <asp:BoundField DataField="c_Billing_State" HeaderText="c_Billing_State" SortExpression="c_Billing_State" />
                <asp:BoundField DataField="c_Billing_County" HeaderText="c_Billing_County" SortExpression="c_Billing_County" />
                <asp:BoundField DataField="c_Billing_Country" HeaderText="c_Billing_Country" SortExpression="c_Billing_Country" />
                <asp:BoundField DataField="c_Billing_Zip" HeaderText="c_Billing_Zip" SortExpression="c_Billing_Zip" />
                <asp:BoundField DataField="c_Account_Owner" HeaderText="c_Account_Owner" SortExpression="c_Account_Owner" />
                <asp:BoundField DataField="c_External_Account_Owner" HeaderText="c_External_Account_Owner" SortExpression="c_External_Account_Owner" />
                <asp:BoundField DataField="c_Lead_Source" HeaderText="c_Lead_Source" SortExpression="c_Lead_Source" />
                <asp:BoundField DataField="c_Est_kWh_cost" HeaderText="c_Est_kWh_cost" SortExpression="c_Est_kWh_cost" />
                <asp:BoundField DataField="c_Utility_Company" HeaderText="c_Utility_Company" SortExpression="c_Utility_Company" />
                <asp:BoundField DataField="c_Primary_Utility_Acct_Num" HeaderText="c_Primary_Utility_Acct_Num" SortExpression="c_Primary_Utility_Acct_Num" />
                <asp:BoundField DataField="c_Transmission_Company" HeaderText="c_Transmission_Company" SortExpression="c_Transmission_Company" />
                <asp:BoundField DataField="c_Electric_Contract_Start_Date" HeaderText="c_Electric_Contract_Start_Date" SortExpression="c_Electric_Contract_Start_Date" />
                <asp:BoundField DataField="c_Electric_Contract_End_Date" HeaderText="c_Electric_Contract_End_Date" SortExpression="c_Electric_Contract_End_Date" />
                <asp:BoundField DataField="c_Energy_Market" HeaderText="c_Energy_Market" SortExpression="c_Energy_Market" />
                <asp:BoundField DataField="c_Primary_Electric_Meter" HeaderText="c_Primary_Electric_Meter" SortExpression="c_Primary_Electric_Meter" />
                <asp:BoundField DataField="c_Telecom_Company" HeaderText="c_Telecom_Company" SortExpression="c_Telecom_Company" />
                <asp:BoundField DataField="c_Primary_Telco_Acct_Num" HeaderText="c_Primary_Telco_Acct_Num" SortExpression="c_Primary_Telco_Acct_Num" />
                <asp:BoundField DataField="c_Est_Devices" HeaderText="c_Est_Devices" SortExpression="c_Est_Devices" />
                <asp:BoundField DataField="c_Est_Bldg_Count" HeaderText="c_Est_Bldg_Count" SortExpression="c_Est_Bldg_Count" />
                <asp:BoundField DataField="c_Est_Square_Ft" HeaderText="c_Est_Square_Ft" SortExpression="c_Est_Square_Ft" />
                <asp:BoundField DataField="c_Est_Monthly_kWh" HeaderText="c_Est_Monthly_kWh" SortExpression="c_Est_Monthly_kWh" />
                <asp:BoundField DataField="c_Sold_Devices" HeaderText="c_Sold_Devices" SortExpression="c_Sold_Devices" />
                <asp:BoundField DataField="c_Actual_Bldg_Count" HeaderText="c_Actual_Bldg_Count" SortExpression="c_Actual_Bldg_Count" />
                <asp:BoundField DataField="c_Actual_Square_Ft" HeaderText="c_Actual_Square_Ft" SortExpression="c_Actual_Square_Ft" />
                <asp:BoundField DataField="c_Actual_Monthly_kWh" HeaderText="c_Actual_Monthly_kWh" SortExpression="c_Actual_Monthly_kWh" />
                <asp:CheckBoxField DataField="c_Tax_Exempt" HeaderText="c_Tax_Exempt" SortExpression="c_Tax_Exempt" />
                
                <asp:BoundField DataField="c_Exosite_Portal_RID" HeaderText="c_Exosite_Portal_RID" SortExpression="c_Exosite_Portal_RID" />--%>
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:BossDB_TestConnectionString %>" SelectCommand="SELECT * FROM [Customer]" >
                <filterparameters>
                    <asp:formparameter name="FullName" formfield="Textbox1" defaultvalue="Nancy Davolio" />
                </filterparameters>
            </asp:SqlDataSource> 
            <br />
            <asp:Button ID="btnNewCustomer" runat="server" Text="New Customer" PostBackUrl="~/Customer.aspx?c_seq_id=" />
  
        
    </div>
</asp:Content>
