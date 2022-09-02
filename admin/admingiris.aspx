<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="webtasarimperformansi.admin.admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yönetim Paneli</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../images/Aha-Soft-Free-Large-Boss-Admin.ico" />

</head>
<body>
    <form id="form1" runat="server">
<div id="site">
<div id="sitebosluk"></div>
<div id="ortainput">
<div id="kullaniciadi"><label>Kullanıcı Adı</label>
<div id="kullaniciadiinput">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
</div>

<div id="sifre">
<label>Şifre</label>
<div id="sifreinput">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    </div>
</div>
<div id="alt">
<div id="hata">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hata.png" />
    <asp:Label ID="Label1" runat="server"></asp:Label></div>
<div id="girisyap">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" /></div>
</div>
</div>
</div>
    </form>
        
</body>
</html>
