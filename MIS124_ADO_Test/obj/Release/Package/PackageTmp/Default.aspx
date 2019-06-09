<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="MIS124_ADO_Test._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title" style="line-height: 30px; padding: 0px; margin: 0px">
                <h1><%: Title %>&nbsp; Sac Retail - Database Lab 6</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p>
&nbsp;Select a Product ID from the list to browse <asp:DropDownList ID="ddlProductID" runat="server" AutoPostBack="True" DataSourceID="dsSacRetail" DataTextField="Product_ID" DataValueField="Product_ID" Width="100px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsSacRetail" runat="server" ConnectionString="<%$ ConnectionStrings:TAH2077_SacRetailConnectionString %>" SelectCommand="SELECT [Product ID] AS Product_ID FROM [Products]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TAH2077_SacRetailConnectionString %>" SelectCommand="SELECT [Product ID] AS Product_ID, [Product Name] AS Product_Name, [Purchase Price] AS Purchase_Price, [Units In Stock] AS Units_In_Stock, [Units On Order] AS Units_On_Order, [Reorder Level] AS Reorder_Level, [Discontinued], [Retail Price] AS Retail_Price FROM [Products] WHERE ([Product ID] = @Product_ID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [Product ID] = @original_Product_ID AND [Product Name] = @original_Product_Name AND [Purchase Price] = @original_Purchase_Price AND [Units In Stock] = @original_Units_In_Stock AND [Units On Order] = @original_Units_On_Order AND [Reorder Level] = @original_Reorder_Level AND [Discontinued] = @original_Discontinued AND [Retail Price] = @original_Retail_Price" InsertCommand="INSERT INTO [Products] ([Product ID], [Product Name], [Purchase Price], [Units In Stock], [Units On Order], [Reorder Level], [Discontinued], [Retail Price]) VALUES (@Product_ID, @Product_Name, @Purchase_Price, @Units_In_Stock, @Units_On_Order, @Reorder_Level, @Discontinued, @Retail_Price)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Products] SET [Product Name] = @Product_Name, [Purchase Price] = @Purchase_Price, [Units In Stock] = @Units_In_Stock, [Units On Order] = @Units_On_Order, [Reorder Level] = @Reorder_Level, [Discontinued] = @Discontinued, [Retail Price] = @Retail_Price WHERE [Product ID] = @original_Product_ID AND [Product Name] = @original_Product_Name AND [Purchase Price] = @original_Purchase_Price AND [Units In Stock] = @original_Units_In_Stock AND [Units On Order] = @original_Units_On_Order AND [Reorder Level] = @original_Reorder_Level AND [Discontinued] = @original_Discontinued AND [Retail Price] = @original_Retail_Price">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="Int64" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Purchase_Price" Type="Decimal" />
                <asp:Parameter Name="original_Units_In_Stock" Type="Int32" />
                <asp:Parameter Name="original_Units_On_Order" Type="Int32" />
                <asp:Parameter Name="original_Reorder_Level" Type="Int32" />
                <asp:Parameter Name="original_Discontinued" Type="String" />
                <asp:Parameter Name="original_Retail_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_ID" Type="Int64" />
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Purchase_Price" Type="Decimal" />
                <asp:Parameter Name="Units_In_Stock" Type="Int32" />
                <asp:Parameter Name="Units_On_Order" Type="Int32" />
                <asp:Parameter Name="Reorder_Level" Type="Int32" />
                <asp:Parameter Name="Discontinued" Type="String" />
                <asp:Parameter Name="Retail_Price" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProductID" Name="Product_ID" PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Purchase_Price" Type="Decimal" />
                <asp:Parameter Name="Units_In_Stock" Type="Int32" />
                <asp:Parameter Name="Units_On_Order" Type="Int32" />
                <asp:Parameter Name="Reorder_Level" Type="Int32" />
                <asp:Parameter Name="Discontinued" Type="String" />
                <asp:Parameter Name="Retail_Price" Type="Decimal" />
                <asp:Parameter Name="original_Product_ID" Type="Int64" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Purchase_Price" Type="Decimal" />
                <asp:Parameter Name="original_Units_In_Stock" Type="Int32" />
                <asp:Parameter Name="original_Units_On_Order" Type="Int32" />
                <asp:Parameter Name="original_Reorder_Level" Type="Int32" />
                <asp:Parameter Name="original_Discontinued" Type="String" />
                <asp:Parameter Name="original_Retail_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" Height="50px" Width="553px">
            <AlternatingRowStyle BackColor="#CCCCFF" />
            <CommandRowStyle BackColor="#FFFFCC" />
            <Fields>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Purchase_Price" HeaderText="Purchase_Price" SortExpression="Purchase_Price" />
                <asp:BoundField DataField="Units_In_Stock" HeaderText="Units_In_Stock" SortExpression="Units_In_Stock" />
                <asp:BoundField DataField="Units_On_Order" HeaderText="Units_On_Order" SortExpression="Units_On_Order" />
                <asp:BoundField DataField="Reorder_Level" HeaderText="Reorder_Level" SortExpression="Reorder_Level" />
                <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                <asp:BoundField DataField="Retail_Price" HeaderText="Retail_Price" SortExpression="Retail_Price" />
            </Fields>
        </asp:DetailsView>
    </p>
</asp:Content>
