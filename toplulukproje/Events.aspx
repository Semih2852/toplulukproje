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
            border-left: 7px solid #1e3c72;
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
    .borderless-textbox {
        border: none;       /* Kenarlığı kaldırır */
        font-size: 14px;    /* Yazı boyutunu büyütür */
        outline: none;      /* Odak çizgisini kaldırır */
        background: transparent; /* Arka planı şeffaf yapar */
        width: 300px;       /* TextBox genişliği */
        height: 40px;       /* TextBox yüksekliği */
        text-align: left;
    }
        .borderless-textbox2 {
        border: none;       /* Kenarlığı kaldırır */
        font-size: 16px;    /* Yazı boyutunu büyütür */
        outline: none;      /* Odak çizgisini kaldırır */
        background: transparent; /* Arka planı şeffaf yapar */
        text-align: left; /* Yazıyı TextBox içinde ortalar */
        width: 300px;       /* TextBox genişliği */
        height: 40px;       /* TextBox yüksekliği */
        color: black;
        font-weight: bold;
    }
        .borderless-textbox3 {
        border: none;       /* Kenarlığı kaldırır */
        font-size: 16px;    /* Yazı boyutunu büyütür */
        outline: none;      /* Odak çizgisini kaldırır */
        background: transparent; /* Arka planı şeffaf yapar */
        text-align: left; /* Yazıyı TextBox içinde ortalar */
        width: 700px;       /* TextBox genişliği */
        height: 40px;       /* TextBox yüksekliği */
        color: black;
    }

.profile-button:hover {
  background: #f0f0f0;
}
.container {
  max-width: 1060px;
  margin: 0 auto;
  text-align: left; /* İçeriği sola hizalar */
}

.back-button {
  display: inline-block; /* Butonun kendi içinde düzgün görüntülenmesini sağlar */
  color: #007bff; /* Metin rengi (isteğe bağlı) */
  text-decoration: none; /* Alt çizgiyi kaldırır */
  font-size: 18px; /* Metin boyutunu ayarlar */
  margin-top: 10px; /* Üst boşluk ekler */
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
  <div class="container">
    <a href="https://localhost:44323/Activities" class="back-button">← Ana Sayfaya Dön</a>
    
    <div class="events-scroll">
            <section class="announcements-section">
                <h1 class="section-title">Yaklaşan Etkinlikler</h1>
 <div class="announcement-list">
        <div class="announcement-card">
          <asp:TextBox ID="txtEtkinlikAdi1" runat="server" ReadOnly="true" CssClass="borderless-textbox2" />
                        <asp:TextBox ID="txtEtkinlikBaslangicTarihi1" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
                        <asp:TextBox ID="txtEtkinlikBitisTarihi1" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
            <p></p>
          <asp:TextBox ID="txtEtkinlikAciklama1" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
             <p></p>
          <asp:TextBox ID="txtEtkinlikYeri1" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
            <asp:Button ID="btnKayit1" runat="server" class="auth-button" Text="Etkinliğe Kayıt Ol" Onclick="EtkinlikKayitOl"/>
        </div>
        <div class="announcement-card">
          <asp:TextBox ID="txtEtkinlikAdi2" runat="server" ReadOnly="true" CssClass="borderless-textbox2" />
                         <asp:TextBox ID="txtEtkinlikBaslangicTarihi2" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
                        <asp:TextBox ID="txtEtkinlikBitisTarihi2" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
            <p></p>
          <asp:TextBox ID="txtEtkinlikAciklama2" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
               <p></p>
<asp:TextBox ID="txtEtkinlikYeri2" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
            <asp:Button ID="btnKayit2" runat="server" class="auth-button" Text="Etkinliğe Kayıt Ol" Onclick="EtkinlikKayitOl"/>
        </div>
        <div class="announcement-card">
          <asp:TextBox ID="txtEtkinlikAdi3" runat="server" ReadOnly="true" CssClass="borderless-textbox2" />
                        <asp:TextBox ID="txtEtkinlikBaslangicTarihi3" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
                        <asp:TextBox ID="txtEtkinlikBitisTarihi3" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
            <p></p>
          <asp:TextBox ID="txtEtkinlikAciklama3" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
               <p></p>
<asp:TextBox ID="txtEtkinlikYeri3" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
            <asp:Button ID="btnKayit3" runat="server" class="auth-button" Text="Etkinliğe Kayıt Ol" Onclick="EtkinlikKayitOl"/>
        </div>
             <div class="announcement-card">
          <asp:TextBox ID="txtEtkinlikAdi4" runat="server" ReadOnly="true" CssClass="borderless-textbox2" />
                        <asp:TextBox ID="txtEtkinlikBaslangicTarihi4" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
                        <asp:TextBox ID="txtEtkinlikBitisTarihi4" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
            <p></p>
          <asp:TextBox ID="txtEtkinlikAciklama4" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
                  <p></p>
<asp:TextBox ID="txtEtkinlikYeri4" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
            <asp:Button ID="btnKayit4" runat="server" class="auth-button" Text="Etkinliğe Kayıt Ol" Onclick="EtkinlikKayitOl"/>
        </div>
             <div class="announcement-card">
          <asp:TextBox ID="txtEtkinlikAdi5" runat="server" ReadOnly="true" CssClass="borderless-textbox2" />
                        <asp:TextBox ID="txtEtkinlikBaslangicTarihi5" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
                        <asp:TextBox ID="txtEtkinlikBitisTarihi5" runat="server" ReadOnly="true" CssClass="borderless-textbox" />
            <p></p>
          <asp:TextBox ID="txtEtkinlikAciklama5" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
                    <p></p>
<asp:TextBox ID="txtEtkinlikYeri5" runat="server" ReadOnly="true" CssClass="borderless-textbox3" />
            <asp:Button ID="btnKayit5" runat="server" class="auth-button" Text="Etkinliğe Kayıt Ol" Onclick="EtkinlikKayitOl"/>
        </div>
      </div>
    </section>        
    </div>
  </div>
    </form>
</body>
</html>
