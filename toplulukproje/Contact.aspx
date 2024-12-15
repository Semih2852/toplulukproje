<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="toplulukproje.Contact1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>İletişim</title>
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

        .contact-container {
            max-width: 1200px;
            margin: 3rem auto;
            padding: 0 2rem;
        }

        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .contact-info, .contact-form {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .contact-info h2, .contact-form h2 {
            color: #1e3c72;
            margin-bottom: 1.5rem;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
        }

        .info-item svg {
            width: 24px;
            height: 24px;
            margin-right: 1rem;
            fill: #1e3c72;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        .submit-btn {
            background: #1e3c72;
            color: white;
            padding: 1rem 2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s;
        }

        .submit-btn:hover {
            background: #2a5298;
        }

        .map-container {
            height: 400px;
            background: #eee;
            border-radius: 10px;
            overflow: hidden;
            margin-top: 3rem;
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

        <div class="contact-container">
            <div class="contact-grid">
                <div class="contact-info">
                    <h1>İletişim Bilgileri</h1>
                    <div class="info-item">
                        <svg viewBox="0 0 24 24">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                        </svg>
                        <p>123 Ana Cadde, İstanbul, Türkiye</p>
                    </div>
                    <div class="info-item">
                        <svg viewBox="0 0 24 24">
                            <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                        </svg>
                        <p>info@umutvakfi.org</p>
                    </div>
                    <div class="info-item">
                        <svg viewBox="0 0 24 24">
                            <path d="M6.62 10.79c1.44 2.83 3.76 5.15 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
                        </svg>
                        <p>+90 212 555 0000</p>
                    </div>
                </div>

                <div class="contact-form">
                    <h1>Bize Ulaşın</h1>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-group" Placeholder="Ad Soyad" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-group" Placeholder="E-posta" TextMode="Email" />
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-group" Placeholder="Konu" />
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-group" Placeholder="Mesajınız" TextMode="MultiLine" Rows="5" Height="122px" Width="417px" />
                    <asp:Button ID="btnSubmit" runat="server" CssClass="submit-btn" Text="Gönder" />
                </div>
            </div>

            <div class="map-container">
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d192698.6171813103!2d28.871754982031247!3d41.005495099999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa7040068086b%3A0xe1ccfe98bc01b0d0!2zxLBzdGFuYnVs!5e0!3m2!1str!2str!4v1648226102932!5m2!1str!2str" 
                    width="100%" 
                    height="100%" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy">
                </iframe>
            </div>
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
