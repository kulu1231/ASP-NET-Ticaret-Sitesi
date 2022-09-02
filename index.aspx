 <%@ Page Title="Ana Sayfa" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ticaretsitesi.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="menu">
        <ul>
            <li><a href="index.aspx" style="width:50px;background-color:#f49140;color:#FFF;"><i class="fas fa-home fa-2x"></i></a></li>
            <li><a href="kadin.aspx">Kadın</a></li>
            <li><a href="erkek.aspx">Erkek</a></li>
            <li><a href="cocuk.aspx">Çocuk</a></li>
            <li><a href="spor.aspx">Spor</a></li>
            <li><a href="hak.aspx">Hakkımızda</a></li>
            <li><a href="iletisim.aspx">İletişim</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
    <div style="position:relative; top: -500px; height:auto; left: 309px; width:auto;">
     <table width="100" border="0" align="center" cellspacing="10">
      <tr>
        <td><img src="images/kadinayakkabi.PNG" width="330" height="401" /></td>
        <td><img src="images/erkekayakkabi.PNG" width="330" height="401" /></td>
        <td><img src="images/canta.PNG" width="330" height="401" /></td>
      </tr>
    </table>
    <br />
    <div id="slid">Slider
 

    </div>
    <br />
    <table width="200" border="0" align="center" cellspacing="10">
  <tr>
    <td><img src="images/kadinayakkabi2.PNG" width="330" height="401" usemap="#Map" border="0" />
      <map name="Map" id="Map">
        <area shape="rect" coords="105,328,297,375" href="#" />
      </map></td>
    <td><img src="images/kadinayakkabi3.PNG" width="330" height="401" usemap="#Map2" border="0" />
      <map name="Map2" id="Map2">
        <area shape="rect" coords="104,328,297,372" href="#" />
      </map></td>
    <td><img src="images/kadinayakkabi4.PNG" width="330" height="401" usemap="#Map3" border="0" />
      <map name="Map3" id="Map3">
        <area shape="rect" coords="105,326,298,371" href="#" />
      </map></td>
  </tr>
</table>
    <img src="images/magaza.PNG" width="1010" height="203" /><br />
      </div>
</asp:Content>



