<%@ Page Title="" Language="C#" MasterPageFile="~/Soundify.Master" AutoEventWireup="true" CodeBehind="Value-Price.aspx.cs" Inherits="Inleveropdracht1.Value_Price" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Gridstyles.css" rel="stylesheet" />
    <link href="Styles/Webstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- CONTENT -->
    <div class="HeaderText">
        <h2>Prijs-/Waardeverschil</h2>
        <hr />
    </div>

    <div class="Dropdown">

        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropdownList" DataSourceID="SqlDataSource1" DataTextField="genreName" DataValueField="code" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" SelectCommand="SELECT [code], [genreName] FROM [tbl_Genres]"></asp:SqlDataSource>

        <div class="Datagrid">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" SelectCommand="SELECT trackName, album, year, price, value, genreCode, value - price AS 'Prijs-/waardeverschil' FROM tbl_CollectionObjects WHERE (genreCode = @genreCode)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="genreCode" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ShowFooter="False" EmptyDataText="There are no data records to display."
                cssClass="Gridview" EmptyDataRowStyle-CssClass="EmptyGrid" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridRows" PagerStyle="GridPages" OnRowDataBound="GridView1_RowDataBound" FooterStyle-Wrap="False" ShowHeaderWhenEmpty="True">
                <Columns>
                    <asp:BoundField DataField="trackName" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="album" HeaderText="album" SortExpression="album" />
                    <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                    <asp:BoundField DataField="genreCode" HeaderText="genreCode" SortExpression="genreCode" />
                    <asp:BoundField DataField="Prijs-/waardeverschil" HeaderText="Prijs-/waardeverschil" ReadOnly="True" SortExpression="Prijs-/waardeverschil" FooterStyle-Wrap="False" />
                </Columns>
            </asp:GridView>
            </div>




    </div>



</asp:Content>
