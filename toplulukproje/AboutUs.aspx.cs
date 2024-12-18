using System;
using System.Data;
using System.Data.SqlClient;

namespace toplulukproje
{
    public partial class WebForm1 : System.Web.UI.Page
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
                GetCalisanlar(connectionString);
            }
        }

        private void GetCalisanlar(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand("CalisanGetir", connection);
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
                                    txtCalisan1.Text = $"{reader["calisan_adi"]} {reader["calisan_soyadi"]}";
                                    txtCalisanAlan1.Text = reader["calisan_alan"].ToString();
                                    break;
                                case 2:
                                    txtCalisan2.Text = $"{reader["calisan_adi"]} {reader["calisan_soyadi"]}";
                                    txtCalisanAlan2.Text = reader["calisan_alan"].ToString();
                                    break;
                                case 3:
                                    txtCalisan3.Text = $"{reader["calisan_adi"]} {reader["calisan_soyadi"]}";
                                    txtCalisanAlan3.Text = reader["calisan_alan"].ToString();
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
