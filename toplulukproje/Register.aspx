<html><head><base href="/">
    <title>Kayıt Ol</title>
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

.register-container {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 2rem;
}

.register-form {
  background: white;
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  width: 100%;
  max-width: 500px;
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
  margin-top: 1rem;
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
  margin-top: auto;
}

.social-links {
  margin-top: 1rem;
}

.social-links a {
  color: white;
  margin: 0 1rem;
  text-decoration: none;
}

.form-row {
  display: flex;
  gap: 1rem;
  margin-bottom: 1.5rem;
}

.form-row .form-group {
  flex: 1;
  margin-bottom: 0;
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
      <li><a href="https://localhost:44323/Activities">Etkinlikler ve Duyurular</a></li>
      <li><a href="https://localhost:44323/Donate">Bağış Yap</a></li>
      <li><a href="https://localhost:44323/Contact">İletişim</a></li>
    </ul>
  </nav>

  <div class="register-container">
    <form class="register-form" action="https://example.com/register" method="POST">
      <h2 class="form-title">Yeni Hesap Oluştur</h2>
      
      <div class="form-row">
        <div class="form-group">
          <label class="form-label" for="firstName">Adı</label>
          <input type="text" id="firstName" name="firstName" class="form-input" required>
        </div>
        
        <div class="form-group">
          <label class="form-label" for="lastName">Soyadı</label>
          <input type="text" id="lastName" name="lastName" class="form-input" required>
        </div>
      </div>
      
      <div class="form-group">
        <label class="form-label" for="tcno">T.C. Kimlik No</label>
        <input type="text" id="tcno" name="tcno" class="form-input" pattern="[0-9]{11}" maxlength="11" required>
      </div>

      <div class="form-group">
        <label class="form-label" for="email">E-posta Adresi</label>
        <input type="email" id="email" name="email" class="form-input" required>
      </div>

       <div class="form-group">
        <label class="form-label" for="telefon">Telefon Numarası</label>
        <input type="telefon" id="telefon" name="telefon" class="form-input" required>
      </div>
      
      <div class="form-group">
        <label class="form-label" for="password">Şifre</label>
        <input type="password" id="password" name="password" class="form-input" required>
      </div>
      
      <div class="form-group">
        <label class="form-label" for="passwordConfirm">Şifre Tekrar</label>
        <input type="password" id="passwordConfirm" name="passwordConfirm" class="form-input" required>
      </div>
      
      <button type="submit" class="form-button">Kayıt Ol</button>
      
      <div class="form-links">
        <span>Zaten hesabınız var mı?</span>
        <a href="https://localhost:44323/Login">Giriş Yap</a>
      </div>
    </form>
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
</body></html>