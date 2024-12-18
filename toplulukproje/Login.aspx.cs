using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace toplulukproje
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void GirisYap(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            string kullaniciMail = txtEmail.Text;
            string kullaniciSifre = txtPassword.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand("GirisYap", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Parametreleri ekle
                    command.Parameters.Add(new SqlParameter("@kullanici_mail", SqlDbType.NVarChar, 100)).Value = kullaniciMail;
                    command.Parameters.Add(new SqlParameter("@kullanici_sifre", SqlDbType.NVarChar, 100)).Value = kullaniciSifre;

                    connection.Open();

                    // Veri okuma işlemi
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows) // Kullanıcı bilgisi bulundu
                        {
                            while (reader.Read()) // Veriyi satır satır oku
                            {
                                    KullaniciBilgileri.kullaniciAdi = reader["kullanici_adi"].ToString();
                                    KullaniciBilgileri.kullaniciSoyadi = reader["kullanici_soyadi"].ToString();
                                    KullaniciBilgileri.kullaniciEmail = reader["kullanici_mail"].ToString();
                                KullaniciBilgileri.kullaniciTelefon = Convert.ToInt64(reader["kullanici_telefon"]);
                                    KullaniciBilgileri.kullaniciTckimlik = Convert.ToInt64(reader["kullanici_tckimlik"]);
                                KullaniciBilgileri.kullaniciKayitTarihi = Convert.ToDateTime(reader["kullanici_kayittarihi"]);
                                string ad = reader["kullanici_adi"].ToString();
                                string soyad = reader["kullanici_soyadi"].ToString();

                                Session["IsAuthenticated"] = true;
                                ShowSuccessMessage($"Hoşgeldiniz, {ad} {soyad}!");
                            }
                        }
                        else
                        {
                            // Kullanıcı bulunamadıysa hata mesajı
                            ShowErrorMessage("E-posta veya şifre hatalı!");
                        }
                    }
                }
                catch (Exception ex)
                {
                    ShowErrorMessage("Hata oluştu: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }
        private void ShowErrorMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert",
                $"alert('{message}');", true);
        }

        private void ShowSuccessMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert",
                $"alert('{message}'); window.location.href='MainPage.aspx';", true);
        }
    }
}