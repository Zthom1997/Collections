<%@ Page Title="" Language="C#" MasterPageFile="~/Soundify.Master" AutoEventWireup="true" CodeBehind="Add-Genres.aspx.cs" Inherits="Inleveropdracht1.Add_Genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Webstyles.css" rel="stylesheet" />
    <link href="Styles/Gridstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="HeaderText">
        <h2>Add / Edit Genres</h2>
        <hr />
    </div>

    <div class="AddGenres">
        <asp:Button ID="Button" runat="server" Text="All Genres" BorderColor="#477F56" PostBackUrl="~/Genres.aspx"/>         
    </div>

    <h4> Edit / Delete Genres </h4>

    <div class="Datagrid_Genres">

        <asp:GridView ID="GridView1" runat="server" cssClass="Gridview" HeaderStyle-CssClass="GridHeader" RowStyle-CssClass="GridRows" PagerStyle="GridPages" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="#EEEEEE" BorderColor="#FFCCFF" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="370px">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="code" HeaderText="Code" ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="genreName" HeaderText="Name" SortExpression="name" />
            </Columns>

<HeaderStyle CssClass="GridHeader"></HeaderStyle>

<RowStyle CssClass="GridRows"></RowStyle>

            <SelectedRowStyle Width="500px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Collections_DatabaseConnectionString1 %>" 
            DeleteCommand="DELETE FROM [tbl_Genres] WHERE [code] = @code" 
            InsertCommand="INSERT INTO [tbl_Genres] ([genreName]) VALUES (@genreName)" 
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

        <h4> Add Genres </h4>
        <p> 
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="code" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
                <CommandRowStyle BackColor="#477F56" Font-Bold="True" Font-Overline="False" Font-Underline="False" ForeColor="White" Wrap="True" />
                <FieldHeaderStyle BackColor="#477F56" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" ReadOnly="True" SortExpression="code" />
                    <asp:BoundField DataField="genreName" HeaderText="genreName" SortExpression="genreName" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </p>


    </div>

</asp:Content>
