using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

namespace toplulukproje
{
    public static class KullaniciBilgileri
    {
        public static int kullaniciID { get; set; }
        public static string kullaniciAdi { get; set; }
        public static string kullaniciSoyadi { get; set; }
        public static string kullaniciEmail { get; set; }
        public static long kullaniciTelefon { get; set; }
        public static long kullaniciTckimlik { get; set; }
        public static DateTime kullaniciKayitTarihi { get; set; }
    }
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtKullaniciAdi.Text = KullaniciBilgileri.kullaniciAdi;
            txtKullaniciSoyadi.Text = KullaniciBilgileri.kullaniciSoyadi;
            txtKullaniciEmail.Text = KullaniciBilgileri.kullaniciEmail;
            txtKullaniciTelefon.Text = KullaniciBilgileri.kullaniciTelefon.ToString();
            txtKullaniciTckimlik.Text = KullaniciBilgileri.kullaniciTckimlik.ToString();
            txtKullaniciKayitTarihi.Text = KullaniciBilgileri.kullaniciKayitTarihi.ToString();

        }
        public void Bilgi(object sender, EventArgs e)
        {
            Response.Redirect("Profile2.aspx");
        }
        public void Sifre(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}