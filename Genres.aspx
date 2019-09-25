<%@ Page Title="Music Genres" Language="C#" MasterPageFile="~/Soundify.Master"  AutoEventWireup="true" CodeBehind="Genres.aspx.cs" Inherits="Inleveropdracht1.Genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Webstyles.css" rel="stylesheet" />
    <link href="Styles/Gridstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="HeaderText">
        <h2>Genres</h2>
        <hr />
    </div>

    <div class="AddGenres">
        <asp:Button ID="Button" runat="server" Text="Add / Edit Genres" BorderColor="#477F56" PostBackUrl="~/Add-Genres.aspx"/>         
    </div>

    <h4> All Genres </h4>

    <div class="Datagrid_Genres">

        <asp:GridView ID="GridView1" runat="server" cssClass="Gridview" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridRows" PagerStyle="GridPages" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="#EEEEEE" BorderColor="#FFCCFF" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="520px">
            <Columns>
                <asp:BoundField DataField="code" HeaderText="Code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="genreName" HeaderText="Name" SortExpression="name" />
            </Columns>
            <SelectedRowStyle Width="500px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" 
            DeleteCommand="DELETE FROM [tbl_Genres] WHERE [code] = @code" 
            InsertCommand="INSERT INTO [tbl_Genres] ([genreName]) VALUES (@name)" 
            ProviderName="<%$ ConnectionStrings:Inleveropdracht_1_DatabaseConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [code], [genreName] FROM [tbl_Genres]" 
            UpdateCommand="UPDATE [tbl_Genres] SET [genreName] = @name WHERE [code] = @code">
            <DeleteParameters>
                <asp:Parameter Name="code" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="code" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>

</asp:Content>
