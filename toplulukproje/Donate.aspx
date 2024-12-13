<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="toplulukproje.Donate" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bağış Yap - Hope Foundation</title>
    <base href="/">
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
            background: #f5f5f5;
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

        .donation-container {
            max-width: 1200px;
            margin: 3rem auto;
            padding: 0 2rem;
        }

        .donation-header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .donation-header h2 {
            color: #1e3c72;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .donation-header p {
            color: #666;
            font-size: 1.1rem;
        }

        .donation-options {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .donation-card {
            background: white;
            border-radius: 10px;
            padding: 2rem;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }

        .donation-card:hover {
            transform: translateY(-5px);
        }

        .donation-card h3 {
            color: #1e3c72;
            margin-bottom: 1rem;
        }

        .donation-amount {
            font-size: 2rem;
            color: #2a5298;
            margin: 1rem 0;
            font-weight: bold;
        }

        .donate-btn {
            background: #1e3c72;
            color: white;
            padding: 1rem 2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s;
            text-decoration: none;
            display: inline-block;
        }

        .donate-btn:hover {
            background: #2a5298;
        }

        .custom-donation {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-top: 3rem;
        }

        .custom-donation h3 {
            color: #1e3c72;
            margin-bottom: 1.5rem;
            text-align: center;
        }

        .donation-form {
            max-width: 500px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
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

        .impact-section {
            background: #fff;
            padding: 3rem 0;
            margin: 3rem 0;
        }

        .impact-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .impact-item {
            text-align: center;
        }

        .impact-number {
            font-size: 2.5rem;
            color: #1e3c72;
            font-weight: bold;
        }

        .impact-text {
            color: #666;
            margin-top: 0.5rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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

            <div class="donation-container">
                <div class="donation-header">
                    <h2>Bağışınızla Fark Yaratın</h2>
                    <p>Her bağış, ihtiyaç sahiplerine umut olmamıza yardımcı oluyor. Sizin desteğinizle daha fazla insana ulaşabiliyoruz.</p>
                </div>

                <div class="donation-options">
                    <div class="donation-card">
                        <h3>Aylık Bağış</h3>
                        <div class="donation-amount">&#8378;100</div>
                        <p>Aylık düzenli bağışınızla sürdürülebilir destek sağlayın</p>
                        <asp:LinkButton ID="btnMonthly" runat="server" CssClass="donate-btn">Bağış Yap</asp:LinkButton>
                    </div>

                    <div class="donation-card">
                        <h3>Üç Aylık Bağış</h3>
                        <div class="donation-amount">&#8378;250</div>
                        <p>Üç aylık bağışınızla uzun vadeli projelere destek olun</p>
                        <asp:LinkButton ID="btnQuarterly" runat="server" CssClass="donate-btn">Bağış Yap</asp:LinkButton>
                    </div>

                    <div class="donation-card">
                        <h3>Yıllık Bağış</h3>
                        <div class="donation-amount">&#8378;1000</div>
                        <p>Yıllık bağışınızla büyük değişimlere katkıda bulunun</p>
                        <asp:LinkButton ID="btnYearly" runat="server" CssClass="donate-btn">Bağış Yap</asp:LinkButton>
                    </div>
                </div>

                <div class="custom-donation">
                    <h3>Özel Bağış Miktarı</h3>
                    <div class="donation-form">
                        <div class="form-group">
                            <label for="amount">Bağış Miktarı (&#8378;)</label>
                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="name">Ad Soyad</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="email">E-posta</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="donate-btn" Text="Bağış Yap" />
                    </div>
                </div>

                <div class="impact-section">
                    <div class="impact-grid">
                        <div class="impact-item">
                            <div class="impact-number">5000+</div>
                            <div class="impact-text">Desteklenen Aile</div>
                        </div>
                        <div class="impact-item">
                            <div class="impact-number">150+</div>
                            <div class="impact-text">Tamamlanan Proje</div>
                        </div>
                        <div class="impact-item">
                            <div class="impact-number">25+</div>
                            <div class="impact-text">İl Genelinde Faaliyet</div>
                        </div>
                    </div>
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
        </div>
    </form>
</body>
</html>
