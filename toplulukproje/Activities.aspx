<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="toplulukproje.Activities" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Etkinlikler ve Duyurular</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <h1>Umut Vakfı</h1>
        </header>

        <nav class="nav">
            <ul class="nav-list">
      <li><a href="https://localhost:44323/MainPage">Ana Sayfa</a></li>
      <li><a href="https://localhost:44323/AboutUs">Hakkımızda</a></li>
      <li><a href="https://localhost:44323/Activities">Etkinlikler</a></li>
      <li><a href="https://localhost:44323/Donate">Bağış Yap</a></li>
      <li><a href="https://localhost:44323/Contact">İletişim</a></li>
            </ul>
        </nav>

        <div class="main-container">
            <h1 class="page-title">Etkinlikler ve Duyurular</h1>

            <section class="announcements-section">
                <h2 class="section-title">Güncel Duyurular</h2>
 <div class="announcement-list">
        <div class="announcement-card">
          <div class="announcement-date">15 Mart 2024</div>
          <div class="announcement-title">Yeni Gönüllü Programı Başlıyor</div>
          <p>Yeni gönüllü programımız için başvurular başlamıştır. Detaylı bilgi için tıklayınız.</p>
        </div>
        <div class="announcement-card">
          <div class="announcement-date">10 Mart 2024</div>
          <div class="announcement-title">2024 Faaliyet Raporu Yayınlandı</div>
          <p>2024 yılı ilk çeyrek faaliyet raporumuz yayınlanmıştır. İncelemek için tıklayınız.</p>
        </div>
        <div class="announcement-card">
          <div class="announcement-date">5 Mart 2024</div>
          <div class="announcement-title">Yeni İşbirliği Anlaşması</div>
          <p>ABC Vakfı ile yeni işbirliği anlaşmamızı imzaladık. Detaylar için tıklayınız.</p>
        </div>
      </div>
    </section>

    <section class="events-section">
      <h2 class="section-title">Yaklaşan Etkinlikler</h2>
      <div class="events-grid">
        <div class="event-card">
          <div class="event-image">
            <h3>Eğitim Semineri</h3>
          </div>
          <div class="event-content">
            <div class="event-date">20 Mart 2024</div>
            <h3 class="event-title">Çocuk Gelişimi Semineri</h3>
            <p class="event-description">Uzman eğitmenlerimiz eşliğinde çocuk gelişimi ve eğitimi üzerine kapsamlı bir seminer düzenlenecektir.</p>
            <a href="https://example.com/events/seminar" class="event-button">Detaylar</a>
          </div>
        </div>

        <div class="event-card">
          <div class="event-image">
            <h3>Yardım Kampanyası</h3>
          </div>
          <div class="event-content">
            <div class="event-date">25 Mart 2024</div>
            <h3 class="event-title">Kitap Bağış Kampanyası</h3>
            <p class="event-description">Köy okulları için kitap bağış kampanyamıza katılın. Her çocuğa bir kitap hediye edelim.</p>
            <a href="https://example.com/events/book-donation" class="event-button">Detaylar</a>
          </div>
        </div>

        <div class="event-card">
          <div class="event-image">
            <h3>Sosyal Sorumluluk</h3>
          </div>
          <div class="event-content">
            <div class="event-date">1 Nisan 2024</div>
            <h3 class="event-title">Çevre Temizlik Etkinliği</h3>
            <p class="event-description">Sahillerimizi temizliyoruz! Gönüllülerimizle birlikte çevre temizliği etkinliğimize davetlisiniz.</p>
            <a href="https://example.com/events/clean-up" class="event-button">Detaylar</a>
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
