<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cust_verification.aspx.cs" Inherits="cust_verification" MasterPageFile="~/MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <div>
        <a href="Default.aspx">Home</a> | <a href="register.aspx">Register</a> | Confirm
    </div>

    <h2>Verify Your Information</h2>       

    <table id="verifyTable">
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>First Name: </td>
            <td><asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Last Name: </td>
            <td><asp:Label ID="lblLastName" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><asp:Label ID="lblAddress" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>City: </td>
            <td><asp:Label ID="lblCity" runat="server"></asp:Label></td>                        
        </tr>
        <tr>
            <td>State: </td>
            <td><asp:Label ID="lblState" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Zipcode: </td>
            <td><asp:Label ID="lblZipcode" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Email Address: </td>
            <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><asp:Label ID="lblPassword" runat="server">Hidden</asp:Label></td>
        </tr>
        <tr>
            <td>Phone Number: </td>
            <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
            </td>
            <td>
                <asp:Button ID="btnCorrect" runat="server" Text="Correct" OnClick="btnCorrect_Click" />
            </td>
        </tr>
    </table>
        
</asp:Content>