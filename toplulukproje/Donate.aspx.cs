using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace toplulukproje
{
    public partial class Donate : System.Web.UI.Page
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
        public void BagisYap(object sender, EventArgs e)
        {
        basadon:
            string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
            string bagisYapanAdi = txtName.Text;
            string bagisYapanSoyadi = txtLastName.Text;
            string kurulusAdi = txtkurulus.Text;
            string aciklama = txtAciklama.Text;
            int bagisMiktari;
            DateTime bagisTarihi = DateTime.Now;
            if (int.TryParse(txtAmount.Text, out bagisMiktari))
            {
                // Successfully parsed, bagisMiktari now contains the integer value
            }
            else
            {
                // Handle invalid input (e.g., show an error message)
                ShowErrorMessage("Bağış miktarı giriniz.");
                goto basadon;
            }
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("InsertBagis", connection);
                command.CommandType = CommandType.StoredProcedure;

                // Parametreleri ekleyin
                command.Parameters.Add(new SqlParameter("@bagis_adi", SqlDbType.VarChar)).Value = bagisYapanAdi;
                command.Parameters.Add(new SqlParameter("@bagis_soyadi", SqlDbType.VarChar)).Value = bagisYapanSoyadi;
                command.Parameters.Add(new SqlParameter("@bagis_kurulus  ", SqlDbType.VarChar)).Value = kurulusAdi;
                command.Parameters.Add(new SqlParameter("@bagis_aciklama", SqlDbType.VarChar)).Value = aciklama;
                command.Parameters.Add(new SqlParameter("@bagis_miktar", SqlDbType.Money)).Value = bagisMiktari;
                command.Parameters.Add(new SqlParameter("@bagis_tarihi", SqlDbType.DateTime)).Value = bagisTarihi;

                connection.Open();

                // Stored Procedure'ü çalıştır
                int result = command.ExecuteNonQuery();

                connection.Close();
                ShowSuccessMessage("Bağış Başarılı, Ana Sayfaya Yönlendiriliyorsunuz!");
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
        public void YuzTL(object sender, EventArgs e)
        {
            txtAmount.Text = "100";
        }
        public void IkiTL(object sender, EventArgs e)
        {
            txtAmount.Text = "250";
        }
        public void BinTL(object sender, EventArgs e)
        {
            txtAmount.Text = "1000";
        }
    }
}