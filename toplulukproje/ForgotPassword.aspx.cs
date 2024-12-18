using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace toplulukproje
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void SifreDegistir(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            string kullaniciMail = txtEmail.Text;
            string kullaniciSifre = txtPassword.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("KullaniciSifreDuzenle", connection);
                command.CommandType = CommandType.StoredProcedure;
                // Parametreleri ekleyin
                command.Parameters.Add(new SqlParameter("@kullanici_mail", SqlDbType.VarChar)).Value = kullaniciMail;
                command.Parameters.Add(new SqlParameter("@kullanici_yenisifre", SqlDbType.VarChar)).Value = kullaniciSifre;

                connection.Open();

                // Stored Procedure'ü çalıştır
                int result = command.ExecuteNonQuery();

                connection.Close();
                ShowSuccessMessage("Şifre Değiştirme Başarılı!");
            }
        }
        private void ShowSuccessMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert",
                $"alert('{message}'); window.location.href='Login.aspx';", true);
        }
    }
}