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
  background: #f5f5f5;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.header {
    background-color: #1e3c72;
    padding: 1rem;
    display: flex;
    justify-content: flex-start;
    align-items: center;
}

h1 {
    color: white;
    margin-right: 30px;
}

.header-content {
    display: flex;
    align-items: center;
    gap: 20px;
}

.nav {
  background: #fff;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  padding: 1rem;
  display: flex;
    gap: 15px;
}
.nav-link {
    color: black;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    padding: 10px;
    border-radius: 5px;
    transition: background-color 0.3s;
}
.nav-link:hover {
    background-color: #2a5298;
}

.nav-list {
  list-style: none;
  display: flex;
  justify-content: center;
  gap: 2rem;
}
#profileButton {
    display: none;
    background-color: #1e3c72;
    color: white;
    padding: 10px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

#profileButton:hover {
    background-color: #2a5298;
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

.login-container {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 2rem;
}

.login-form {
  background: white;
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  width: 100%;
  max-width: 400px;
}

.form-title {
  color: #1e3c72;
  text-align: center;
  margin-bottom: 2rem;
  font-size: 1.8rem;
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-label {
  display: block;
  margin-bottom: 0.5rem;
  color: #333;
  font-weight: bold;
}

.form-input {
  width: 100%;
  padding: 0.8rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 1rem;
  transition: border-color 0.3s;
}

.form-input:focus {
  outline: none;
  border-color: #1e3c72;
}

.form-button {
  width: 100%;
  padding: 1rem;
  background: #1e3c72;
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 1rem;
  cursor: pointer;
  transition: background 0.3s;
}

.form-button:hover {
  background: #2a5298;
}

.form-links {
  margin-top: 1.5rem;
  text-align: center;
}

.form-links a {
  color: #1e3c72;
  text-decoration: none;
  margin: 0 0.5rem;
}

.form-links a:hover {
  text-decoration: underline;
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

.remember-me {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.remember-me input[type="checkbox"] {
  width: 16px;
  height: 16px;
}

</style>
</head>
<body>
<header class="header">
    <div class="header-content">
        <h1>Umut Vakfı</h1>
        <nav class="nav">
            <a href="/login" class="nav-link">Giriş Yap</a>
            <a href="/register" class="nav-link">Kayıt Ol</a>
            <button id="profileButton" class="nav-link">Profil</button>
        </nav>
    </div>
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

  <div class="login-container">
    <form class="login-form" action="https://example.com/login" method="POST">
      <h2 class="form-title">Giriş Yap</h2>
      
      <div class="form-group">
        <label class="form-label" for="email">E-posta Adresi</label>
        <input type="email" id="email" name="email" class="form-input" required>
      </div>
      
      <div class="form-group">
        <label class="form-label" for="password">Şifre</label>
        <input type="password" id="password" name="password" class="form-input" required>
      </div>

      <div class="remember-me">
        <input type="checkbox" id="remember" name="remember">
        <label for="remember">Beni Hatırla</label>
      </div>
      
      <button type="submit" class="form-button">Giriş Yap</button>
      
      <div class="form-links">
        <a href="https://example.com/forgot-password">Şifremi Unuttum</a>
        <span>|</span>
        <a href="https://example.com/register">Yeni Hesap Oluştur</a>
      </div>
    </form>
  </div>

  <footer class="footer">
    <p>© 2024 Hope Foundation. Tüm hakları saklıdır.</p>
    <div class="social-links">
      <a href="https://facebook.com">Facebook</a>
      <a href="https://twitter.com">Twitter</a>
      <a href="https://instagram.com">Instagram</a>
      <a href="https://linkedin.com">LinkedIn</a>
    </div>
  </footer>
</body></html>