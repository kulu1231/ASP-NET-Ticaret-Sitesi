<%@ Page Title="Spor Ayakkabıları" Language="C#" MasterPageFile="~/admin/adminsablon.Master" AutoEventWireup="true" CodeBehind="spor.aspx.cs" Inherits="ticaretsitesi.admin.spor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
        .auto-style2 {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="icerik2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Kimlik" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: center; font-style: italic" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
                <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
                <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
                <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
                <asp:BoundField DataField="urun_adi" HeaderText="urun_adi" SortExpression="urun_adi" />
                <asp:BoundField DataField="fiyat" HeaderText="fiyat" SortExpression="fiyat" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [urunler] WHERE [Kimlik] = ?" InsertCommand="INSERT INTO [adidasayakkabi] ([Kimlik], [resim], [marka], [urun_adi], [fiyat]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [urunler] where kategori_id=13" UpdateCommand="UPDATE [urunler] SET [resim] = ?, [marka] = ?, [urun_adi] = ?, [fiyat] = ? WHERE [Kimlik] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Kimlik" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Kimlik" Type="Int32" />
                <asp:Parameter Name="resim" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="fiyat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="resim" Type="String" />
                <asp:Parameter Name="marka" Type="String" />
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="fiyat" Type="String" />
                <asp:Parameter Name="Kimlik" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <table style="width: 467px;">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="Ekle" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="resim" runat="server" placeholder="Resim Adı"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="marka" runat="server" placeholder="Marka"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="urun_adi" runat="server" placeholder="Ürün Adı"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="fiyat" runat="server" placeholder="Fiyat"></asp:TextBox></td>
                <td>
                    &nbsp;</td>
            </tr>
           
        </table>
        </div>
    </asp:Content>