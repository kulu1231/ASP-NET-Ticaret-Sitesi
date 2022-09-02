<%@ Page Title="Ayrıntı" Language="C#" MasterPageFile="~/kullanicisablon.Master" AutoEventWireup="true" CodeBehind="ayrinti.aspx.cs" Inherits="ticaretsitesi.ayrinti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
 
        #sepetform {
	position: absolute;
	width: 585px;
	height: 410px;
	z-index: 1;
	left: 5px;
	top: 6px;
	background-color: #FFFFFF;
	box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
    display:none;
}
#sepetform2 {
	position: absolute;
	width: 585px;
	height: 115px;
	z-index: 1;
	background-color: #3AC162;
	color:white;
	text-align:center;
	font-size:35px;
	line-height:115px;
}
#form {
	position: absolute;
	width: 478px;
	height: 237px;
	z-index: 2;
	left: 4px;
	top: 129px;
}

         </style>
    <style type="text/css">
#yorum {
	position: absolute;
	width: 585px;
	height: 340px;
	z-index: 1;
	left: 320px;
	top: 350px;
	background-color: #FFFFFF;
	box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}

#yorum2 {
	position: absolute;
	width: 585px;
	height: 115px;
	z-index: 1;
	background-color: #3AC162;
	color:white;
	text-align:center;
	font-size:35px;
	line-height:115px;
}

#yorum3
{
    position:absolute;
    width:478px;
    height:237px;
    z-index:2;
    left:4px;
    top:129px;
}

.textt
{
    background-color:#E8EBED; 
    width:250px; 
    height:42px; 
    border-radius:5px; 
    color:red;
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
    <div id="icerik2">
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <img src='images/<%#Eval("resim") %>' width="300" height="300"/>
                <div style="position:absolute; top: 7px; left: 315px;">
        <table style="width: 100%;" align="left" cellspacing="20">
                    <tr>
                        <td><b><%#Eval("marka") %></b></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><p><%#Eval("urun_adi") %></p></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td> <font color="#f49140"><strong><%#Eval("fiyat") %></strong></font></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
            <tr>
                <td>
                    <input type="button" value="Satın Al" style="width:200px; height:50px; background-color:red; color:white; font-size:18px; font-weight:bold;" onclick="satinal()" /></td>
            </tr>
                </table>
                     
            </div>
               
            </ItemTemplate>
        </asp:Repeater> 
        <div id="sepetform">
  <div id="sepetform2">Satın Alma Formu</div>
  <div id="form">
    <table cellspacing="25">
      <tr>
        <td>

            <asp:TextBox ID="txtID" runat="server" Width="250" Height="42" BackColor="#E8EBED" ForeColor="Red" placeholder="Ürün ID"></asp:TextBox></td>
        <td><asp:TextBox ID="txtAdi" runat="server" Width="250" Height="42" BackColor="#E8EBED" ForeColor="Red" placeholder="Ürün Adı"></asp:TextBox></td>
      </tr>
      <tr>
        <td><asp:TextBox ID="txtFiyat" runat="server" Width="250" Height="42" BackColor="#E8EBED" ForeColor="Red" placeholder="Ürün Fiyatı"></asp:TextBox></td>
        <td><asp:TextBox ID="txtAdet" runat="server" Width="250" Height="42" BackColor="#E8EBED" ForeColor="Red" placeholder="Ürün Adeti"></asp:TextBox></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Sepete Ekle" Width="250" Height="50" BackColor="#3AC162" ForeColor="White" OnClick="btnSepeteEkle_Click1" Font-Bold="true" Font-Size="35px" /></td>
      </tr>
    </table>
  </div>
</div>
            <asp:DataList ID="DataList1" runat="server"></asp:DataList>
        </div>
                  
    <div id="yorum">
  <div id="yorum2">Yorum Yap</div>
  <div id="yorum3">
    <table width="476" height="141" border="0" cellspacing="25">
      <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textt" placeholder="Ad Soyad"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2" runat="server" CssClass="textt" placeholder="Mesaj"></asp:TextBox></td>
      </tr>
     
      <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="yorumyap" runat="server" Text="Yorum Gönder" Width="250" Height="50" BackColor="#3AC162" ForeColor="White" Font-Bold="true" Font-Size="35px" OnClick="yorumyap_Click" /></td>
      </tr>
    </table>
  </div>
</div>
   
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
             <div id="yorumgoster" style="width:500px; position:relative; background-color:white; height:auto; top:-120px; left: 250px;">
             <b><%#Eval("tarihsaat") %></b><br /><br />
            Ad Soyad: <%#Eval("yorum_adsoyad") %><br /><br />
            
            Mesaj: <%#Eval("yorum_icerik") %><br />
           
            <hr />
                  </div>
        </ItemTemplate>
    </asp:Repeater>

        

   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [yorumlar] WHERE ([urun_yorum_id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="urun_yorum_id" QueryStringField="urun" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urunler] WHERE ([Kimlik] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Kimlik" QueryStringField="urun" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
         <asp:Label ID="lblToplam" runat="server" Text=""></asp:Label>
   
</asp:Content>

