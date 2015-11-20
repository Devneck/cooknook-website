<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" MasterPageFile="MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <div>
        <a href="Default.aspx">Home</a> | Products
    </div>

    <article>
        <h1>Our Products</h1>
        <p>
            <asp:Label ID="Label2" runat="server" Text="You must be logged in to add products to your cart." ForeColor="Red"></asp:Label>
        </p>
        <div>    
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="productNumPK" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True">
                    <HeaderStyle Width="10px" />
                    <ItemStyle Width="10px" HorizontalAlign="Center" />
                    </asp:CommandField>
                    <asp:BoundField DataField="productNumPK" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="productNumPK" >
                    <HeaderStyle Width="20px" />
                    <ItemStyle HorizontalAlign="Center" Width="20px" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="fileName" DataImageUrlFormatString="~/images/{0}">
                        <HeaderStyle Width="40px" />
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="productDesc" HeaderText="Description" SortExpression="productDesc" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" DataFormatString="{0:c}" >
                    <HeaderStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Right" Width="100px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="quantity" Width="40px" Text="1" runat="server"></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle Width="20px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:glover_w14ConnectionString %>" SelectCommand="SELECT [productNumPK], [productDesc], [price], [fileName] FROM [products]"></asp:SqlDataSource>
    
        </div>
        <div id="cart" runat="server">

        </div>
        <div>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="Product ID" />
                    <asp:BoundField HeaderText="Description" />
                    <asp:BoundField HeaderText="Quantity" />
                    <asp:BoundField HeaderText="Price" />
                    <asp:CommandField ButtonType="Button" DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </article>
</asp:Content>