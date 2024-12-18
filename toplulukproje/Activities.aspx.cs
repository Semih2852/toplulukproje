using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace toplulukproje
{
    public partial class Activities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";

            // Kullanıcı oturum durumuna göre butonları görünürlük ayarı
            if (Session["IsAuthenticated"] != null && (bool)Session["IsAuthenticated"] == true)
            {
                btnGiris.Visible = false;
                btnKayit.Visible = false;
                btnProfil.Visible = true;
                btnCikis.Visible = true;
            }
            else
            {
                btnGiris.Visible = true;
                btnKayit.Visible = true;
                btnProfil.Visible = false;
                btnCikis.Visible = false;
            }

            if (!IsPostBack) // Sayfa ilk kez yüklendiğinde çalışır
            {
                GetDuyurular(connectionString);
                GetEtkinlikler(connectionString);
            }
        }
        private void GetDuyurular(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand("DuyuruGetir", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        int index = 1; // Dinamik kontrol için index
                        while (reader.Read())
                        {
                            switch (index)
                            {
                                case 1:
                                    txtDuyuruTarihi1.Text = reader["duyuru_tarihi"].ToString();
                                    txtDuyuruAdi1.Text = reader["duyuru_adi"].ToString();
                                    txtDuyuruAciklama1.Text = reader["duyuru_aciklama"].ToString();
                                    break;
                                case 2:
                                    txtDuyuruTarihi2.Text = reader["duyuru_tarihi"].ToString();
                                    txtDuyuruAdi2.Text = reader["duyuru_adi"].ToString();
                                    txtDuyuruAciklama2.Text = reader["duyuru_aciklama"].ToString();
                                    break;
                                case 3:
                                    txtDuyuruTarihi3.Text = reader["duyuru_tarihi"].ToString();
                                    txtDuyuruAdi3.Text = reader["duyuru_adi"].ToString();
                                    txtDuyuruAciklama3.Text = reader["duyuru_aciklama"].ToString();
                                    break;
                            }
                            index++;
                            if (index > 3) break; // Sadece 3 çalışanı göster
                        }

                        if (index == 1) // Hiç kayıt gelmediğinde
                        {
                        }
                    }
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    connection.Close();
                }
            }
        }
        private void GetEtkinlikler(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand("EtkinlikGetir", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        int index = 1; // Dinamik kontrol için index
                        while (reader.Read())
                        {
                            switch (index)
                            {
                                case 1:
                                    txtEtkinlikAdi1.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikTarihi1.Text = reader["etkinlik_tamtarih"].ToString();
                                    txtEtkinlikAciklama1.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                case 2:
                                    txtEtkinlikAdi2.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikTarihi2.Text = reader["etkinlik_tamtarih"].ToString();
                                    txtEtkinlikAciklama2.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                case 3:
                                    txtEtkinlikAdi3.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikTarihi3.Text = reader["etkinlik_tamtarih"].ToString();
                                    txtEtkinlikAciklama3.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                            }
                            index++;
                            if (index > 3) break; // Sadece 3 çalışanı göster
                        }

                        if (index == 1) // Hiç kayıt gelmediğinde
                        {
                        }
                    }
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    connection.Close();
                }
            }
        }
        public void Giris(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        public void Kayit(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        public void Profil(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
        public void Cikis(object sender, EventArgs e)
        {
            Session["IsAuthenticated"] = null;
            Response.Redirect("MainPage.aspx");
        }
    }
}