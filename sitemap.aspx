<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sitemap.aspx.cs" Inherits="sitemap" MasterPageFile="~/MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <div>
        <a href="Default.aspx">Home</a> | Sitemap
    </div>

    <div>
        <asp:SiteMapDataSource ID="mySiteMapDataSource" runat="server" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="mySiteMapDataSource" ShowLines="true"></asp:TreeView>
    
    </div>

</asp:Content>