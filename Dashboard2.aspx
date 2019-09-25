<%@ Page Title="" Language="C#" MasterPageFile="~/Soundify.Master" AutoEventWireup="true" CodeBehind="Dashboard2.aspx.cs" Inherits="Inleveropdracht1.Dashboard2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Styles/Webstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- CONTENT -->
    <div class="HeaderText">
        <h2>Dashboard</h2>
        <hr />
    </div>

    <div  runat="server" class="DashboardItem" >
        <div class="Box">
            <div class="BoxData">
                <h3>Aantal tracks</h3>
                <p><asp:Label ID="NumberOfTracks" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
    </div>

        <div  runat="server" class="DashboardItem" >
        <div class="Box">
            <div class="BoxData">
                <h3>Aantal Genres</h3>
                <p><asp:Label ID="NumberOfGenres" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
    </div>

            <div  runat="server" class="DashboardItem" >
        <div class="Box">
            <div class="BoxData">
                <h3>Totale waarde</h3>
                <p><asp:Label ID="TotalValueOfTracks" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
    </div>

            <div  runat="server" class="DashboardItem" >
        <div class="Box">
            <div class="BoxData">
                <h3>Aantal albums</h3>
                <p><asp:Label ID="NumberOfAlbums" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
    </div>

</asp:Content>
