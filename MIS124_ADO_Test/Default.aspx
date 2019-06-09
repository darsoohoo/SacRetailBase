<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="MIS120_ExtraCredit._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title" style="line-height: 30px; padding: 0px; margin: 0px">
                <h1><%: Title %>&nbsp; MIS Sac Retail - Database</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p>
        Select a Product ID from the list to browse
    </p>
    <p>
        <table style="width: 100%; height: 126px;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        Below is the Product Description</p>
    <p>
        &nbsp;</p>
    <p>
        Please put your name here, if you can. Then submit it.</p>
    <p>
        NOTE - Use the following connection: Data Source=tah2077-2\tah2077office;Initial Catalog=SacRetail;Persist Security Info=True;User ID=mis;Password=cba</p>
</asp:Content>
