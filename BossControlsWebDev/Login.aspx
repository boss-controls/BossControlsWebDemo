<%@ Page Title="" Language="C#" MasterPageFile="~/External.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BossControlsWeb2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="auto-style1">
        <div class="auto-style1">
            &nbsp;
            <br />
            <br />
            <div align="center" >
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Welcome to Boss Control Web" CssClass="auto-style4" ForeColor="#0abed3" Font-Bold="true"></asp:Label>
           </div>
            <br />
            <div align="center" >
                <div style="border: medium none #CC0000; padding: 10px; width: 459px; margin-top: 10px; background-color:c; border-radius: 10px;">
                    <br />
                    <br />
                    <div align="right" style="margin-top: 3px;margin-right: 20px;" ><strong>Username</strong>
                        &nbsp;&nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="200"  CssClass="fRight" BorderColor="White"  Height="20px"></asp:TextBox>
                    </div>
                    <br/>
                    <div align="right" style="margin-top: 3px;margin-right: 20px;"><strong>Password</strong> 
                        &nbsp;&nbsp;<asp:TextBox ID="txtPassword" runat="server" Width="200"  CssClass="fRight" Text="" TextMode="Password" BorderColor="White" Height="20px"></asp:TextBox>
                    </div>
                    <br/>
                    <br/>
                        <asp:Button ID="btnLogin" 
                                    Runat="server" 
                                    Text="Log In" 
                                    OnClick="Login_Click" 
                                    BackColor="White" 
                                    CssClass="auto-style5" 
                                    ForeColor="Black" 
                                    Height="35px" 
                                    Width="75px" 
                                    style="border-radius: 5px;border-style:none;position:relative;left:-20px"></asp:Button>
                    <br />
                    <br />
                </div>
            </div>
            <asp:Panel runat="server" ID="pnlError" CssClass="alert alert-danger" Visible="false">
                <asp:Label runat="server" ID="lblError"></asp:Label>
            </asp:Panel>
        </div>
        <asp:CheckBox ID="chkPersist" runat="server" Text="Persist Cookie" Visible="False" />
    </div>
</asp:Content>
