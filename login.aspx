<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <article>
    <div>
    
        Login Page

    </div>

        <div>            
             <label for="username">Username:</label><br/>
             <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
             <br/>
             <label for="password">Password:</label><br/>
             <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
             <br/>
             <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />            
        </div>
    </article>
</asp:Content>

