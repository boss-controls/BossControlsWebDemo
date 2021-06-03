<%@ Page Title="" Language="C#" MasterPageFile="~/Internal.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="BossControlsWeb2.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/ScrollableGridPlugin.js" type="text/javascript"></script>
    <br />
<div>
        <asp:Menu
            ID="MenuTab"
            Width="80%"
            runat="server"
            Orientation="Horizontal"
            StaticEnableDefaultPopOutImage="False"
            OnMenuItemClick="MenuTab_MenuItemClick" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1em" ForeColor="#284E98" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem  Text="Customer" Value="0"></asp:MenuItem>
                <asp:MenuItem  Text="Contacts" Value="1"></asp:MenuItem>
                <asp:MenuItem  Text="Users" Value="2"></asp:MenuItem>
                <asp:MenuItem  Text="Devices" Value="3"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
    <asp:MultiView ID="MultiView1" runat="server" >
        <asp:View ID="View1" runat="server">
            Customer
            <br />
            
            <asp:FormView ID="fvCustomer" runat="server" DataKeyNames="c_seq_id" DataSourceID="odsCust" OnDataBound ="fvCustomer_OnDataBound" HorizontalAlign="Left" Width="1335px" >
                <EditItemTemplate>
                         <asp:Table ID="tblEditCust" runat="server" HorizontalAlign="Left" Width="600px">
                        <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">BUSINESS INFORMATION</div>
                                <asp:Table ID="tblEditCustIno" runat="server"  HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BUSINESS INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >seq_id:</asp:TableCell><asp:TableCell><asp:Label ID="Label1" runat="server" Text='<%# Eval("c_seq_id") %>' MaxLength="12"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Cust_IDTextBox" runat="server" Text='<%# Bind("c_Cust_ID") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >Master_Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("c_Master_Cust_ID") %>' MaxLength="8" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Branch_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("c_Branch_No") %>' MaxLength="8" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Division_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("c_Division_No") %>'  MaxLength="8"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Legal_Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("c_Legal_Name") %>' MaxLength="35" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_DBA:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("c_DBA") %>' MaxLength="35"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_EIN:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("c_EIN") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Prospect_Client:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("c_Prospect_Client") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Status:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("c_Status") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">CONTACT INFORMATION</div>
                                <asp:Table ID="tblEditCont" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  ><div class="header">CONTACT INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Main_Fax:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Main_FaxTextBox" runat="server" Text='<%# Bind("c_Main_Fax") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Website:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_WebsiteTextBox" runat="server" Text='<%# Bind("c_Website") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Account_OwnerTextBox" runat="server" Text='<%# Bind("c_Account_Owner") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_External_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_External_Account_OwnerTextBox" runat="server" Text='<%# Bind("c_External_Account_Owner") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Lead_Source:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Lead_SourceTextBox" runat="server" Text='<%# Bind("c_Lead_Source") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>

                        </asp:TableRow>
                             <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">CORPORATE ADDRESS</div>
                                <asp:Table ID="tblEditCorpAddr" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">CORPORATE ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Address_1:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_1TextBox" runat="server" Text='<%# Bind("c_Corp_Address_1") %>' MaxLength="45"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_2TextBox" runat="server" Text='<%# Bind("c_Corp_Address_2") %>' MaxLength="45"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CityTextBox" runat="server" Text='<%# Bind("c_Corp_City") %>' MaxLength="25"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_StateTextBox" runat="server" Text='<%# Bind("c_Corp_State") %>' MaxLength="2" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountyTextBox" runat="server" Text='<%# Bind("c_Corp_County") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountryTextBox" runat="server" Text='<%# Bind("c_Corp_Country") %>' MaxLength="3" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_ZipTextBox" runat="server" Text='<%# Bind("c_Corp_Zip") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                                <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">BILLING ADDRESS</div>
                                <asp:Table ID="tblBillingAddr" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BILLING ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_1TextBox" runat="server" Text='<%# Bind("c_Billing_Address_1") %>' MaxLength="45"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_2TextBox" runat="server" Text='<%# Bind("c_Billing_Address_2") %>' MaxLength="45"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CityTextBox" runat="server" Text='<%# Bind("c_Billing_City") %>' MaxLength="25"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_StateTextBox" runat="server" Text='<%# Bind("c_Billing_State") %>' MaxLength="2" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountyTextBox" runat="server" Text='<%# Bind("c_Billing_County") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountryTextBox" runat="server" Text='<%# Bind("c_Billing_Country") %>' MaxLength="3" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_ZipTextBox" runat="server" Text='<%# Bind("c_Billing_Zip") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>

                             </asp:TableRow>
                             <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">UTILITY INFORMATION</div>
                                <asp:Table ID="tblEditUtility" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">UTILITY INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_kWh_cost:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_kWh_costTextBox" runat="server" Text='<%# Bind("c_Est_kWh_cost") %>' MaxLength="20"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Utility_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Utility_CompanyTextBox" runat="server" Text='<%# Bind("c_Utility_Company") %>' MaxLength="20"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Utility_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Utility_Acct_NumTextBox" runat="server" Text='<%# Bind("c_Primary_Utility_Acct_Num") %>' MaxLength="20"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Transmission_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Transmission_CompanyTextBox" runat="server" Text='<%# Bind("c_Transmission_Company") %>' MaxLength="20"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Electric_Contract_Start_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_Start_DateTextBox" runat="server" Text='<%# Bind("c_Electric_Contract_Start_Date") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Electric_Contract_End_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_End_DateTextBox" runat="server" Text='<%# Bind("c_Electric_Contract_End_Date") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Energy_Market:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Energy_MarketTextBox" runat="server" Text='<%# Bind("c_Energy_Market") %>' MaxLength="30"  /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Electric_Meter:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Electric_MeterTextBox" runat="server" Text='<%# Bind("c_Primary_Electric_Meter") %>' MaxLength="30" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Telecom_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Telecom_CompanyTextBox" runat="server" Text='<%# Bind("c_Telecom_Company") %>' MaxLength="40" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Telco_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Telco_Acct_NumTextBox" runat="server" Text='<%# Bind("c_Primary_Telco_Acct_Num") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
								</asp:Table>
                            </asp:TableCell><asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">SUMMARY</div>
                                <asp:Table ID="tblEditInfo" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">SUMMARY</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_DevicesTextBox" runat="server" Text='<%# Bind("c_Est_Devices") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Bldg_CountTextBox" runat="server" Text='<%# Bind("c_Est_Bldg_Count") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Square_FtTextBox" runat="server" Text='<%# Bind("c_Est_Square_Ft") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Monthly_kWhTextBox" runat="server" Text='<%# Bind("c_Est_Monthly_kWh") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Sold_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Sold_DevicesTextBox" runat="server" Text='<%# Bind("c_Sold_Devices") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Bldg_CountTextBox" runat="server" Text='<%# Bind("c_Actual_Bldg_Count") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Square_FtTextBox" runat="server" Text='<%# Bind("c_Actual_Square_Ft") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Monthly_kWhTextBox" runat="server" Text='<%# Bind("c_Actual_Monthly_kWh") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Exosite_Portal_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Exosite_Portal_IDTextBox" runat="server" Text='<%# Bind("c_Exosite_Portal_ID") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Tax_Exempt:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Tax_ExemptTextBox" runat="server" Text='<%# Bind("c_Tax_Exempt") %>' MaxLength="1" /></asp:TableCell></asp:TableRow>
							    
							    </asp:Table>
                            </asp:TableCell></asp:TableRow>
                    </asp:Table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Table ID="tblInsertCust" runat="server"   HorizontalAlign="Left" Width="600px">
                        <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">CONTACT INFORMATION</div>
                                <asp:Table ID="tblInsertCustIno"  runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BUSINESS INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Cust_IDTextBox2" runat="server" Text='<%# Bind("c_Cust_ID") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">Master_Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Master_Cust_IDTextBox2" runat="server" Text='<%# Bind("c_Master_Cust_ID") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Branch_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Branch_NoTextBox2" runat="server" Text='<%# Bind("c_Branch_No") %>' MaxLength="8" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Division_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Division_NoTextBox2" runat="server" Text='<%# Bind("c_Division_No") %>' MaxLength="8" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Legal_Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Legal_NameTextBox2" runat="server" Text='<%# Bind("c_Legal_Name") %>' MaxLength="35" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_DBA:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_DBATextBox2" runat="server" Text='<%# Bind("c_DBA") %>' MaxLength="35" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_EIN:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_EINTextBox2" runat="server" Text='<%# Bind("c_EIN") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Prospect_Client:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Prospect_ClientTextBox2" runat="server" Text='<%# Bind("c_Prospect_Client") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Status:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_StatusTextBox2" runat="server" Text='<%# Bind("c_Status") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">CONTACT INFORMATION</div>
                                <asp:Table ID="tblInsertCont"  runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">CONTACT INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Main_Phone:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Main_PhoneTextBox2" runat="server" Text='<%# Bind("c_Main_Phone") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Main_Fax:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Main_FaxTextBox2" runat="server" Text='<%# Bind("c_Main_Fax") %>' MaxLength="12" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Website:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_WebsiteTextBox2" runat="server" Text='<%# Bind("c_Website") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Account_OwnerTextBox2" runat="server" Text='<%# Bind("c_Account_Owner") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_External_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_External_Account_OwnerTextBox2" runat="server" Text='<%# Bind("c_External_Account_Owner") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right">c_Lead_Source:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Lead_SourceTextBox2" runat="server" Text='<%# Bind("c_Lead_Source") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">BILLING ADDRESS</div>
                                <asp:Table ID="tblInsertCorpAddr"  runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">CORPORATE ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Address_1:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_1TextBox2" runat="server" Text='<%# Bind("c_Corp_Address_1") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_2TextBox2" runat="server" Text='<%# Bind("c_Corp_Address_2") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CityTextBox2" runat="server" Text='<%# Bind("c_Corp_City") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_StateTextBox2" runat="server" Text='<%# Bind("c_Corp_State") %>' MaxLength="2" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountyTextBox2" runat="server" Text='<%# Bind("c_Corp_County") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountryTextBox2" runat="server" Text='<%# Bind("c_Corp_Country") %>' MaxLength="3" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Corp_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_ZipTextBox2" runat="server" Text='<%# Bind("c_Corp_Zip") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell><asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">BILLING ADDRESS</div>
                                <asp:Table ID="tblBillingAddr"  runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BILLING ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Address_1:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_1TextBox2" runat="server" Text='<%# Bind("c_Billing_Address_1") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_2TextBox2" runat="server" Text='<%# Bind("c_Billing_Address_2") %>' MaxLength="45" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CityTextBox2" runat="server" Text='<%# Bind("c_Billing_City") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_StateTextBox2" runat="server" Text='<%# Bind("c_Billing_State") %>' MaxLength="2" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountyTextBox2" runat="server" Text='<%# Bind("c_Billing_County") %>' MaxLength="25" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountryTextBox2" runat="server" Text='<%# Bind("c_Billing_Country") %>' MaxLength="3" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Billing_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_ZipTextBox2" runat="server" Text='<%# Bind("c_Billing_Zip") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell></asp:TableRow><asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">UTILITY INFORMATION</div>
                                <asp:Table ID="tblInsertUtility"  runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">UTILITY INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_kWh_cost:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_kWh_costTextBox2" runat="server" Text='<%# Bind("c_Est_kWh_cost") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Utility_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Utility_CompanyTextBox2" runat="server" Text='<%# Bind("c_Utility_Company") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Utility_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Utility_Acct_NumTextBox2" runat="server" Text='<%# Bind("c_Primary_Utility_Acct_Num") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Transmission_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Transmission_CompanyTextBox2" runat="server" Text='<%# Bind("c_Transmission_Company") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Electric_Contract_Start_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_Start_DateTextBox2" runat="server" Text='<%# Bind("c_Electric_Contract_Start_Date") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Electric_Contract_End_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_End_DateTextBox2" runat="server" Text='<%# Bind("c_Electric_Contract_End_Date") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Energy_Market:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Energy_MarketTextBox2" runat="server" Text='<%# Bind("c_Energy_Market") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Electric_Meter:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Electric_MeterTextBox2" runat="server" Text='<%# Bind("c_Primary_Electric_Meter") %>' MaxLength="30" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Telecom_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Telecom_CompanyTextBox2" runat="server" Text='<%# Bind("c_Telecom_Company") %>' MaxLength="40" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Primary_Telco_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Telco_Acct_NumTextBox2" runat="server" Text='<%# Bind("c_Primary_Telco_Acct_Num") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
								</asp:Table>
                            </asp:TableCell><asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">SUMMARY</div>
                                <asp:Table ID="tblInsertInfo" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">SUMMARY</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow> --%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_DevicesTextBox2" runat="server" Text='<%# Bind("c_Est_Devices") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Bldg_CountTextBox2" runat="server" Text='<%# Bind("c_Est_Bldg_Count") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Square_FtTextBox2" runat="server" Text='<%# Bind("c_Est_Square_Ft") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Est_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Monthly_kWhTextBox2" runat="server" Text='<%# Bind("c_Est_Monthly_kWh") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Sold_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Sold_DevicesTextBox2" runat="server" Text='<%# Bind("c_Sold_Devices") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Bldg_CountTextBox2" runat="server" Text='<%# Bind("c_Actual_Bldg_Count") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Square_FtTextBox2" runat="server" Text='<%# Bind("c_Actual_Square_Ft") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Actual_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Monthly_kWhTextBox2" runat="server" Text='<%# Bind("c_Actual_Monthly_kWh") %>' MaxLength="20" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Exosite_Portal_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Exosite_Portal_IDTextBox2" runat="server" Text='<%# Bind("c_Exosite_Portal_ID") %>' MaxLength="10" /></asp:TableCell></asp:TableRow>
							       <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Tax_Exempt:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Tax_ExemptTextBox2" runat="server" Text='<%# Bind("c_Tax_Exempt") %>' MaxLength="1" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell></asp:TableRow></asp:Table>
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Table ID="tblItemCust" runat="server" HorizontalAlign="Left" Width="600px" >
                        <asp:TableRow runat="server"> 
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">BUSINESS INFORMATION</div>
                                <asp:Table ID="tblItemCustIno" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BUSINESS INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("c_Cust_ID") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Master_Cust_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("c_Master_Cust_ID") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Branch_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("c_Branch_No") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Division_No:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("c_Division_No") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Legal_Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("c_Legal_Name") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_DBA:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("c_DBA") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_EIN:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("c_EIN") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Prospect_Client:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("c_Prospect_Client") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Status:</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("c_Status") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell><asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">CONTACT INFORMATION</div>
                                <asp:Table ID="tblItemCont" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">CONTACT INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Main_Phone:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Main_PhoneTextBox1" runat="server" Text='<%# Bind("c_Main_Phone") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Main_Fax:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Main_FaxTextBox1" runat="server" Text='<%# Bind("c_Main_Fax") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Website:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_WebsiteTextBox1" runat="server" Text='<%# Bind("c_Website") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Account_OwnerTextBox1" runat="server" Text='<%# Bind("c_Account_Owner") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_External_Account_Owner:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_External_Account_OwnerTextBox1" runat="server" Text='<%# Bind("c_External_Account_Owner") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Lead_Source:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Lead_SourceTextBox1" runat="server" Text='<%# Bind("c_Lead_Source") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"> 
                            <asp:TableCell  VerticalAlign ="Top" Width="300px" >
                                <div class="header">CORPORATE ADDRESS</div>
                                <asp:Table ID="tblItemCorpAddr" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">CORPORATE ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_Address_1:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_1TextBox1" runat="server" Text='<%# Bind("c_Corp_Address_1") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_Address_2TextBox1" runat="server" Text='<%# Bind("c_Corp_Address_2") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CityTextBox1" runat="server" Text='<%# Bind("c_Corp_City") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_StateTextBox1" runat="server" Text='<%# Bind("c_Corp_State") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountyTextBox1" runat="server" Text='<%# Bind("c_Corp_County") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_CountryTextBox1" runat="server" Text='<%# Bind("c_Corp_Country") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Corp_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Corp_ZipTextBox1" runat="server" Text='<%# Bind("c_Corp_Zip") %>' Enabled="false" /></asp:TableCell></asp:TableRow>                                    
                                </asp:Table>
                            </asp:TableCell><asp:TableCell  VerticalAlign ="Top" Width="300px" >
                                <div class="header">BILLING ADDRESS</div>
                                 <asp:Table ID="tblBillingAddr" runat="server" HorizontalAlign="Center"  CellPadding="15" >
                                    <%--<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">BILLING ADDRESS</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>--%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_Address_1:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_1TextBox1" runat="server" Text='<%# Bind("c_Billing_Address_1") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_Address_2:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_Address_2TextBox1" runat="server" Text='<%# Bind("c_Billing_Address_2") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_City:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CityTextBox1" runat="server" Text='<%# Bind("c_Billing_City") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_State:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_StateTextBox1" runat="server" Text='<%# Bind("c_Billing_State") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_County:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountyTextBox1" runat="server" Text='<%# Bind("c_Billing_County") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_CountryTextBox1" runat="server" Text='<%# Bind("c_Billing_Country") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Billing_Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Billing_ZipTextBox1" runat="server" Text='<%# Bind("c_Billing_Zip") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
                            </asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"> 
                            <asp:TableCell  VerticalAlign ="Top" Width="300px" >
                                <div class="header">UTILITY INFORMATION</div>
                                <asp:Table ID="tblItemUtility" runat="server" HorizontalAlign="Center"  CellPadding="15" >
									<%-- <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">UTILITY INFORMATION</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow> --%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Est_kWh_cost:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_kWh_costTextBox1" runat="server" Text='<%# Bind("c_Est_kWh_cost") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Utility_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Utility_CompanyTextBox1" runat="server" Text='<%# Bind("c_Utility_Company") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Primary_Utility_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Utility_Acct_NumTextBox1" runat="server" Text='<%# Bind("c_Primary_Utility_Acct_Num") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Transmission_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Transmission_CompanyTextBox1" runat="server" Text='<%# Bind("c_Transmission_Company") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Electric_Contract_Start_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_Start_DateTextBox1" runat="server" Text='<%# Bind("c_Electric_Contract_Start_Date") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Electric_Contract_End_Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Electric_Contract_End_DateTextBox1" runat="server" Text='<%# Bind("c_Electric_Contract_End_Date") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Energy_Market:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Energy_MarketTextBox1" runat="server" Text='<%# Bind("c_Energy_Market") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Primary_Electric_Meter:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Electric_MeterTextBox1" runat="server" Text='<%# Bind("c_Primary_Electric_Meter") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Telecom_Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Telecom_CompanyTextBox1" runat="server" Text='<%# Bind("c_Telecom_Company") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Primary_Telco_Acct_Num:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Primary_Telco_Acct_NumTextBox1" runat="server" Text='<%# Bind("c_Primary_Telco_Acct_Num") %>' Enabled="false" /></asp:TableCell></asp:TableRow>								
								</asp:Table>
                            </asp:TableCell>
                            <asp:TableCell  VerticalAlign ="Top" Width="300px" >
                                 <div class="header">SUMMARY</div>
                                 <asp:Table ID="tblItemInfo" runat="server" HorizontalAlign="Center" CellPadding="15" >
                                    <%-- <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" ><div class="header">SUMMARY</div></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow> --%>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Est_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_DevicesTextBox1" runat="server" Text='<%# Bind("c_Est_Devices") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Est_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Bldg_CountTextBox1" runat="server" Text='<%# Bind("c_Est_Bldg_Count") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Est_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Square_FtTextBox1" runat="server" Text='<%# Bind("c_Est_Square_Ft") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Est_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Est_Monthly_kWhTextBox1" runat="server" Text='<%# Bind("c_Est_Monthly_kWh") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Sold_Devices:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Sold_DevicesTextBox1" runat="server" Text='<%# Bind("c_Sold_Devices") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Actual_Bldg_Count:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Bldg_CountTextBox1" runat="server" Text='<%# Bind("c_Actual_Bldg_Count") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Actual_Square_Ft:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Square_FtTextBox1" runat="server" Text='<%# Bind("c_Actual_Square_Ft") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Actual_Monthly_kWh:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Actual_Monthly_kWhTextBox1" runat="server" Text='<%# Bind("c_Actual_Monthly_kWh") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >c_Exosite_Portal_ID:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Exosite_Portal_IDTextBox1" runat="server" Text='<%# Bind("c_Exosite_Portal_ID") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right"  >c_Tax_Exempt:</asp:TableCell><asp:TableCell><asp:TextBox ID="c_Tax_ExemptTextBox1" runat="server" Text='<%# Bind("c_Tax_Exempt") %>' MaxLength="1" Enabled="false" /></asp:TableCell></asp:TableRow>
                                 </asp:Table>
                            </asp:TableCell></asp:TableRow></asp:Table>
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
                    
            <asp:ObjectDataSource ID="odsCust" runat="server" DeleteMethod="Delete" InsertMethod="InsertNewCust" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy_c_seq_id" TypeName="BossControlsWeb2.Boss_DBTableAdapters.CustomerTableAdapter" UpdateMethod="Update" OnInserted ="odsCust_Inserted" OnSelecting="odsCust_Selecting"><DeleteParameters>
                    <asp:Parameter Name="Original_c_seq_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="c_Cust_ID" Type="String" />
                    <asp:Parameter Name="c_Master_Cust_ID" Type="String" />
                    <asp:Parameter Name="c_Branch_No" Type="String" />
                    <asp:Parameter Name="c_Division_No" Type="String" />
                    <asp:Parameter Name="c_Legal_Name" Type="String" />
                    <asp:Parameter Name="c_DBA" Type="String" />
                    <asp:Parameter Name="c_EIN" Type="String" />
                    <asp:Parameter Name="c_Prospect_Client" Type="String" />
                    <asp:Parameter Name="c_Status" Type="String" />
                    <asp:Parameter Name="c_Corp_Address_1" Type="String" />
                    <asp:Parameter Name="c_Corp_Address_2" Type="String" />
                    <asp:Parameter Name="c_Corp_City" Type="String" />
                    <asp:Parameter Name="c_Corp_State" Type="String" />
                    <asp:Parameter Name="c_Corp_County" Type="String" />
                    <asp:Parameter Name="c_Corp_Country" Type="String" />
                    <asp:Parameter Name="c_Corp_Zip" Type="String" />
                    <asp:Parameter Name="c_Main_Phone" Type="String" />
                    <asp:Parameter Name="c_Main_Fax" Type="String" />
                    <asp:Parameter Name="c_Website" Type="String" />
                    <asp:Parameter Name="c_Billing_Address_1" Type="String" />
                    <asp:Parameter Name="c_Billing_Address_2" Type="String" />
                    <asp:Parameter Name="c_Billing_City" Type="String" />
                    <asp:Parameter Name="c_Billing_State" Type="String" />
                    <asp:Parameter Name="c_Billing_County" Type="String" />
                    <asp:Parameter Name="c_Billing_Country" Type="String" />
                    <asp:Parameter Name="c_Billing_Zip" Type="String" />
                    <asp:Parameter Name="c_Account_Owner" Type="String" />
                    <asp:Parameter Name="c_External_Account_Owner" Type="String" />
                    <asp:Parameter Name="c_Lead_Source" Type="String" />
                    <asp:Parameter Name="c_Est_kWh_cost" Type="Decimal" />
                    <asp:Parameter Name="c_Utility_Company" Type="String" />
                    <asp:Parameter Name="c_Primary_Utility_Acct_Num" Type="String" />
                    <asp:Parameter Name="c_Transmission_Company" Type="String" />
                    <asp:Parameter Name="c_Electric_Contract_Start_Date" Type="DateTime" />
                    <asp:Parameter Name="c_Electric_Contract_End_Date" Type="DateTime" />
                    <asp:Parameter Name="c_Energy_Market" Type="String" />
                    <asp:Parameter Name="c_Primary_Electric_Meter" Type="String" />
                    <asp:Parameter Name="c_Telecom_Company" Type="String" />
                    <asp:Parameter Name="c_Primary_Telco_Acct_Num" Type="String" />
                    <asp:Parameter Name="c_Est_Devices" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Bldg_Count" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Square_Ft" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Monthly_kWh" Type="Decimal" />
                    <asp:Parameter Name="c_Sold_Devices" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Bldg_Count" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Square_Ft" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Monthly_kWh" Type="Decimal" />
                    <asp:Parameter Name="c_Tax_Exempt" Type="Boolean" />
                    <asp:Parameter Name="c_Exosite_Portal_ID" Type="String" />
                    <asp:Parameter Name="c_Exosite_Portal_RID" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="c_seq_id" QueryStringField="c_seq_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="c_Cust_ID" Type="String" />
                    <asp:Parameter Name="c_Master_Cust_ID" Type="String" />
                    <asp:Parameter Name="c_Branch_No" Type="String" />
                    <asp:Parameter Name="c_Division_No" Type="String" />
                    <asp:Parameter Name="c_Legal_Name" Type="String" />
                    <asp:Parameter Name="c_DBA" Type="String" />
                    <asp:Parameter Name="c_EIN" Type="String" />
                    <asp:Parameter Name="c_Prospect_Client" Type="String" />
                    <asp:Parameter Name="c_Status" Type="String" />
                    <asp:Parameter Name="c_Corp_Address_1" Type="String" />
                    <asp:Parameter Name="c_Corp_Address_2" Type="String" />
                    <asp:Parameter Name="c_Corp_City" Type="String" />
                    <asp:Parameter Name="c_Corp_State" Type="String" />
                    <asp:Parameter Name="c_Corp_County" Type="String" />
                    <asp:Parameter Name="c_Corp_Country" Type="String" />
                    <asp:Parameter Name="c_Corp_Zip" Type="String" />
                    <asp:Parameter Name="c_Main_Phone" Type="String" />
                    <asp:Parameter Name="c_Main_Fax" Type="String" />
                    <asp:Parameter Name="c_Website" Type="String" />
                    <asp:Parameter Name="c_Billing_Address_1" Type="String" />
                    <asp:Parameter Name="c_Billing_Address_2" Type="String" />
                    <asp:Parameter Name="c_Billing_City" Type="String" />
                    <asp:Parameter Name="c_Billing_State" Type="String" />
                    <asp:Parameter Name="c_Billing_County" Type="String" />
                    <asp:Parameter Name="c_Billing_Country" Type="String" />
                    <asp:Parameter Name="c_Billing_Zip" Type="String" />
                    <asp:Parameter Name="c_Account_Owner" Type="String" />
                    <asp:Parameter Name="c_External_Account_Owner" Type="String" />
                    <asp:Parameter Name="c_Lead_Source" Type="String" />
                    <asp:Parameter Name="c_Est_kWh_cost" Type="Decimal" />
                    <asp:Parameter Name="c_Utility_Company" Type="String" />
                    <asp:Parameter Name="c_Primary_Utility_Acct_Num" Type="String" />
                    <asp:Parameter Name="c_Transmission_Company" Type="String" />
                    <asp:Parameter Name="c_Electric_Contract_Start_Date" Type="DateTime" />
                    <asp:Parameter Name="c_Electric_Contract_End_Date" Type="DateTime" />
                    <asp:Parameter Name="c_Energy_Market" Type="String" />
                    <asp:Parameter Name="c_Primary_Electric_Meter" Type="String" />
                    <asp:Parameter Name="c_Telecom_Company" Type="String" />
                    <asp:Parameter Name="c_Primary_Telco_Acct_Num" Type="String" />
                    <asp:Parameter Name="c_Est_Devices" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Bldg_Count" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Square_Ft" Type="Decimal" />
                    <asp:Parameter Name="c_Est_Monthly_kWh" Type="Decimal" />
                    <asp:Parameter Name="c_Sold_Devices" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Bldg_Count" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Square_Ft" Type="Decimal" />
                    <asp:Parameter Name="c_Actual_Monthly_kWh" Type="Decimal" />
                    <asp:Parameter Name="c_Tax_Exempt" Type="Boolean" />
                    <asp:Parameter Name="c_Exosite_Portal_ID" Type="String" />
                    <asp:Parameter Name="c_Exosite_Portal_RID" Type="String" />
                    <asp:Parameter Name="Original_c_seq_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
        <script type = "text/javascript">
                $(document).ready(function () {
                    $('#<%=gvContacts.ClientID %>').Scrollable({
                        ScrollHeight: 400
                    });
                });
        </script>
        <br />
            Contact <br /><asp:GridView ID="gvContacts" runat="server" AutoGenerateColumns="False" DataKeyNames="cc_seq_id" DataSourceID="odsContacts" ShowHeaderWhenEmpty="true" AllowSorting="True" OnPreRender="gvContacts_PreRender">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="cc_Type" HeaderText="Type" SortExpression="cc_Type" />
                    <asp:BoundField DataField="cc_Prefix" HeaderText="Prefix" SortExpression="cc_Prefix" />
                    <asp:BoundField DataField="cc_Fname" HeaderText="Fname" SortExpression="cc_Fname" />
                    <asp:BoundField DataField="cc_Lname" HeaderText="Lname" SortExpression="cc_Lname" />
                    <asp:BoundField DataField="cc_MI" HeaderText="MI" SortExpression="cc_MI" />
                    <asp:BoundField DataField="cc_Nickname" HeaderText="Nickname" SortExpression="cc_Nickname" />
                    <asp:BoundField DataField="cc_Suffix" HeaderText="Suffix" SortExpression="cc_Suffix" />
                    <asp:BoundField DataField="cc_Title" HeaderText="Title" SortExpression="cc_Title" />
                    <asp:BoundField DataField="cc_Email" HeaderText="Email" SortExpression="cc_Email" />
                    <asp:BoundField DataField="cc_Mobile_Phone" HeaderText="Mobile_Phone" SortExpression="cc_Mobile_Phone" />
                    <asp:BoundField DataField="cc_Phone" HeaderText="Phone" SortExpression="cc_Phone" />
                    <asp:BoundField DataField="cc_Company" HeaderText="Company" SortExpression="cc_Company" />
                    <asp:BoundField DataField="cc_Address" HeaderText="Address" SortExpression="cc_Address" />
                    <asp:BoundField DataField="cc_City" HeaderText="City" SortExpression="cc_City" />
                    <asp:BoundField DataField="cc_State" HeaderText="State" SortExpression="cc_State" />
                    <asp:BoundField DataField="cc_Zip" HeaderText="Zip" SortExpression="cc_Zip" />
                    <asp:BoundField DataField="cc_Country" HeaderText="Country" SortExpression="cc_Country" />
                    <asp:BoundField DataField="cc_Account" HeaderText="Account" SortExpression="cc_Account" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="odsContacts" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByc_seq_id" TypeName="BossControlsWeb2.Boss_DBTableAdapters.Customer_ContactTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_cc_seq_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cc_Type" Type="String" />
                    <asp:Parameter Name="cc_Prefix" Type="String" />
                    <asp:Parameter Name="cc_Fname" Type="String" />
                    <asp:Parameter Name="cc_Lname" Type="String" />
                    <asp:Parameter Name="cc_MI" Type="String" />
                    <asp:Parameter Name="cc_Nickname" Type="String" />
                    <asp:Parameter Name="cc_Suffix" Type="String" />
                    <asp:Parameter Name="cc_Title" Type="String" />
                    <asp:Parameter Name="cc_Email" Type="String" />
                    <asp:Parameter Name="cc_Mobile_Phone" Type="String" />
                    <asp:Parameter Name="cc_Phone" Type="String" />
                    <asp:Parameter Name="cc_Company" Type="String" />
                    <asp:Parameter Name="cc_Address" Type="String" />
                    <asp:Parameter Name="cc_City" Type="String" />
                    <asp:Parameter Name="cc_State" Type="String" />
                    <asp:Parameter Name="cc_Zip" Type="String" />
                    <asp:Parameter Name="cc_Country" Type="String" />
                    <asp:Parameter Name="cc_Account" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="cc_c_seq_id" QueryStringField="c_seq_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cc_Type" Type="String" />
                    <asp:Parameter Name="cc_Prefix" Type="String" />
                    <asp:Parameter Name="cc_Fname" Type="String" />
                    <asp:Parameter Name="cc_Lname" Type="String" />
                    <asp:Parameter Name="cc_MI" Type="String" />
                    <asp:Parameter Name="cc_Nickname" Type="String" />
                    <asp:Parameter Name="cc_Suffix" Type="String" />
                    <asp:Parameter Name="cc_Title" Type="String" />
                    <asp:Parameter Name="cc_Email" Type="String" />
                    <asp:Parameter Name="cc_Mobile_Phone" Type="String" />
                    <asp:Parameter Name="cc_Phone" Type="String" />
                    <asp:Parameter Name="cc_Company" Type="String" />
                    <asp:Parameter Name="cc_Address" Type="String" />
                    <asp:Parameter Name="cc_City" Type="String" />
                    <asp:Parameter Name="cc_State" Type="String" />
                    <asp:Parameter Name="cc_Zip" Type="String" />
                    <asp:Parameter Name="cc_Country" Type="String" />
                    <asp:Parameter Name="cc_Account" Type="String" />
                    <asp:Parameter Name="Original_cc_seq_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:FormView ID="fvComtact" runat="server" DataSourceID="odsComtact" DataKeyNames="cc_seq_id" ShowHeaderWhenEmpty="true" OnDataBound ="fvComtact_OnDataBound" OnItemCommand ="fvComtact_ItemCommand" Width="754px" >
                <EditItemTemplate>
                    <asp:Table ID="tblEditContact" runat="server" HorizontalAlign="Left" Width="600px">
                        <asp:TableRow runat="server">
                            <asp:TableCell VerticalAlign ="Top" Width="300px">
                                <div class="header">Contact</div>
                                <asp:Table ID="tblItemContactIno" runat="server" HorizontalAlign="Center" >	
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >cc_c_seq_id:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_c_seq_id2" runat="server" Text='<%# Bind("cc_c_seq_id") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Type:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Type2" runat="server" Text='<%# Bind("cc_Type") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Prefix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Prefix2" runat="server" Text='<%# Bind("cc_Prefix") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >First Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Fname2" runat="server" Text='<%# Bind("cc_Fname") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Last Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Lname2" runat="server" Text='<%# Bind("cc_Lname") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >MI:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_MI2" runat="server" Text='<%# Bind("cc_MI") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Suffix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Suffix2" runat="server" Text='<%# Bind("cc_Suffix") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Email:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Email2" runat="server" Text='<%# Bind("cc_Email") %>' /></asp:TableCell></asp:TableRow>                                   
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Mobile Phone:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Mobile_Phone2" runat="server" Text='<%# Bind("cc_Mobile_Phone") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Company2" runat="server" Text='<%# Bind("cc_Company") %>' /></asp:TableCell></asp:TableRow>
								</asp:Table>
							</asp:TableCell>
							<asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">Address</div>
								<asp:Table ID="Table2" runat="server" HorizontalAlign="Center" >
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Address:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Address2" runat="server" Text='<%# Bind("cc_Address") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >City:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_City2" runat="server" Text='<%# Bind("cc_City") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >State:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_State2" runat="server" Text='<%# Bind("cc_State") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Zip2" runat="server" Text='<%# Bind("cc_Zip") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Country2" runat="server" Text='<%# Bind("cc_Country") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Account:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Account2" runat="server" Text='<%# Bind("cc_Account") %>' /></asp:TableCell></asp:TableRow>
                                </asp:Table>
							</asp:TableCell>
						</asp:TableRow>	
					</asp:Table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Table ID="tblInsertContact" runat="server" HorizontalAlign="Left" Width="600px" >
                        <asp:TableRow runat="server">
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">Contact</div>
                                <asp:Table ID="tblItemContactIno" runat="server" HorizontalAlign="Center">	
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >cc_c_seq_id:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_c_seq_id3" runat="server" Text='<%# Bind("cc_c_seq_id") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Type:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Type3" runat="server" Text='<%# Bind("cc_Type") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Prefix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Prefix3" runat="server" Text='<%# Bind("cc_Prefix") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >First Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Fname3" runat="server" Text='<%# Bind("cc_Fname") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Last Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Lname3" runat="server" Text='<%# Bind("cc_Lname") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >MI:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_MI3" runat="server" Text='<%# Bind("cc_MI") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Suffix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Suffix3" runat="server" Text='<%# Bind("cc_Suffix") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Email:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Email3" runat="server" Text='<%# Bind("cc_Email") %>' /></asp:TableCell></asp:TableRow>                                   
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Mobile Phone:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Mobile_Phone3" runat="server" Text='<%# Bind("cc_Mobile_Phone") %>' /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Company3" runat="server" Text='<%# Bind("cc_Company") %>' /></asp:TableCell></asp:TableRow>
								</asp:Table>
							</asp:TableCell>
							<asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">Address</div>
								<asp:Table ID="Table3" runat="server" HorizontalAlign="Center" >
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Address:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Address3" runat="server" Text='<%# Bind("cc_Address") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >City:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_City3" runat="server" Text='<%# Bind("cc_City") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >State:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_State3" runat="server" Text='<%# Bind("cc_State") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Zip3" runat="server" Text='<%# Bind("cc_Zip") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Country3" runat="server" Text='<%# Bind("cc_Country") %>' /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Account:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Account3" runat="server" Text='<%# Bind("cc_Account") %>' /></asp:TableCell></asp:TableRow>
                                </asp:Table>
							</asp:TableCell>
						</asp:TableRow>	
					</asp:Table>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Table ID="tblItemContact" runat="server" HorizontalAlign="Left" Width="600px" >
                        <asp:TableRow runat="server">
                            <asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">Contact</div>
                                <asp:Table ID="tblItemContactIno" runat="server" HorizontalAlign="Center">	
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >cc_c_seq_id:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_c_seq_id1" runat="server" Text='<%# Bind("cc_c_seq_id") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Type:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Type1" runat="server" Text='<%# Bind("cc_Type") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Prefix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Prefix1" runat="server" Text='<%# Bind("cc_Prefix") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >First Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Fname1" runat="server" Text='<%# Bind("cc_Fname") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Last Name:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Lname1" runat="server" Text='<%# Bind("cc_Lname") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >MI:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_MI1" runat="server" Text='<%# Bind("cc_MI") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Suffix:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Suffix1" runat="server" Text='<%# Bind("cc_Suffix") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Email:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Email1" runat="server" Text='<%# Bind("cc_Email") %>' Enabled="false" /></asp:TableCell></asp:TableRow>                                   
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Mobile Phone:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Mobile_Phone1" runat="server" Text='<%# Bind("cc_Mobile_Phone") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Company:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Company1" runat="server" Text='<%# Bind("cc_Company") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
								</asp:Table>
							</asp:TableCell>
							<asp:TableCell VerticalAlign ="Top" Width="300px" >
                                <div class="header">Address</div>
								<asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
									<asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Address:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Address1" runat="server" Text='<%# Bind("cc_Address") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >City:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_City1" runat="server" Text='<%# Bind("cc_City") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >State:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_State1" runat="server" Text='<%# Bind("cc_State") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Zip:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Zip1" runat="server" Text='<%# Bind("cc_Zip") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Country:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Country1" runat="server" Text='<%# Bind("cc_Country") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                    <asp:TableRow runat="server"><asp:TableCell HorizontalAlign="Right" >Account:</asp:TableCell><asp:TableCell><asp:TextBox ID="tbcc_Account1" runat="server" Text='<%# Bind("cc_Account") %>' Enabled="false" /></asp:TableCell></asp:TableRow>
                                </asp:Table>
							</asp:TableCell>
						</asp:TableRow>	
					</asp:Table>
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></div>
                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="odsComtact" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByc_seq_id" TypeName="BossControlsWeb2.Boss_DBTableAdapters.Customer_ContactTableAdapter" UpdateMethod="Update" OnInserted ="odsComtact_Inserted" >
                <DeleteParameters>
                    <asp:Parameter Name="Original_cc_seq_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cc_c_seq_id" Type="Int32" />
                    <asp:Parameter Name="cc_Type" Type="String" />
                    <asp:Parameter Name="cc_Prefix" Type="String" />
                    <asp:Parameter Name="cc_Fname" Type="String" />
                    <asp:Parameter Name="cc_Lname" Type="String" />
                    <asp:Parameter Name="cc_MI" Type="String" />
                    <asp:Parameter Name="cc_Nickname" Type="String" />
                    <asp:Parameter Name="cc_Suffix" Type="String" />
                    <asp:Parameter Name="cc_Title" Type="String" />
                    <asp:Parameter Name="cc_Email" Type="String" />
                    <asp:Parameter Name="cc_Mobile_Phone" Type="String" />
                    <asp:Parameter Name="cc_Phone" Type="String" />
                    <asp:Parameter Name="cc_Company" Type="String" />
                    <asp:Parameter Name="cc_Address" Type="String" />
                    <asp:Parameter Name="cc_City" Type="String" />
                    <asp:Parameter Name="cc_State" Type="String" />
                    <asp:Parameter Name="cc_Zip" Type="String" />
                    <asp:Parameter Name="cc_Country" Type="String" />
                    <asp:Parameter Name="cc_Account" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="cc_c_seq_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cc_c_seq_id" Type="Int32" />
                    <asp:Parameter Name="cc_Type" Type="String" />
                    <asp:Parameter Name="cc_Prefix" Type="String" />
                    <asp:Parameter Name="cc_Fname" Type="String" />
                    <asp:Parameter Name="cc_Lname" Type="String" />
                    <asp:Parameter Name="cc_MI" Type="String" />
                    <asp:Parameter Name="cc_Nickname" Type="String" />
                    <asp:Parameter Name="cc_Suffix" Type="String" />
                    <asp:Parameter Name="cc_Title" Type="String" />
                    <asp:Parameter Name="cc_Email" Type="String" />
                    <asp:Parameter Name="cc_Mobile_Phone" Type="String" />
                    <asp:Parameter Name="cc_Phone" Type="String" />
                    <asp:Parameter Name="cc_Company" Type="String" />
                    <asp:Parameter Name="cc_Address" Type="String" />
                    <asp:Parameter Name="cc_City" Type="String" />
                    <asp:Parameter Name="cc_State" Type="String" />
                    <asp:Parameter Name="cc_Zip" Type="String" />
                    <asp:Parameter Name="cc_Country" Type="String" />
                    <asp:Parameter Name="cc_Account" Type="String" />
                    <asp:Parameter Name="Original_cc_seq_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />

            <br />
            <br />

        </asp:View>
        <asp:View ID="View3" runat="server">

         <br />
            User
        <br />
                <script type = "text/javascript">
                        $(document).ready(function () {
                            $('#<%=gvUser.ClientID %>').Scrollable({
                        ScrollHeight: 400
                            });
                        });
                </script>
                <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" DataKeyNames="u_Seq_ID" DataSourceID="odsUsers" AllowSorting="True" OnPreRender="gvUser_PreRender" ShowHeaderWhenEmpty="true" >
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="u_Seq_ID" HeaderText="u_Seq_ID" InsertVisible="False" ReadOnly="True" SortExpression="u_Seq_ID" />
                    <asp:BoundField DataField="u_First_Name" HeaderText="First Name" SortExpression="u_First_Name" />
                    <asp:BoundField DataField="u_Last_Name" HeaderText="Last Name" SortExpression="u_Last_Name" />
                    <asp:BoundField DataField="u_Email" HeaderText="Email" SortExpression="u_Email" />
                    <asp:BoundField DataField="u_Password" HeaderText="Password" SortExpression="u_Password" />
                    <asp:BoundField DataField="u_Password_date" HeaderText="Password_date" SortExpression="u_Password_date" />
                    <asp:CheckBoxField DataField="u_Active" HeaderText="Active" SortExpression="u_Active" />
                    <asp:CheckBoxField DataField="u_Is_Master_Customer" HeaderText="Is Master Customer" SortExpression="u_Is_Master_Customer" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="odsUsers" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByc_seq_ID" TypeName="BossControlsWeb2.Boss_DBTableAdapters.UserTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_u_Seq_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="u_First_Name" Type="String" />
                    <asp:Parameter Name="u_Last_Name" Type="String" />
                    <asp:Parameter Name="u_Email" Type="String" />
                    <asp:Parameter Name="u_Password" Type="String" />
                    <asp:Parameter Name="u_Password_date" Type="DateTime" />
                    <asp:Parameter Name="u_Active" Type="Boolean" />
                    <asp:Parameter Name="u_Is_Master_Customer" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="c_seq_ID" Name="c_seq_ID" QueryStringField="c_seq_ID" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="u_First_Name" Type="String" />
                    <asp:Parameter Name="u_Last_Name" Type="String" />
                    <asp:Parameter Name="u_Email" Type="String" />
                    <asp:Parameter Name="u_Password" Type="String" />
                    <asp:Parameter Name="u_Password_date" Type="DateTime" />
                    <asp:Parameter Name="u_Active" Type="Boolean" />
                    <asp:Parameter Name="u_Is_Master_Customer" Type="Boolean" />
                    <asp:Parameter Name="Original_u_Seq_ID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="u_Seq_ID" DataSourceID="odsUser" DefaultMode="Insert">
                <%-- 
                <EditItemTemplate>
                    u_Seq_ID:
                    <asp:Label ID="u_Seq_IDLabel1" runat="server" Text='<%# Eval("u_Seq_ID") %>' />
                    <br />
                    u_First_Name:
                    <asp:TextBox ID="u_First_NameTextBox" runat="server" Text='<%# Bind("u_First_Name") %>' />
                    <br />
                    u_Last_Name:
                    <asp:TextBox ID="u_Last_NameTextBox" runat="server" Text='<%# Bind("u_Last_Name") %>' />
                    <br />
                    u_Email:
                    <asp:TextBox ID="u_EmailTextBox" runat="server" Text='<%# Bind("u_Email") %>' />
                    <br />
                    u_Password:
                    <asp:TextBox ID="u_PasswordTextBox" runat="server" Text='<%# Bind("u_Password") %>' />
                    <br />
                    u_Password_date:
                    <asp:TextBox ID="u_Password_dateTextBox" runat="server" Text='<%# Bind("u_Password_date") %>' />
                    <br />
                    u_Active:
                    <asp:CheckBox ID="u_ActiveCheckBox" runat="server" Checked='<%# Bind("u_Active") %>' />
                    <br />
                    u_Is_Master_Customer:
                    <asp:CheckBox ID="u_Is_Master_CustomerCheckBox" runat="server" Checked='<%# Bind("u_Is_Master_Customer") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>--%>
                <InsertItemTemplate>
                    u_First_Name:
                    <asp:TextBox ID="u_First_NameTextBox" runat="server" Text='<%# Bind("u_First_Name") %>' />
                    <br />
                    u_Last_Name:
                    <asp:TextBox ID="u_Last_NameTextBox" runat="server" Text='<%# Bind("u_Last_Name") %>' />
                    <br />
                    u_Email:
                    <asp:TextBox ID="u_EmailTextBox" runat="server" Text='<%# Bind("u_Email") %>' />
                    <br />
                    u_Password:
                    <asp:TextBox ID="u_PasswordTextBox" runat="server" Text='<%# Bind("u_Password") %>' />
                    <br />
                    u_Password_date:
                    <asp:TextBox ID="u_Password_dateTextBox" runat="server" Text='<%# Bind("u_Password_date") %>' />
                    <br />
                    u_Active:
                    <asp:CheckBox ID="u_ActiveCheckBox" runat="server" Checked='<%# Bind("u_Active") %>' />
                    <br />
                    u_Is_Master_Customer:
                    <asp:CheckBox ID="u_Is_Master_CustomerCheckBox" runat="server" Checked='<%# Bind("u_Is_Master_Customer") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <%-- 
                <ItemTemplate>
                    u_Seq_ID:
                    <asp:Label ID="u_Seq_IDLabel" runat="server" Text='<%# Eval("u_Seq_ID") %>' />
                    <br />
                    u_First_Name:
                    <asp:Label ID="u_First_NameLabel" runat="server" Text='<%# Bind("u_First_Name") %>' />
                    <br />
                    u_Last_Name:
                    <asp:Label ID="u_Last_NameLabel" runat="server" Text='<%# Bind("u_Last_Name") %>' />
                    <br />
                    u_Email:
                    <asp:Label ID="u_EmailLabel" runat="server" Text='<%# Bind("u_Email") %>' />
                    <br />
                    u_Password:
                    <asp:Label ID="u_PasswordLabel" runat="server" Text='<%# Bind("u_Password") %>' />
                    <br />
                    u_Password_date:
                    <asp:Label ID="u_Password_dateLabel" runat="server" Text='<%# Bind("u_Password_date") %>' />
                    <br />
                    u_Active:
                    <asp:CheckBox ID="u_ActiveCheckBox" runat="server" Checked='<%# Bind("u_Active") %>' Enabled="false" />
                    <br />
                    u_Is_Master_Customer:
                    <asp:CheckBox ID="u_Is_Master_CustomerCheckBox" runat="server" Checked='<%# Bind("u_Is_Master_Customer") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>--%>
            </asp:FormView>
            <asp:ObjectDataSource ID="odsUser" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BossControlsWeb2.Boss_DBTableAdapters.UserTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_u_Seq_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="u_First_Name" Type="String" />
                    <asp:Parameter Name="u_Last_Name" Type="String" />
                    <asp:Parameter Name="u_Email" Type="String" />
                    <asp:Parameter Name="u_Password" Type="String" />
                    <asp:Parameter Name="u_Password_date" Type="DateTime" />
                    <asp:Parameter Name="u_Active" Type="Boolean" />
                    <asp:Parameter Name="u_Is_Master_Customer" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="u_First_Name" Type="String" />
                    <asp:Parameter Name="u_Last_Name" Type="String" />
                    <asp:Parameter Name="u_Email" Type="String" />
                    <asp:Parameter Name="u_Password" Type="String" />
                    <asp:Parameter Name="u_Password_date" Type="DateTime" />
                    <asp:Parameter Name="u_Active" Type="Boolean" />
                    <asp:Parameter Name="u_Is_Master_Customer" Type="Boolean" />
                    <asp:Parameter Name="Original_u_Seq_ID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />

        </asp:View>
        <asp:View ID="View4" runat="server">
        <br />
        Devices
        <br />
        <div class="header">Firmware</div>
        <asp:GridView ID="gvFirmware" runat="server" AutoGenerateColumns="False" DataSourceID="sdsFirmware">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Firmware" HeaderText="Firmware" SortExpression="Firmware" />
                <asp:BoundField DataField="Count" HeaderText="Count" ReadOnly="True" SortExpression="Count" />
            </Columns>
        </asp:GridView>

        <div class="header">Status</div>
        <asp:GridView ID="gvStatus" runat="server" AutoGenerateColumns="False" DataSourceID="sdsStatus">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Count" HeaderText="Count" ReadOnly="True" SortExpression="Count" />
            </Columns>
        </asp:GridView>
        <br />
        <div class="header">Devices</div>
        <script type = "text/javascript">
            $(document).ready(function () {
                $('#<%=GridView2.ClientID %>').Scrollable({
                    ScrollHeight: 800
                });
            });
        </script>        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="sdsDevices"  AllowSorting="True" OnPreRender="GridView2_PreRender"  ShowHeaderWhenEmpty="true" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                <asp:BoundField DataField="Devive Name" HeaderText="Devive Name" SortExpression="Devive Name" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Firmware" HeaderText="Firmware" SortExpression="Firmware" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="AVG 5 Minute Power" HeaderText="AVG 5 Minute Power" SortExpression="AVG 5 Minute Power" />
                <asp:BoundField DataField="AVG Hour Power" HeaderText="AVG Hour Power" SortExpression="AVG Hour Power" />
                <asp:BoundField DataField="AVG Day Power" HeaderText="AVG Day Power" SortExpression="AVG Day Power" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsDevices" runat="server" ConnectionString="<%$ ConnectionStrings:BossDB_TestConnectionString %>" SelectCommand="SELECT 
	d.Serial,
	d.name AS [Devive Name],
	d.model AS [Model],
	f.data_value AS Firmware,
	s.data_value as Status,
	m.data_value as [AVG 5 Minute Power],
	h.data_value [AVG Hour Power],
	d2.data_value AS [AVG Day Power]
