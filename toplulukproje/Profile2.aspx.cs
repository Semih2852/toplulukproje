using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace toplulukproje
{
    public partial class Profile2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtKullaniciTckimlik.Text = KullaniciBilgileri.kullaniciTckimlik.ToString();
            txtKullaniciKayitTarihi.Text = KullaniciBilgileri.kullaniciKayitTarihi.ToString();

        }
        public void Duzenle(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            long kullaniciTelefon;
            long kullaniciTckimlik;
            string kullaniciAdi = txtKullaniciAdi.Text;
            string kullaniciSoyadi = txtKullaniciSoyadi.Text;
            string kullaniciMail = txtKullaniciEmail.Text;
        basadon:
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("KullaniciDuzenle", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Validate T.C. Kimlik (ID)
                    if (long.TryParse(txtKullaniciTckimlik.Text, out kullaniciTckimlik))
                    {
                        // Proceed if valid
                    }
                    else
                    {
                        ShowErrorMessage("T.C. Kimlik Numarası Geçerli Değil!");
                        goto basadon; // Retry on invalid T.C. Kimlik
                    }

                    // Validate Telefon Number
                    if (long.TryParse(txtKullaniciTelefon.Text, out kullaniciTelefon))
                    {
                        // Proceed if valid
                    }
                    else
                    {
                        ShowErrorMessage("Telefon Numarası Geçerli Değil!");
                        goto basadon; // Retry on invalid Phone Number
                    }

                    // Add parameters to the stored procedure
                    command.Parameters.Add(new SqlParameter("@kullanici_adi", SqlDbType.VarChar)).Value = kullaniciAdi;
                    command.Parameters.Add(new SqlParameter("@kullanici_soyadi", SqlDbType.VarChar)).Value = kullaniciSoyadi;
                    command.Parameters.Add(new SqlParameter("@kullanici_mail", SqlDbType.VarChar)).Value = kullaniciMail;
                    command.Parameters.Add(new SqlParameter("@kullanici_telefon", SqlDbType.BigInt)).Value = kullaniciTelefon;
                    command.Parameters.Add(new SqlParameter("@kullanici_tckimlik", SqlDbType.BigInt)).Value = kullaniciTckimlik;

                    // Open connection and execute the stored procedure
                    connection.Open();

                    // Execute stored procedure
                    int result = command.ExecuteNonQuery();

                    if (result > 0)
                    {
                        KullaniciBilgileri.kullaniciAdi = txtKullaniciAdi.Text ;
                        KullaniciBilgileri.kullaniciSoyadi = txtKullaniciSoyadi.Text;
                        KullaniciBilgileri.kullaniciEmail = txtKullaniciEmail.Text;
                        KullaniciBilgileri.kullaniciTelefon = Convert.ToInt64(txtKullaniciTelefon.Text);
                        ShowSuccessMessage("Bilgileriniz Başarılı Bir Şekilde Düzenlendi!");
                    }
                    else
                    {
                        // No rows were affected
                        ShowErrorMessage("Güncelleme işlemi başarısız oldu. Veritabanında eşleşen bir kullanıcı bulunamadı.");
                    }

                    connection.Close();
                }
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL-specific exceptions (e.g., connectivity issues, query problems)
                ShowErrorMessage("Veritabanı hatası oluştu: " + sqlEx.Message);
            }
            catch (Exception ex)
            {
                // Handle any other types of exceptions (e.g., general errors)
                ShowErrorMessage("Bir hata oluştu: " + ex.Message);
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
                $"alert('{message}'); window.location.href='Profile.aspx';", true);
        }
    }
}