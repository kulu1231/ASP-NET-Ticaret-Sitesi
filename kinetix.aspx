<%@ Page Title="Kinetix Ayakkabıları" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="kinetix.aspx.cs" Inherits="ticaretsitesi.kinetix" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="menu">
        <ul>
            <li><a href="index.aspx" style="width:50px;"><i class="fas fa-home fa-2x"></i></a></li>
            <li><a href="kadin.aspx">Kadın</a></li>
            <li><a href="erkek.aspx">Erkek</a></li>
            <li><a href="cocuk.aspx">Çocuk</a></li>
            <li><a href="spor.aspx">Spor</a></li>
            <li><a href="hak.aspx">Hakkımızda</a></li>
            <li><a href="iletisim.aspx">İletişim</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="kate">
        <ul>
            <li><a href="#" style="background-color:#000; color:#FFF;">Kategoriler</a></li>
            <li><a href="topuklu.aspx">Topuklu Ayakkabı</a></li>
            <li><a href="spor.aspx">Spor Ayakkabı</a></li>
            <li><a href="babet.aspx">Babet</a></li>
            <li><a href="sandalet-terlik.aspx">Sandalet / Terlik</a></li>
            <li><a href="bot.aspx">Bot</a></li>
            <li><a href="nike.aspx">Nike</a></li>
            <li><a href="adidas.aspx">Adidas</a></li>
            <li><a href="puma.aspx">Puma</a></li>
            <li><a href="lescon.aspx">Lescon</a></li>
            <li><a href="reebook.aspx">Reebook</a></li>
            <li><a href="kinetix.aspx" style="background-color:#f49140;color:#FFF;">Kinetix</a></li>
        </ul>
    </div>
    <div id="icerik2">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div style="position:relative; float:left; padding:20px;">
                <img src='images/<%#Eval("resim") %>' width="300" height="400" /><br />
                <center><b><%#Eval("marka") %></b></center><br />
                <center><%#Eval("urun_adi") %></center><br />
               <font color="#f49140"><strong> <center><%#Eval("fiyat") %></center></strong></font><br />
                    <a href="ayrinti.aspx?urun=<%#Eval("Kimlik") %>" target="_blank"><center><img src="images/satinal.PNG" width="101" height="36" /></center></a>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urunler] where kategori_id=7"></asp:SqlDataSource>
    </div>
</asp:Content>

