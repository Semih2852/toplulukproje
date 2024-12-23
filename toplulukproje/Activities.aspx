<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="toplulukproje.Activities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Etkinlikler ve Duyurular</title>
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
        }

        .header {
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: white;
            padding: 1rem;
        }

        .nav {
            background: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 1rem;
        }

        .nav-list {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 2rem;
        }

        .nav-list a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            transition: color 0.3s;
        }

        .nav-list a:hover {
            color: #1e3c72;
        }

        .main-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
        }

        .page-title {
            text-align: center;
            color: #1e3c72;
            margin-bottom: 2rem;
        }

        .announcements-section, .events-section {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            margin-bottom: 3rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            color: #1e3c72;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
        }

        .announcement-list {
            display: grid;
            gap: 1.5rem;
        }

        .announcement-card {
            border-left: 4px solid #1e3c72;
            padding: 1rem;
            background: #f8f9fa;
            transition: transform 0.3s;
        }

        .announcement-card:hover {
            transform: translateX(10px);
        }

        .announcement-date {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .announcement-title {
            color: #1e3c72;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        .events-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .event-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .event-card:hover {
            transform: translateY(-5px);
        }

        .event-image {
            height: 200px;
            background: #1e3c72;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .event-content {
            padding: 1.5rem;
        }

        .event-date {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .event-title {
            color: #1e3c72;
            margin-bottom: 1rem;
            font-size: 1.2rem;
        }

        .event-description {
            color: #666;
            margin-bottom: 1rem;
        }

        .event-button {
            background: #1e3c72;
            color: white;
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            transition: background 0.3s;
        }

        .event-button:hover {
            background: #2a5298;
        }

        .footer {
            background: #333;
            color: white;
            padding: 2rem;
            text-align: center;
            margin-top: 3rem;
        }

        .social-links {
            margin-top: 1rem;
        }

        .social-links a {
            color: white;
            margin: 0 1rem;
            text-decoration: none;
        }
        .auth-button {
  padding: 0.3rem 0.7rem;
  font-size: 0.9rem;
  border: 2px solid white;
  border-radius: 5px;
  color: black;
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
.profile-button {
  display: none;
  padding: 0.3rem 0.7rem;
  font-size: 0.9rem;
  background: white;
  color: black;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  position: absolute;
  top: 20px;
  right: 20px;
}
    .borderless-textbox {
        border: none;       /* Kenarlığı kaldırır */
        font-size: 14px;    /* Yazı boyutunu büyütür */
        outline: none;      /* Odak çizgisini kaldırır */
        background: transparent; /* Arka planı şeffaf yapar */
        text-align: center; /* Yazıyı TextBox içinde ortalar */
        width: 300px;       /* TextBox genişliği */
        height: 40px;       /* TextBox yüksekliği */
        text-align: left;
    }
        .borderless-textbox2 {
        border: none;       /* Kenarlığı kaldırır */
        font-size: 16px;    /* Yazı boyutunu büyütür */
        outline: none;      /* Odak çizgisini kaldırır */
        background: transparent; /* Arka planı şeffaf yapar */
        text-align: center; /* Yazıyı TextBox içinde ortalar */
        width: 300px;       /* TextBox genişliği */
        height: 40px;       /* TextBox yüksekliği */
        text-align: center;
        color: white;
    }

.profile-button:hover {
  background: #f0f0f0;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
                            <style>
        h2 {
            text-align: right;
        }
    </style>
            <h2>
                <asp:Button ID="btnCikis" runat="server" class="auth-button" Text="Çıkış Yap" Onclick="Cikis"/>
                <asp:Button ID="btnPanel" runat="server" class="auth-button" Text="PANEL" Onclick="Panel"/>
                <asp:Button ID="btnProfil" runat="server" class="auth-button" Text="PROFİLİM" Onclick="Profil"/>
<asp:Button ID="btnGiris" runat="server" class="auth-button" Text="Giriş Yap" Onclick="Giris"/>
<asp:Button ID="btnKayit" runat="server" class="auth-button" Text="Kayıt Ol" Onclick="Kayit"/>
            </h2>
            <h1>Umut Vakfı</h1>
        </header>

        <nav class="nav">
            <ul class="nav-list">
      <li><a href="https://localhost:44323/MainPage">Ana Sayfa</a></li>
      <li><a href="https://localhost:44323/AboutUs">Hakkımızda</a></li>
      <li><a href="https://localhost:44323/Activities">Etkinlikler ve Duyurular</a></li>
      <li><a href="https://localhost:44323/Donate">Bağış Yap</a></li>
      <li><a href="https://localhost:44323/Contact">İletişim</a></li>
            </ul>
        </nav>

        <div class="main-container">
            <h1 class="page-title">Etkinlikler ve Duyurular</h1>

            <section class="announcements-section">
                <h1 class="section-title">Güncel Haberler</h1>
 <div class="announcement-list">
        <div class="announcement-card">
          <asp:TextBox ID="txtDuyuruTarihi1" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
            <p></p>
          <asp:TextBox ID="txtDuyuruAdi1" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
          <p><asp:TextBox ID="txtDuyuruAciklama1" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></p>
        </div>
        <div class="announcement-card">
  <asp:TextBox ID="txtDuyuruTarihi2" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
    <p></p>
  <asp:TextBox ID="txtDuyuruAdi2" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
  <p><asp:TextBox ID="txtDuyuruAciklama2" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></p>
</div>
                <div class="announcement-card">
  <asp:TextBox ID="txtDuyuruTarihi3" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
    <p></p>
  <asp:TextBox ID="txtDuyuruAdi3" runat="server" ReadOnly="true" CssClass="borderless-textbox"/>
  <p><asp:TextBox ID="txtDuyuruAciklama3" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></p>
</div>
      </div>
    </section>

    <section class="events-section">
      <h1 class="section-title">Yaklaşan Etkinlikler</h1>
      <div class="events-grid">
        <div class="event-card">
          <div class="event-image">
            <h3><asp:TextBox ID="txtEtkinlikAdi1" runat="server" ReadOnly="true" CssClass="borderless-textbox2" /></h3>
          </div>
          <div class="event-content">
            <div class="event-date"><asp:TextBox ID="txtEtkinlikTarihi1" runat="server" ReadOnly="true" CssClass="borderless-textbox" /></div>
            <p class="event-description"><asp:TextBox ID="txtEtkinlikAciklama1" runat="server" ReadOnly="true" CssClass="borderless-textbox" /></p>
            <a href="https://localhost:44323/Events" class="event-button">Detaylar</a>
          </div>
        </div>

        <div class="event-card">
          <div class="event-image">
            <h3><asp:TextBox ID="txtEtkinlikAdi2" runat="server" ReadOnly="true" CssClass="borderless-textbox2" /></h3>
          </div>
          <div class="event-content">
            <div class="event-date"><asp:TextBox ID="txtEtkinlikTarihi2" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></div>
            <p class="event-description"><asp:TextBox ID="txtEtkinlikAciklama2" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></p>
            <a href="https://localhost:44323/Events" class="event-button">Detaylar</a>
          </div>
        </div>

        <div class="event-card">
          <div class="event-image">
            <h3><asp:TextBox ID="txtEtkinlikAdi3" runat="server" ReadOnly="true" CssClass="borderless-textbox2" /></h3>
          </div>
          <div class="event-content">
            <div class="event-date"><asp:TextBox ID="txtEtkinlikTarihi3" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></div>
            <p class="event-description"><asp:TextBox ID="txtEtkinlikAciklama3" runat="server" ReadOnly="true" CssClass="borderless-textbox"/></p>
            <a href="https://localhost:44323/Events" class="event-button">Detaylar</a>
          </div>
        </div>
      </div>
    </section>
  </div>
        <footer class="footer">
            <p>© 2024 Umut Vakfı. Tüm hakları saklıdır.</p>
            <div class="social-links">
                <a href="https://facebook.com">Facebook</a>
                <a href="https://twitter.com">Twitter</a>
                <a href="https://instagram.com">Instagram</a>
                <a href="https://linkedin.com">LinkedIn</a>
            </div>
        </footer>
    </form>
</body>
</html>
