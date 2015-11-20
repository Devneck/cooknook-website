<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="MasterPage.master" %>

<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentBody">
    <article>
        <h2><a href="Default.aspx">Lorem ipsum dolor</a></h2>
        <img src="images/space.png" alt="" class="alignleft"/>

        <p><strong>Article header Article header Article header Article header</strong></p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Duis
            sagittis ipsum. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh
            elementum imperdiet. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.
            Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia
            nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Duo
            partem graeco repudiare ne, vix cu graeci nostrud blandit. Agam graecis omnesque usu ut, veniam
            commune ne sit, vide lucilius complectitur at ius.</p>
        <p><a href="Default.aspx">Read more...</a></p>
    </article>

    <article>
        <h2><a href="Default.aspx">Second Recent Article Title</a></h2>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed
            cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
            Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget
            nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
            Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Usu pericula argumentum repudiandae
            ea, ut vis deserunt oportere, assum nominavi percipitur ei ius. Nam timeam atomorum philosophia te,
            ut eum amet laoreet pertinax, an duo error aperiri reformidans. Et alii quas partiendo mei, wisi
            quaestio convenire et vix.</p>

        <p><a href="Default.aspx">Read more...</a></p>
    </article>
    <article>
        <div id="mainAdRotator">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:Timer ID="Timer1" Interval="10000" runat="server" />

            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" BorderColor="Black" BorderWidth="1px" />
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ads.xml"></asp:XmlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </article>                
</asp:Content>
