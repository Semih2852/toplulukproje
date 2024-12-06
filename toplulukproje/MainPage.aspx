<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="toplulukproje.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hope Foundation</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <h1>Hope Foundation</h1>
        </header>

        <nav class="nav">
            <ul class="nav-list">
                <li><a href="https://example.com/home">Home</a></li>
                <li><a href="https://example.com/about">About Us</a></li>
                <li><a href="https://example.com/programs">Programs</a></li>
                <li><a href="https://example.com/donate">Donate</a></li>
                <li><a href="https://example.com/contact">Contact</a></li>
            </ul>
        </nav>

        <section class="hero">
            <h1>Making a Difference Together</h1>
            <p>Join us in our mission to create positive change in our community</p>
            <a href="https://example.com/donate" class="cta-button">Donate Now</a>
        </section>

        <section class="features">
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
                <h3>Education Support</h3>
                <p>Providing educational opportunities to underprivileged children</p>
            </div>
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/>
                </svg>
                <h3>Healthcare Programs</h3>
                <p>Ensuring access to quality healthcare for all</p>
            </div>
            <div class="feature-card">
                <svg class="feature-icon" viewBox="0 0 24 24">
                    <path fill="#1e3c72" d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/>
                </svg>
                <h3>Community Development</h3>
                <p>Building stronger communities through local initiatives</p>
            </div>
        </section>

        <section class="impact-section">
            <h2>Our Impact</h2>
            <div class="impact-numbers">
                <div class="impact-item">
                    <div class="impact-number">10,000+</div>
                    <p>Lives Impacted</p>
                </div>
                <div class="impact-item">
                    <div class="impact-number">50+</div>
                    <p>Active Programs</p>
                </div>
                <div class="impact-item">
                    <div class="impact-number">100+</div>
                    <p>Volunteers</p>
                </div>
            </div>
        </section>

        <footer class="footer">
            <p>© 2024 Hope Foundation. All rights reserved.</p>
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
