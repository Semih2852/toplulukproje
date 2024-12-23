using System;
using System.Data;
using System.Data.SqlClient;
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
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                int userType = Convert.ToInt32(reader["KullaniciTipi"]); // KullaniciTipi sütunundan değer al
                                if (userType == 0)
                                {
                                    KullaniciGiris(reader); // Kullanıcı işle
                                }
                                else if (userType == 1)
                                {
                                    YetkiliGiris(reader); // Yetkili işle
                                }
                                else if (userType == 2)
                                {
                                    CalisanGiris(reader); // Yetkili işle
                                }
                            }
                        }
                        else
                        {
                            HataVer();
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
        public DateTime UpdateSonGirisTarihi(int kullaniciId, string connectionString)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Fonksiyon çağrısı için uygun SQL komutu
                    SqlCommand command = new SqlCommand("SonGirisTarihiGuncelleme", connection);
                    command.CommandType = CommandType.StoredProcedure; // Fonksiyon olduğu için Text kullanıyoruz

                    // Parametreyi ekle
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = kullaniciId;

                    connection.Open();

                    // Fonksiyonu çağır ve dönen tarihi al
                    var result = command.ExecuteScalar(); // Bu, fonksiyonun döndüğü değeri alır (yani güncellenen tarih)

                    // Dönüş değerini DateTime olarak al
                    DateTime sonGirisTarihi = Convert.ToDateTime(result);
                    return sonGirisTarihi;
                }
            }
            catch (Exception ex)
            {
                // Hata mesajını göster
                ShowErrorMessage("Son giriş tarihi güncellenirken hata oluştu: " + ex.Message);
                throw; // Hata oluşursa yeniden fırlat, böylece hata ile ilgili daha fazla işlem yapılabilir
            }
        }

        private void KullaniciGiris(SqlDataReader reader)
        {
            KullaniciBilgileri.kullaniciID = Convert.ToInt32(reader["kullanici_id"]);
            KullaniciBilgileri.kullaniciAdi = reader["kullanici_adi"].ToString();
            KullaniciBilgileri.kullaniciSoyadi = reader["kullanici_soyadi"].ToString();
            KullaniciBilgileri.kullaniciEmail = reader["kullanici_mail"].ToString();
            KullaniciBilgileri.kullaniciTelefon = Convert.ToInt64(reader["kullanici_telefon"]);
            KullaniciBilgileri.kullaniciTckimlik = Convert.ToInt64(reader["kullanici_tckimlik"]);
            KullaniciBilgileri.kullaniciKayitTarihi = Convert.ToDateTime(reader["kullanici_kayittarihi"]);

            string ad = reader["kullanici_adi"].ToString();
            string soyad = reader["kullanici_soyadi"].ToString();
            Session["IsAuthenticated"] = true;
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            DateTime sonGiris = UpdateSonGirisTarihi(Convert.ToInt32(reader["kullanici_id"]), connectionString);
            ShowSuccessMessage($"Hoşgeldiniz Kullanıcı, {ad} {soyad}! Son Giriş Tarihi: {sonGiris}");
        }

        private void YetkiliGiris(SqlDataReader reader)
        {
            KullaniciBilgileri.kullaniciID = Convert.ToInt32(reader["yetkili_id"]);
            string adminName = reader["yetkili_adi"].ToString();
            string adminSurname = reader["yetkili_soyadi"].ToString();
            Session["IsAdminAuthenticated"] = true;
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            DateTime sonGiris = UpdateSonGirisTarihi(Convert.ToInt32(reader["yetkili_id"]), connectionString);
            ShowSuccessMessage($"Hoşgeldiniz Yetkili, {adminName} {adminSurname}!Son Giriş Tarihi: {sonGiris}");
        }
        private void CalisanGiris(SqlDataReader reader)
        {
            KullaniciBilgileri.kullaniciID = Convert.ToInt32(reader["calisan_id"]);
            string calisanName = reader["calisan_adi"].ToString();
            string calisanSurName = reader["calisan_soyadi"].ToString();
            Session["IsAuthenticated"] = true;
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            DateTime sonGiris = UpdateSonGirisTarihi(Convert.ToInt32(reader["calisan_id"]), connectionString);
            ShowSuccessMessage($"Hoşgeldiniz Çalışan, {calisanName} {calisanSurName}!Son Giriş Tarihi: {sonGiris}");
        }

        private void HataVer()
        {
            ShowErrorMessage("E-posta veya şifre hatalı!");
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