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
	public partial class Contact1 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
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
        public void GeriBildirim(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            string kullaniciMail = txtEmail.Text;
            string geriBildirimKonu = txtSubject.Text;
            string geriBildirimAciklama = txtMessage.Text;
            DateTime geriBildirimTarihi = DateTime.Now;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("InsertIletisim", connection);
                command.CommandType = CommandType.StoredProcedure;
                
                // Parametreleri ekleyin
    
                command.Parameters.Add(new SqlParameter("@gb_aciklama", SqlDbType.VarChar)).Value = geriBildirimAciklama;
                command.Parameters.Add(new SqlParameter("@gb_konu", SqlDbType.VarChar)).Value = geriBildirimKonu;
                command.Parameters.Add(new SqlParameter("@gb_mail", SqlDbType.VarChar)).Value = kullaniciMail;
                command.Parameters.Add(new SqlParameter("@gb_tarih", SqlDbType.DateTime)).Value = geriBildirimTarihi;

                connection.Open();

                // Stored Procedure'ü çalıştır
                int result = command.ExecuteNonQuery();

                connection.Close();
                ShowSuccessMessage("Geri Bildirim Alındı, Ana Sayfaya Yönlendiriliyorsunuz!");
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