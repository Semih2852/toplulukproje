<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="toplulukproje.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PANEL
    </title>
    <style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Arial', sans-serif;
  background: #f5f5f5;
  padding: 2rem;
}

.container {
  max-width: 1500px;
  margin: 0 auto;
}

.events-scroll {
  display: flex;
  overflow-x: auto;
  gap: 20px;
  padding: 20px 0;
  scroll-behavior: smooth;
  -webkit-overflow-scrolling: touch;
}

.event-card {
  flex: 0 0 auto;
  width: 300px;
  background: white;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  padding: 20px;
}

.event-date {
  color: #1e3c72;
  font-weight: bold;
  margin-bottom: 10px;
}

.event-title {
  font-size: 1.2rem;
  color: #333;
  margin-bottom: 10px;
}

.event-description {
  color: #666;
  margin-bottom: 15px;
  font-size: 0.9rem;
}

.event-location {
  color: #888;
  font-size: 0.9rem;
  margin-bottom: 15px;
}

.register-btn {
  display: block;
  width: 100%;
  padding: 10px;
  background: #1e3c72;
  color: white;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  cursor: pointer;
  transition: background 0.3s;
}

.register-btn:hover {
  background: #2a5298;
}

.back-button {
  display: inline-block;
  padding: 0.5rem 1rem;
  margin-bottom: 1rem;
  background: #666;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: bold;
  transition: background 0.3s;
}

.back-button:hover {
  background: #555;
}

/* Modal Styles */
.modal {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0,0,0,0.5);
  align-items: center;
  justify-content: center;
}

.modal-content {
  background: white;
  padding: 2rem;
  border-radius: 10px;
  width: 90%;
  max-width: 500px;
}

.modal-title {
  color: #1e3c72;
  margin-bottom: 1rem;
}

.form-group {
  margin-bottom: 1rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  color: #333;
}

.form-group input {
  width: 100%;
  padding: 0.5rem;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.modal-buttons {
  display: flex;
  gap: 1rem;
  margin-top: 1.5rem;
}

.modal-buttons button {
  flex: 1;
  padding: 0.75rem;
  border: none;
  border-radius: 4px;
  font-weight: bold;
  cursor: pointer;
}

.confirm-btn {
  background: #1e3c72;
  color: white;
}

.cancel-btn {
  background: #eee;
  color: #333;
}
        .auth-button {
  padding: 0.3rem 0.7rem;
  font-size: 0.9rem;
  border: 2px solid white;
  border-radius: 5px;
  color: blue;
  text-decoration: none;
  font-weight: bold;
  transition: all 0.3s;
}

.auth-button:hover {
  background: white;
  color: #1e3c72;
}

.auth-buttons {
  display: flex;
  justify-content: flex-end;
  gap: 1rem;
  position: absolute;
  top: 20px; 
  right: 20px; 
}
</style>
</head>
<body>
        <form id="form1" runat="server">
  <div class="container">
    <a href="https://localhost:44323/MainPage" class="back-button">← Ana Sayfaya Dön</a>
  </div>
            <asp:Button ID="btnCalisan" runat="server" class="auth-button" Text="Çalışanların Tüm Bilgilerini Göster" Onclick="CalisanGoster"/>
            <asp:Button ID="btnKullanici" runat="server" class="auth-button" Text="Kullanıcıların Tüm Bilgilerini Göster" Onclick="KullaniciGoster"/>
            <asp:Button ID="btnYetkili" runat="server" class="auth-button" Text="Yetkililerin Tüm Bilgilerini Göster" Onclick="YetkiliGoster"/>
            <asp:Button ID="btnGeriBildirim" runat="server" class="auth-button" Text="Geri Bildirim Tablosunu Göster" Onclick="GeriBildirimGoster"/>
            <asp:Button ID="btnEtkinlik" runat="server" class="auth-button" Text="Etkinlikler İle İlgili Tüm Tabloları Göster" Onclick="EtkinlikTumGoster"/>
            <asp:Button ID="btnDuyurular" runat="server" class="auth-button" Text="Duyurular Tablosunu Göster" Onclick="DuyuruGoster"/>
            <asp:Button ID="btnBagis" runat="server" class="auth-button" Text="Bağışlar İle İlgili Tüm Tabloları Göster" Onclick="BagisGoster"/>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" CellPadding="4" ForeColor="#333333" GridLines="Both">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
</form>
</body>
</html>