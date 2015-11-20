<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <title>Cook Nook - Order Form</title>
    <link rel="stylesheet" href="stylesheets/styles.css" type="text/css" media="screen"/>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
    <div id="wrapper"><!-- #wrapper -->

    <header><!-- header -->
        <h1><a href="Default.aspx">Cook Nook</a></h1>
    </header>
    <!-- end of header -->

    <nav><!-- top nav -->
        <div class="menu">
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="aboutus.html">About Us</a></li>
                <li><a href="products.aspx">Products</a></li>
                <li><a href="recipes.aspx">Recipes</a></li>
                <li><a href="chat.aspx">Chat</a></li>
                <li><a href="register.aspx">Register</a></li>
            </ul>
        </div>
    </nav>
    <!-- end of top nav -->

    <section id="main"><!-- #main content and sidebar area -->

        <section id="content"><!-- #content -->
            <div>
                <a href="Default.aspx">Home</a> | Order Form
            </div>


            <article>
                <form id="customerForm" runat="server">

                    <table id="customerTable">
                        <tr>
                            <td>First Name: </td>
                            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Last Name: </td>
                            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Address: </td>
                            <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>City: </td>
                            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>                        
                        </tr>
                        <tr>
                            <td>State: </td>
                            <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Zipcode: </td>
                            <td><asp:TextBox ID="txtZipcode" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Email Address: </td>
                            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Password: </td>
                            <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Phone Number: </td>
                            <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                </form>
            
            </article>

        </section>

        <aside id="sidebar2"><!-- sidebar2 -->

            <form action="chat.aspx">
                <label for="username">Username:</label><br/>
                <input type="text" name="username" id="username"/><br/>
                <label for="password">Password:</label><br/>
                <input type="text" name="password" id="password"/><br/>
                <input type="submit" value="Log In" id="login_btn"/>

            </form>

            <h3>Featured Products</h3>
            <ul>
                <li><a href="products.aspx">Curabitur sodales</a></li>
                <li><a href="products.aspx">Sed dignissim</a></li>
                <li><a href="products.aspx">Fusce nec</a></li>
                <li><a href="products.aspx">Nulla quis</a></li>
                <li><a href="products.aspx">Curabitur sodales</a></li>
                <li><a href="products.aspx">Sed dignissim</a></li>
                <li><a href="products.aspx">Fusce nec</a></li>
                <li><a href="products.aspx">Nulla quis</a></li>
            </ul>
            <div>
                <h3><a href="sitemap.aspx">Sitemap</a></h3>
            </div>

        </aside>
        <!-- end of sidebar -->

    </section>
    <!-- end of #main content and sidebar-->

    <footer>
        <section id="footer-area">

            <section id="footer-outer-block">
                

                <aside class="footer-segment">
                    <h4>Designed by</h4>

                    <p>&copy; 2014 <a href="http://www.devneck.com">devneck.com</a> Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
                    </p>
                </aside>
                <!-- end of #third footer segment -->

            </section>
            <!-- end of footer-outer-block -->

        </section>
        <!-- end of footer-area -->
    </footer>

</div>
<!-- #wrapper -->
</body>
</html>