FROM
	[dbo].[Atmosphere_Devices] d
	left join
	[dbo].[Atmosphere_Devices_DataSource] f on f.Device_ID = d.Device_ID and f.DataSource_type = 'dev_info'
	left join
	[dbo].[Atmosphere_Devices_DataSource] s on s.Device_ID = d.Device_ID and s.DataSource_type = 'status'
	left join
	[dbo].[Atmosphere_Devices_DataSource] h on h.Device_ID = d.Device_ID and h.DataSource_type = 'avg_pwr_hour'
	left join
	[dbo].[Atmosphere_Devices_DataSource] m on m.Device_ID = d.Device_ID and m.DataSource_type = 'avg_pwr_5min'
	left join
	[dbo].[Atmosphere_Devices_DataSource] d2 on d2.Device_ID = d.Device_ID and d2.DataSource_type = 'avg_pwr_day'
	join [dbo].[Customer] c on d.Portal_ID = c.c_Exosite_Portal_ID
WHERE
    c.c_seq_id = @c_seq_id">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="c_seq_id" Name="c_seq_id" QueryStringField="c_seq_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="sdsStatus" runat="server" ConnectionString="<%$ ConnectionStrings:BossDB_TestConnectionString %>" SelectCommand="SELECT 
	d.model AS Model,
	ds.data_value AS Status,
	count(*) AS [Count]
