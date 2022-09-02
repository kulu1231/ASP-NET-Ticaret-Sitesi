<%@ Page Title="Üye İşlemleri" Language="C#" MasterPageFile="~/admin/adminsablon.Master" AutoEventWireup="true" CodeBehind="uyeislem.aspx.cs" Inherits="ticaretsitesi.admin.uyeislem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="icerik2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="kul_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="text-align: center" Width="100%">
            <Columns>
                <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                <asp:BoundField DataField="kul_id" HeaderText="Kullanıcı İD" InsertVisible="False" ReadOnly="True" SortExpression="kul_id" />
                <asp:BoundField DataField="adi" HeaderText="Adı" SortExpression="adi" />
                <asp:BoundField DataField="soyadi" HeaderText="Soyadı" SortExpression="soyadi" />
                <asp:BoundField DataField="eposta" HeaderText="E-Mail Adresi" SortExpression="eposta" />
                <asp:BoundField DataField="tel" HeaderText="Telefon" SortExpression="tel" />
                <asp:BoundField DataField="sifre" HeaderText="Şifre" SortExpression="sifre" />
                <asp:BoundField DataField="sifretekrar" HeaderText="Şifre Tekrar" SortExpression="sifretekrar" />
                <asp:BoundField DataField="cinsiyet" HeaderText="Cinsiyet" SortExpression="cinsiyet" />
                <asp:BoundField DataField="dogumtarihi" HeaderText="Doğum Tarihi" SortExpression="dogumtarihi" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [kul_id] = ?" InsertCommand="INSERT INTO [users] ([kul_id], [adi], [soyadi], [eposta], [tel], [sifre], [sifretekrar], [cinsiyet], [dogumtarihi]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [adi] = ?, [soyadi] = ?, [eposta] = ?, [tel] = ?, [sifre] = ?, [sifretekrar] = ?, [cinsiyet] = ?, [dogumtarihi] = ? WHERE [kul_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="kul_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="kul_id" Type="Int32" />
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="soyadi" Type="String" />
                <asp:Parameter Name="eposta" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="sifretekrar" Type="String" />
                <asp:Parameter Name="cinsiyet" Type="String" />
                <asp:Parameter Name="dogumtarihi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="soyadi" Type="String" />
                <asp:Parameter Name="eposta" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="sifretekrar" Type="String" />
                <asp:Parameter Name="cinsiyet" Type="String" />
                <asp:Parameter Name="dogumtarihi" Type="String" />
                <asp:Parameter Name="kul_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

