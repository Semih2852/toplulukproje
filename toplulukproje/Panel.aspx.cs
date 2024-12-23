using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace toplulukproje
{
    public partial class Panel : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
        protected void Page_Load(object sender, EventArgs e)
        {

            // Kullanıcı oturum durumuna göre butonları görünürlük ayarı
            if (Session["IsAdminAuthenticated"] != null && (bool)Session["IsAdminAuthenticated"] == true)
            {
                if (!IsPostBack) // Sayfa ilk kez yüklendiğinde çalışır
                {
                    
                }
            }
            else
            {
                ShowErrorMessage("Bu Sayfaya Erişiminiz Yok!");
            }
        }

        public void CalisanGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM calisan_bilgileri", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void KullaniciGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Correct SQL query syntax to call the function without parameters
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM dbo.fn_kullanici_detaylari()", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // Fill the dataset with the result from the function

                    // Bind the first table from the dataset to the GridView
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void YetkiliGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM yetkili_bilgileri", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void GeriBildirimGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM geribildirim", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void EtkinlikTumGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Correct SQL query syntax to call the function without parameters
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM dbo.fn_etkinlik_panel()", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // Fill the dataset with the result from the function

                    // Bind the first table from the dataset to the GridView
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void DuyuruGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM duyurular", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        public void BagisGoster(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Correct SQL query syntax to call the function without parameters
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM dbo.fn_bagis_detaylari()", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // Fill the dataset with the result from the function

                    // Bind the first table from the dataset to the GridView
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
            }
        }
        private void ShowErrorMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert",
                $"alert('{message}'); window.location.href='MainPage.aspx';", true);
        }
    }
}
