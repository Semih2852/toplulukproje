<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile2.aspx.cs" Inherits="toplulukproje.Profile2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Profilim</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Arial', sans-serif;
  line-height: 1.6;
  background: #f5f5f5;
  min-height: 100vh;
}

.profile-container {
  max-width: 800px;
  margin: 2rem auto;
  padding: 2rem;
  background: white;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.profile-header {
  text-align: center;
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #f0f0f0;
}

.profile-title {
  color: #1e3c72;
  font-size: 2rem;
  margin-bottom: 0.5rem;
}

.profile-subtitle {
  color: #666;
  font-size: 1.1rem;
}

.profile-info {
  display: grid;
  gap: 1.5rem;
}

.info-group {
  display: grid;
  grid-template-columns: 150px 1fr;
  align-items: center;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 5px;
  transition: background 0.3s;
}

.info-group:hover {
  background: #f0f2f5;
}

.info-label {
  font-weight: bold;
  color: #1e3c72;
}

.info-value {
  color: #333;
}

.edit-profile-btn {
  display: block;
  width: 100%;
  padding: 1rem;
  margin-top: 2rem;
  background: #1e3c72;
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 1rem;
  font-weight: bold;
  cursor: pointer;
  transition: background 0.3s;
}
.edit-password-btn {
    display: inline-block;
    padding: 1px 317px;
    background-color: #007bff;
    color: white;
    text-align: center;
    border-radius: 5px;
    text-decoration: none;
}
.edit-password-btn:hover {
    background-color: #0056b3;
}
.edit-password-btn:hover {
  background: #2a5298;
}

.back-btn {
  display: inline-block;
  padding: 0.5rem 1rem;
  margin: 1rem;
  background: #333;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  transition: background 0.3s;
}

.back-btn:hover {
  background: #444;
}
</style>
</head>
<body>
  <form id="form2"  runat="server">
  <a href="https://localhost:44323/MainPage" class="back-btn">← Ana Sayfaya Dön</a>
  
  <div class="profile-container">
    <div class="profile-header">
      <h1 class="profile-title">Profil Bilgileri</h1>
      <p class="profile-subtitle">Kişisel bilgilerinizi görüntüleyin ve düzenleyin</p>
    </div>

<div class="profile-info">
    <div class="info-group">
        <label for="a1">Ad:</label>
        <asp:TextBox ID="txtKullaniciAdi" runat="server"/>
    </div>
    <div class="info-group">
        <label for="a2">Soyad:</label>
        <asp:TextBox ID="txtKullaniciSoyadi" runat="server"/>
    </div>
    <div class="info-group">
        <label for="a3">E-posta:</label>
        <asp:TextBox ID="txtKullaniciEmail" runat="server" TextMode="Email"/>
    </div>
    <div class="info-group">
        <label for="a4">Telefon:</label>
        <asp:TextBox ID="txtKullaniciTelefon" runat="server" pattern="[0-9]{10}" maxlength="10"/>
    </div>
    <div class="info-group">
        <label for="a5">T.C. Kimlik:</label>
        <asp:TextBox ID="txtKullaniciTckimlik" runat="server" ReadOnly="true" pattern="[0-9]{11}" maxlength="11"/>
    </div>
    <div class="info-group">
        <label for="a6">Kayıt Tarihi:</label>
        <asp:TextBox ID="txtKullaniciKayitTarihi" runat="server" ReadOnly="true"/>
    </div>
</div>

                              <asp:Button ID="btnEdit" runat="server" 
                Text="Profili Kaydet" 
                CssClass="edit-profile-btn" 
                OnClick="Duzenle"/>
  </div>
      </form>
</body></html>