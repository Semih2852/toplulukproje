<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="toplulukproje.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Umut Vakfı</title>
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

        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
            url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" width="800" height="400" viewBox="0 0 800 400"><rect width="800" height="400" fill="%231e3c72"/></svg>');
            color: white;
            text-align: center;
            padding: 4rem 2rem;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        .cta-button {
            display: inline-block;
            padding: 1rem 2rem;
            background: #e74c3c;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .cta-button:hover {
            background: #c0392b;
        }

        .features {
            padding: 4rem 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            background: #f9f9f9;
        }

        .feature-card {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .feature-icon {
            width: 60px;
            height: 60px;
            margin-bottom: 1rem;
        }

        .impact-section {
            padding: 4rem 2rem;
            text-align: center;
            background: #fff;
        }

        .impact-numbers {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .impact-item {
            padding: 2rem;
        }

        .impact-number {
            font-size: 2.5rem;
            color: #1e3c72;
            font-weight: bold;
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
  font-size: 0.9rem
  background: white;
  color: black;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  position: absolute;
  top: 20px
  right: 20px;
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
    <a href="https://localhost:44323/Login" class="auth-button">Giriş Yap</a>
    <a href="https://localhost:44323/Register" class="auth-button">Kayıt Ol</a>
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

        <section class="hero">
            <h1>Birlikte Fark Yaratmak</h1>
            <p>Topluluğumuzda olumlu değişim yaratma misyonumuza bize katılın</p>
            <a href="https://localhost:44323/Donate" class="cta-button">Hızlı Bağış</a>
        </section>

        <section class="features">
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
                <h3>Eğitim Desteği</h3>
                <p>İmkanı olmayan çocuklara eğitim olanağı sağlanması</p>
            </div>
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>
                <h3>Sağlık Programları</h3>
                <p>Herkesin kaliteli sağlık hizmetlerine erişiminin sağlanması</p>
            </div>
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/>
                </svg>
                <h3>Toplumsal Kalkınma</h3>
                <p>Yerel girişimler aracılığıyla daha güçlü topluluklar oluşturmak</p>
            </div>
        </section>

        <section class="impact-section">
            <h1>Etkimiz</h1>
            <div class="impact-numbers">
                <div class="impact-item">
                    <div class="impact-number">10,000+</div>
                    <p>Etkilenen Yaşamlar</p>
                </div>
                <div class="impact-item">
                    <div class="impact-number">50+</div>
                    <p>Aktif Programlar</p>
                </div>
                <div class="impact-item">
                    <div class="impact-number">100+</div>
                    <p>Gönüllüler</p>
                </div>
            </div>
        </section>
        
        <footer class="footer">
            <p>&copy; 2024 Umut Vakfı Tüm hakları saklıdır.</p>
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