FROM
	[Atmosphere_Devices_DataSource] ds
	join [dbo].[Atmosphere_Devices] d on ds.Device_ID = d.Device_ID
	join [dbo].[Customer] c on d.Portal_ID = c.c_Exosite_Portal_ID
WHERE 
	[DataSource_type] = 'status' and 
	c.c_seq_id = @c_seq_id
GROUP BY
	d.model,
	ds.data_value">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="c_seq_id" Name="c_seq_id" QueryStringField="c_seq_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="sdsFirmware" runat="server" ConnectionString="<%$ ConnectionStrings:BossDB_TestConnectionString %>" SelectCommand="SELECT 
	d.model AS Model,
	ds.data_value as Firmware,
	count(*) as [Count]
FROM
	[Atmosphere_Devices_DataSource] ds
	join [dbo].[Atmosphere_Devices] d on ds.Device_ID = d.Device_ID 
	join [dbo].[Customer] c on d.Portal_ID = c.c_Exosite_Portal_ID
WHERE 
	[DataSource_type] = 'dev_info' and 
	c.c_seq_id = @c_seq_id
GROUP BY
	d.model,
	ds.data_value">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="c_seq_id" Name="c_seq_id" QueryStringField="c_seq_id" />
                </SelectParameters>
            </asp:SqlDataSource>

        </asp:View>
    </asp:MultiView>
        
</div></asp:Content>