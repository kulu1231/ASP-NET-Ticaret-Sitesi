<%@ Page Title="Satın Alındı" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="satinalindi.aspx.cs" Inherits="ticaretsitesi.satinalindi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .aa
        {
            font-size:18px;
            font-family:Tahoma;
        }
    </style>
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
            <li><a href="kinetix.aspx">Kinetix</a></li>
        </ul>
    </div>
    <div id="icerik2" class="aa">
        <center><img src="images/shopping-cart-clip-art_f.jpg" /><br />
            Ürününüz Sepete eklenmiştir. Bizi tercih ettiğiniz için Teşekkür Ederiz.<br /><a href="index.aspx">Alışverişe devam etmek için tıklayınız.</a>
        </center></div>
    
</asp:Content>

