<%@ Page Title="Gelen Siparişler" Language="C#" MasterPageFile="~/admin/adminsablon.Master" AutoEventWireup="true" CodeBehind="siparisler.aspx.cs" Inherits="ticaretsitesi.admin.siparisler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="icerik2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="musteri_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="text-align: center" Width="100%">
            <Columns>
                <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                <asp:BoundField DataField="musteri_id" HeaderText="Müşteri İD" InsertVisible="False" ReadOnly="True" SortExpression="musteri_id" />
                <asp:BoundField DataField="musteri_adi" HeaderText="Müşteri Adı" SortExpression="musteri_adi" />
                <asp:BoundField DataField="musteri_soyadi" HeaderText="Müşteri Soyadı" SortExpression="musteri_soyadi" />
                <asp:BoundField DataField="musteri_telefon" HeaderText="Telefon Numarası" SortExpression="musteri_telefon" />
                <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
                <asp:BoundField DataField="urun_adi" HeaderText="Ürün Adı" SortExpression="urun_adi" />
                <asp:BoundField DataField="urun_fiyati" HeaderText="Ürün Fiyatı" SortExpression="urun_fiyati" />
                <asp:BoundField DataField="odeme_sekli" HeaderText="Ödeme Şekli" SortExpression="odeme_sekli" />
                <asp:BoundField DataField="kul_adi" HeaderText="Kullanıcı Adı" SortExpression="kul_adi" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [gelensiparisler] WHERE [musteri_id] = ?" InsertCommand="INSERT INTO [gelensiparisler] ([musteri_id], [musteri_adi], [musteri_soyadi], [musteri_telefon], [adres], [urun_adi], [urun_fiyati], [odeme_sekli], [kul_adi]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [gelensiparisler]" UpdateCommand="UPDATE [gelensiparisler] SET [musteri_adi] = ?, [musteri_soyadi] = ?, [musteri_telefon] = ?, [adres] = ?, [urun_adi] = ?, [urun_fiyati] = ?, [odeme_sekli] = ?, [kul_adi] = ? WHERE [musteri_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="musteri_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="musteri_id" Type="Int32" />
                <asp:Parameter Name="musteri_adi" Type="String" />
                <asp:Parameter Name="musteri_soyadi" Type="String" />
                <asp:Parameter Name="musteri_telefon" Type="String" />
                <asp:Parameter Name="adres" Type="String" />
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="urun_fiyati" Type="String" />
                <asp:Parameter Name="odeme_sekli" Type="String" />
                <asp:Parameter Name="kul_adi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="musteri_adi" Type="String" />
                <asp:Parameter Name="musteri_soyadi" Type="String" />
                <asp:Parameter Name="musteri_telefon" Type="String" />
                <asp:Parameter Name="adres" Type="String" />
                <asp:Parameter Name="urun_adi" Type="String" />
                <asp:Parameter Name="urun_fiyati" Type="String" />
                <asp:Parameter Name="odeme_sekli" Type="String" />
                <asp:Parameter Name="kul_adi" Type="String" />
                <asp:Parameter Name="musteri_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

