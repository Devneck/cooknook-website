<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" MasterPageFile="~/MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <div>
        <a href="Default.aspx">Home</a> | Register
    </div>

    <article>
        <h2>Register as new Customer</h2>

        <table id="customerTable">
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please correct the following issues:" ValidationGroup="RegisterForm" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>First Name: </td>
                <td class="colalignleft"><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name: </td>
                <td class="colalignleft"><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Address: </td>
                <td class="colalignleft"><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>City: </td>
                <td class="colalignleft"><asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>                        
            </tr>
            <tr>
                <td>State: </td>
                <td class="colalignleft"><asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtState" ErrorMessage="State is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Zipcode: </td>
                <td class="colalignleft"><asp:TextBox ID="txtZipcode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtZipcode" ErrorMessage="ZipCode is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email Address: </td>
                <td class="colalignleft"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address must be in the correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegisterForm" Display="Dynamic">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email address is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password: </td>
                <td class="colalignleft"><asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password: </td>
                <td class="colalignleft"><asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password must match Password" ForeColor="Red" ValidationGroup="RegisterForm">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Phone Number (555-555-5555): </td>
                <td class="colalignleft"><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number must be in 555-555-5555 format" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="RegisterForm">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="RegisterForm" />
                </td>
            </tr>
        </table>        
            
    </article>

</asp:Content>