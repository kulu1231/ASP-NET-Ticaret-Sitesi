<%@ Page Title="" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ticaretsitesi.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.ozel
{
	color:#f49140;
	font-weight:bold;
}
</style>
<style type="text/css">
#icerik3 {
	position: relative;
	width: 500px;
	height: 807px;
	z-index: 2;
	left: 820px;
	top: -750px;
	background-color: #FFFFFF;
	box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
	width: 500px;
}
#icerik4 {
	position: relative;
	width: 500px;
	height: 807px;
	z-index: 2;
	left: 150px;
	top: 66px;
	background-color: #FFFFFF;
	box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
	width: 500px;
}
    .auto-style1 {
        height: 74px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="icerik4">
    <p class="ozel">Üye Girişi</p>
          <table style="width: 100%;">
      <tr>
        <td >E-Mail Adresiniz:</td>
        <td>
          <asp:TextBox ID="eposta" runat="server" Width="300" Height="50" ValidationGroup="giris"></asp:TextBox></td>
      </tr>
      <tr>
        <td>Şifreniz:</td>
        <td><asp:TextBox ID="sifreniz" runat="server" Width="300" Height="50" TextMode="Password" ValidationGroup="giris"></asp:TextBox></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="giris" runat="server" Text="Üye Girişi" Font-Size="18px" Width="200" Height="50" BackColor="Red" ForeColor="White" Font-Bold="true" OnClick="giris_Click" ValidationGroup="giris" />
        </td>
      </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
          </table>


  </div>

  <div id="icerik3">
    <p class="ozel">Yeni Üyelik</p>
    
      <table style="width: 100%;">
           <tr>
          <td>Adı:</td>
          <td>
              <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>Soyadı:</td>
          <td>
              <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>E-posta:</td>
          <td>
              <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr >
          <td>Telefon:</td>
          <td>
              <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>Şifre:</td>
          <td>
              <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>Şifre tekrar:</td>
          <td>
              <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td class="auto-style1">Cinsiyet:</td>
          <td>
              <asp:TextBox ID="TextBox7" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td >Doğum Tarihi:</td>
          <td>
              <asp:TextBox ID="TextBox8" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>
              <asp:Button ID="uyeol" runat="server" Text="Üye Ol" Font-Size="18px" Width="200" Height="50" BackColor="Red" ForeColor="White" Font-Bold="true" OnClick="uyeol_Click" /></td>
        </tr>
      </table>
     
  
    <p>&nbsp;</p>
 
  </div>
   <p>&nbsp;</p>
    <p>&nbsp;</p>
   
 
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

