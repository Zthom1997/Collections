<%@ Page Title="Add-Tracks" Language="C#" MasterPageFile="~/Soundify.Master" AutoEventWireup="true" CodeBehind="Add-Tracks.aspx.cs" Inherits="Inleveropdracht1.Add_Tracks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Webstyles.css" rel="stylesheet" />
    <link href="Styles/Gridstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="HeaderText">
        <h2> Add / Edit Tracks
        </h2>
        <hr />
    </div>

    <div class="AddTracks">
        <asp:Button ID="Button" runat="server" Text="All Tracks" BorderColor="#477F56" PostBackUrl="~/Tracks.aspx"/> 
        
    </div>

    <h4> Edit / Delete Tracks </h4>

    <div class="Datagrid_Tracks">

        <p> 
            <asp:GridView ID="GridView2" runat="server" cssClass="Gridview" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridRows" PagerStyle="GridPages" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." BackColor="#EEEEEE" Width="1262px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="trackName" HeaderText="Name" SortExpression="trackName" />
                    <asp:BoundField DataField="album" HeaderText="Album" SortExpression="album" />
                    <asp:BoundField DataField="producedBy" HeaderText="Producer" SortExpression="producedBy" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="value" HeaderText="Value" SortExpression="value" />
                    <asp:BoundField DataField="genreCode" HeaderText="genreCode" SortExpression="genreCode" />
                </Columns>

            <HeaderStyle CssClass="GridHeader"></HeaderStyle>

            <RowStyle CssClass="GridRows"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [tbl_CollectionObjects] WHERE [id] = @id" InsertCommand="INSERT INTO [tbl_CollectionObjects] ([trackName], [album], [producedBy], [year], [duration], [price], [value], [genreCode]) VALUES (@trackName, @album, @producedBy, @year, @duration, @price, @value, @genreCode)" ProviderName="<%$ ConnectionStrings:Inleveropdracht_1_DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [trackName], [album], [producedBy], [year], [duration], [price], [value], [genreCode] FROM [tbl_CollectionObjects]" UpdateCommand="UPDATE [tbl_CollectionObjects] SET [trackName] = @trackName, [album] = @album, [producedBy] = @producedBy, [year] = @year, [duration] = @duration, [price] = @price, [value] = @value, [genreCode] = @genreCode WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="trackName" Type="String" />
                    <asp:Parameter Name="album" Type="String" />
                    <asp:Parameter Name="producedBy" Type="String" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="duration" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="value" Type="Double" />
                    <asp:Parameter Name="genreCode" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="trackName" Type="String" />
                    <asp:Parameter Name="album" Type="String" />
                    <asp:Parameter Name="producedBy" Type="String" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="duration" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="value" Type="Double" />
                    <asp:Parameter Name="genreCode" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>

        <h4> Add Tracks </h4>

        <p> 
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" DefaultMode="Insert">
                <CommandRowStyle BackColor="#477F56" Font-Bold="True" Font-Overline="False" Font-Underline="False" ForeColor="White" Wrap="True" />
                <FieldHeaderStyle BackColor="#477F56" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="trackName" HeaderText="trackName" SortExpression="trackName" />
                    <asp:BoundField DataField="album" HeaderText="album" SortExpression="album" />
                    <asp:BoundField DataField="producedBy" HeaderText="producedBy" SortExpression="producedBy" />
                    <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                    <asp:BoundField DataField="genreCode" HeaderText="genreCode" SortExpression="genreCode" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </p>



    </div>
</asp:Content>
