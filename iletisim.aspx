<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ticaretsitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
#form {
	position: relative;
	width: 624px;
	height: 499px;
	z-index: 1;
	left: 400px;
    top:-500px;
}
#form2 {
	position: absolute;
	width: 624px;
	height: 87px;
	z-index: 1;
	background-color: #E6B44B;
    color:white;
    font-size:x-large;
    text-align:center;
    line-height:87px;
}
#form3 {
	position: absolute;
	width: 624px;
	height: 437px;
	z-index: 2;
	left: 0px;
	top: 87px;
	background-color: #F2F3F5;
	color: #F36;
}
.text
{
    width:400px; 
    height:40px; 
    border:0px; 
    background-color:#F2F3F5; 
    border-bottom:1px solid #B7B8BA;
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
            <li><a href="iletisim.aspx" style="background-color:#f49140;color:#FFF;">İletişim</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="kate" style="top: 30px; left: 20px">
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
    
<div id="form">
  <div id="form2">Bize Ulaşın</div>
  <div id="form3">
    <table style="width:621px;" cellspacing="25">
      <tr>
        <td>Adınız:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox></td>
      </tr>
      <tr>
        <td>Soyadınız:</td>
        <td><asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
      </tr>
      <tr>
        <td>E-Mail Adresiniz:</td>
        <td><asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox></td>
      </tr>
      <tr>
        <td>Konu:</td>
        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox></td>
      </tr>
      <tr>
        <td>Mesajınız:</td>
        <td><asp:TextBox ID="TextBox5" runat="server" CssClass="text"></asp:TextBox></td>
      </tr>
      <tr>
      <td></td>
      <td>
          <asp:Button ID="Button1" runat="server" BackColor="#E6B44B" Font-Size="X-Large" ForeColor="White" Height="45px" Text="Gönder" Width="149px" OnClick="Button1_Click" />
          </td>
      </tr>
    </table>
  </div>
</div>

</asp:Content>

