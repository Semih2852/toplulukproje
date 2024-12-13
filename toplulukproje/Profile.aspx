<html><head><base href="/">
    <title>Profilim</title>
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

.edit-profile-btn:hover {
  background: #2a5298;
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
  <a href="https://localhost:44323/MainPage" class="back-btn">← Ana Sayfaya Dön</a>
  
  <div class="profile-container">
    <div class="profile-header">
      <h1 class="profile-title">Profil Bilgileri</h1>
      <p class="profile-subtitle">Kişisel bilgilerinizi görüntüleyin ve düzenleyin</p>
    </div>

    <div class="profile-info">
      <div class="info-group">
        <span class="info-label">Ad:</span>
        <span class="info-value">Ahmet</span>
      </div>

      <div class="info-group">
        <span class="info-label">Soyad:</span>
        <span class="info-value">Yılmaz</span>
      </div>

      <div class="info-group">
        <span class="info-label">E-posta:</span>
        <span class="info-value">ahmet.yilmaz@email.com</span>
      </div>

      <div class="info-group">
        <span class="info-label">Telefon:</span>
        <span class="info-value">+90 555 123 4567</span>
      </div>

      <div class="info-group">
        <span class="info-label">TC Kimlik No:</span>
        <span class="info-value">1030812321321</span>
      </div>

      <div class="info-group">
        <span class="info-label">Kayıt Tarihi:</span>
        <span class="info-value">01.01.2024</span>
      </div>
    </div>

    <button class="edit-profile-btn">Profili Düzenle</button>
    <button class="edit-password-btn">Şifreyi Değiştir</button>
  </div>

  <script>
      // Example function to load user data
      function loadUserProfile() {
          // This would normally fetch from your backend
          const userData = {
              firstName: 'Ahmet',
              lastName: 'Yılmaz',
              email: 'ahmet.yilmaz@email.com',
              phone: '+90 555 123 4567',
              tcId: '12345678901',
              registrationDate: '01.01.2024'
          };

          // Update the DOM with user data
          document.querySelectorAll('.info-value').forEach(element => {
              const label = element.previousElementSibling.textContent.toLowerCase();
              if (label.includes('tc')) {
              } else {
                  switch (label) {
                      case 'ad:':
                          element.textContent = userData.firstName;
                          break;
                      case 'soyad:':
                          element.textContent = userData.lastName;
                          break;
                      case 'e-posta:':
                          element.textContent = userData.email;
                          break;
                      case 'telefon:':
                          element.textContent = userData.phone;
                          break;
                      case 'kayıt tarihi:':
                          element.textContent = userData.registrationDate;
                          break;
                  }
              }
          });
      }

      // Add event listener for edit button
      document.querySelector('.edit-profile-btn').addEventListener('click', () => {
          alert('Profil düzenleme özelliği yakında eklenecektir.');
      });

      // Load profile when page loads
      window.addEventListener('load', loadUserProfile);
  </script>
</body></html>