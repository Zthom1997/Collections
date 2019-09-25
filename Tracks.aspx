<%@ Page Title="Tracks" Language="C#" MasterPageFile="~/Soundify.Master" AutoEventWireup="true" CodeBehind="Tracks.aspx.cs" Inherits="Inleveropdracht1.Tracks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Webstyles.css" rel="stylesheet" />
    <link href="Styles/Gridstyles.css" rel="stylesheet" />
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="HeaderText">
        <h2>Tracks
        </h2>
        <hr />
    </div>

    <div class="AddTracks">
        <asp:Button ID="Button" runat="server" Text="Add / Edit Tracks" BorderColor="#477F56" PostBackUrl="~/Add-Tracks.aspx"/> 
        
    </div>


    <h4> All Tracks </h4>

    <div class="Datagrid_Tracks">

        <asp:GridView ID="GridView1" runat="server" cssClass="Gridview" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridRows" PagerStyle="GridPages" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="#EEEEEE" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1221px">
            <Columns>
                <asp:BoundField DataField="trackName" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="album" HeaderText="Album" SortExpression="album" />
                <asp:BoundField DataField="producedBy" HeaderText="Producer" SortExpression="producedBy" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="value" HeaderText="Value" SortExpression="value" />
                <asp:BoundField DataField="genreCode" HeaderText="genreCode" SortExpression="genreCode" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [tbl_CollectionObjects] WHERE [id] = @id" InsertCommand="INSERT INTO [tbl_CollectionObjects] ([name], [album], [producedBy], [year], [duration], [price], [value], [genreCode]) VALUES (@name, @album, @producedBy, @year, @duration, @price, @value, @genreCode)" ProviderName="<%$ ConnectionStrings:Inleveropdracht_1_DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [trackName], [album], [producedBy], [year], [duration], [price], [value], [genreCode] FROM [tbl_CollectionObjects]" UpdateCommand="UPDATE [tbl_CollectionObjects] SET [name] = @name, [album] = @album, [producedBy] = @producedBy, [year] = @year, [duration] = @duration, [price] = @price, [value] = @value, [genreCode] = @genreCode WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="album" Type="String" />
                <asp:Parameter Name="producedBy" Type="String" />
                <asp:Parameter Name="year" Type="Int32" />
                <asp:Parameter Name="duration" Type="Double" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="value" Type="Double" />
                <asp:Parameter Name="genreCode" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="album" Type="String" />
                <asp:Parameter Name="producedBy" Type="String" />
                <asp:Parameter Name="year" Type="Int32" />
                <asp:Parameter Name="duration" Type="Double" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="value" Type="Double" />
                <asp:Parameter Name="genreCode" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    


</asp:Content>
