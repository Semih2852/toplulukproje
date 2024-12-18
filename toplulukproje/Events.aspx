<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="toplulukproje.Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Etkinlikler
    </title>
    <style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Arial', sans-serif;
  background: #f5f5f5;
  padding: 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.events-scroll {
  display: flex;
  overflow-x: auto;
  gap: 20px;
  padding: 20px 0;
  scroll-behavior: smooth;
  -webkit-overflow-scrolling: touch;
}

.event-card {
  flex: 0 0 auto;
  width: 300px;
  background: white;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  padding: 20px;
}

.event-date {
  color: #1e3c72;
  font-weight: bold;
  margin-bottom: 10px;
}

.event-title {
  font-size: 1.2rem;
  color: #333;
  margin-bottom: 10px;
}

.event-description {
  color: #666;
  margin-bottom: 15px;
  font-size: 0.9rem;
}

.event-location {
  color: #888;
  font-size: 0.9rem;
  margin-bottom: 15px;
}

.register-btn {
  display: block;
  width: 100%;
  padding: 10px;
  background: #1e3c72;
  color: white;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  cursor: pointer;
  transition: background 0.3s;
}

.register-btn:hover {
  background: #2a5298;
}

.back-button {
  display: inline-block;
  padding: 0.5rem 1rem;
  margin-bottom: 1rem;
  background: #666;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: bold;
  transition: background 0.3s;
}

.back-button:hover {
  background: #555;
}

/* Modal Styles */
.modal {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0,0,0,0.5);
  align-items: center;
  justify-content: center;
}

.modal-content {
  background: white;
  padding: 2rem;
  border-radius: 10px;
  width: 90%;
  max-width: 500px;
}

.modal-title {
  color: #1e3c72;
  margin-bottom: 1rem;
}

.form-group {
  margin-bottom: 1rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  color: #333;
}

.form-group input {
  width: 100%;
  padding: 0.5rem;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.modal-buttons {
  display: flex;
  gap: 1rem;
  margin-top: 1.5rem;
}

.modal-buttons button {
  flex: 1;
  padding: 0.75rem;
  border: none;
  border-radius: 4px;
  font-weight: bold;
  cursor: pointer;
}

.confirm-btn {
  background: #1e3c72;
  color: white;
}

.cancel-btn {
  background: #eee;
  color: #333;
}
</style>
</head>
<body>
  <div class="container">
    <a href="https://localhost:44323/Activities" class="back-button">← Geri Dön</a>
    
    <div class="events-scroll">
        
    </div>
  </div>

  <!-- Registration Modal -->
  <div class="modal" id="registerModal">
    <div class="modal-content">
      <h2 class="modal-title">Etkinliğe Kayıt</h2>
      <form id="registrationForm" runat="server">
        <div class="form-group">
          <label for="name">Ad Soyad</label>
          <input type="text" id="name"/>
        </div>
        <div class="form-group">
          <label for="email">E-posta</label>
          <input type="email" id="email"/>
        </div>
        <div class="form-group">
          <label for="phone">Telefon</label>
          <input type="tel" id="phone"/>
        </div>
        <div class="modal-buttons">
          <button type="button" class="cancel-btn" onclick="closeModal()">İptal</button>
          <button type="submit" class="confirm-btn">Kaydol</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
