<%@ Page Title="Soundify - Dashboard" Language="C#" MasterPageFile="~/Soundify.Master"  AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Inleveropdracht1.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Webstyles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- CONTENT -->

    <div class="HeaderText">
        <h2>Dashboard</h2>
        <hr />
    </div>

    <div class="DashboardItem">
        <div class="Box">
            <div class="BoxData">
                <i class="fa fa-music"></i>
                <h3>Aantal tracks</h3>
                <p><asp:Label ID="NumberOfTracks" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
     </div>

    <div class="DashboardItem">
        <div class="Box">
            <div class="BoxData">
                <i class=" fa fa-folder-open"></i>
                <h3>Aantal Genres</h3>
                <p><asp:Label ID="NumberOfGenres" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
        </div>

        <div class="DashboardItem">
        <div class="Box">
            <div class="BoxData">
                <i class="fa fa-money"></i>
                <h3>Totale waarde</h3>
                <p><asp:Label ID="TotalValueOfTracks" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
    </div>

        <div class="DashboardItem">
        <div class="Box">
            <div class="BoxData">
                <i class=" fa fa-cubes"></i>
                <h3>Aantal albums</h3>
                <p><asp:Label ID="NumberOfAlbums" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
   </div>

</asp:Content>
