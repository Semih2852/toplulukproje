using System;
using System.Data;
using System.Web.UI;
using System.Data.SqlClient;

namespace toplulukproje
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void KayitOl(object sender, EventArgs e)
        {   
            basadon:
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            string kullaniciAdi = txtFirstName.Text;
            string kullaniciSoyadi = txtLastName.Text;
            string kullaniciMail = txtEmail.Text;
            string kullaniciSifre = txtPassword.Text;
            long kullaniciTelefon;
            long kullaniciTckimlik;
            DateTime kullaniciKayitTarihi = DateTime.Now;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("InsertKullaniciBilgileri", connection);
                command.CommandType = CommandType.StoredProcedure;
                if (long.TryParse(txtTcNo.Text, out kullaniciTckimlik))
                {

                }
                else
                {
                    ShowErrorMessage("T.C. Kimlik Numarası Geçerli Değil!");
                    goto basadon;
                }
                if (long.TryParse(txtTelefon.Text, out kullaniciTelefon))
                {

                }
                else
                {
                    ShowErrorMessage("Telefon Numarası Geçerli Değil!");
                    goto basadon;
                }

                // Parametreleri ekleyin
                command.Parameters.Add(new SqlParameter("@kullanici_adi", SqlDbType.VarChar)).Value = kullaniciAdi;
                command.Parameters.Add(new SqlParameter("@kullanici_soyadi", SqlDbType.VarChar)).Value = kullaniciSoyadi;
                command.Parameters.Add(new SqlParameter("@kullanici_mail", SqlDbType.VarChar)).Value = kullaniciMail;
                command.Parameters.Add(new SqlParameter("@kullanici_sifre", SqlDbType.VarChar)).Value = kullaniciSifre;
                command.Parameters.Add(new SqlParameter("@kullanici_telefon", SqlDbType.BigInt)).Value = kullaniciTelefon;
                command.Parameters.Add(new SqlParameter("@kullanici_tckimlik", SqlDbType.BigInt)).Value = kullaniciTckimlik;
                command.Parameters.Add(new SqlParameter("@kullanici_kayittarihi", SqlDbType.DateTime)).Value = kullaniciKayitTarihi;

                connection.Open();

                // Stored Procedure'ü çalıştır
                int result = command.ExecuteNonQuery();

                connection.Close();
                ShowSuccessMessage("Kayıt Başarılı, Giriş Sayfasına Yönlendiriliyorsunuz!");
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
                $"alert('{message}'); window.location.href='Login.aspx';", true);
        }
    }
}