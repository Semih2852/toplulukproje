<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="toplulukproje.WebForm1" %>

<html><head><base href="/">
<meta charset="UTF-8">
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Arial', sans-serif;
  line-height: 1.6;
}

.header {
  background: linear-gradient(135deg, #1e3c72, #2a5298);
  color: white;
  padding: 1rem;
}

.nav {
  background: #fff;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
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

.about-hero {
  background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
              url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" width="800" height="300" viewBox="0 0 800 300"><rect width="800" height="300" fill="%232a5298"/></svg>');
  color: white;
  padding: 4rem 2rem;
  text-align: center;
}

.about-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 4rem 2rem;
}

.mission-vision {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 4rem;
}

.mission-card, .vision-card {
  background: #f9f9f9;
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.team-section {
  text-align: center;
  margin-bottom: 4rem;
}

.team-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.team-member {
  background: #fff;
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.member-avatar {
  width: 120px;
  height: 120px;
  margin: 0 auto 1rem;
}

.timeline {
  position: relative;
  max-width: 800px;
  margin: 4rem auto;
  padding: 2rem;
}

.timeline-item {
  position: relative;
  padding: 2rem;
  margin-bottom: 2rem;
  background: #f9f9f9;
  border-radius: 10px;
}

.footer {
  background: #333;
  color: white;
  padding: 2rem;
  text-align: center;
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

  <section class="about-hero">
    <h1>Umut Vakfı Hakkında</h1>
    <p>2010'dan Bu Yana Olumlu Değişim Yaratmaya Adanmış</p>
  </section>

  <div class="about-content">
    <section class="mission-vision">
      <div class="mission-card">
        <h2>Misyonumuz</h2>
        <p>Sürdürülebilir kalkınma girişimleri, kaliteli eğitim ve erişilebilir sağlık hizmetleri aracılığıyla toplulukları güçlendirmek ve hizmet verdiğimiz kişilerin hayatlarında kalıcı olumlu etki yaratmak.</p>
      </div>
      <div class="vision-card">
        <h2>Vizyonumuz</h2>
        <p>Her bireyin gelişmek, büyümek ve topluluğun gelişimine katkıda bulunmak için eşit fırsatlara sahip olduğu bir dünya.</p>
      </div>
    </section>

    <section class="team-section">
      <h2>Gönüllü Takımımız</h2>
      <div class="team-grid">
        <div class="team-member">
          <svg class="member-avatar" viewBox="0 0 24 24">
            <circle cx="12" cy="8" r="4" fill="#1e3c72"/>
            <path fill="#1e3c72" d="M12 14c-6.1 0-8 4-8 4v2h16v-2s-1.9-4-8-4z"/>
          </svg>
          <h3>Semih Saykaya</h3>
          <p>Yönetici Müdür</p>
        </div>
        <div class="team-member">
          <svg class="member-avatar" viewBox="0 0 24 24">
            <circle cx="12" cy="8" r="4" fill="#1e3c72"/>
            <path fill="#1e3c72" d="M12 14c-6.1 0-8 4-8 4v2h16v-2s-1.9-4-8-4z"/>
          </svg>
          <h3>Muhammed Dursun</h3>
          <p>Program Lideri</p>
        </div>
        <div class="team-member">
          <svg class="member-avatar" viewBox="0 0 24 24">
            <circle cx="12" cy="8" r="4" fill="#1e3c72"/>
            <path fill="#1e3c72" d="M12 14c-6.1 0-8 4-8 4v2h16v-2s-1.9-4-8-4z"/>
          </svg>
          <h3>Can Polat Doğan</h3>
          <p>Topluluk Yardım Yöneticisi</p>
        </div>
      </div>
    </section>

    <section class="timeline">
      <h2>Hikayemiz</h2>
      <div class="timeline-item">
        <h3>2010</h3>
        <p>İhtiyaç sahibi topluluklara hizmet etme vizyonuyla kuruldu</p>
      </div>
      <div class="timeline-item">
        <h3>2015</h3>
        <p>Operasyonlar 10 yeni topluluğa genişletildi</p>
      </div>
      <div class="timeline-item">
        <h3>2020</h3>
        <p>
Operasyonlar 10 yeni topluluğa genişletildi</p>
      </div>
      <div class="timeline-item">
        <h3>2024</h3>
        <p>
Olumlu etki ve toplum hizmetiyle dolu on yılı kutluyoruz</p>
      </div>
    </section>
  </div>

  <footer class="footer">
    <p>&copy; 2024 Umut Vakfı. Tüm hakları saklıdır.</p>
    <div class="social-links">
      <a href="https://facebook.com">Facebook</a>
      <a href="https://twitter.com">Twitter</a>
      <a href="https://instagram.com">Instagram</a>
      <a href="https://linkedin.com">LinkedIn</a>
    </div>
  </footer>
</body></html>