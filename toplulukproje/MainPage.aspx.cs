using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace toplulukproje
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAuthenticated"] != null && (bool)Session["IsAuthenticated"] == true)
            {
                btnGiris.Visible = false;
                btnKayit.Visible = false;
                btnPanel.Visible = false;
                btnProfil.Visible = true;
                btnCikis.Visible = true;
            }
            else if (Session["IsAdminAuthenticated"] != null && (bool)Session["IsAdminAuthenticated"] == true)
            {
                btnGiris.Visible = false;
                btnKayit.Visible = false;
                btnPanel.Visible = true;
                btnProfil.Visible = false;
                btnCikis.Visible = true;
            }
            else
            {
                btnGiris.Visible = true;
                btnKayit.Visible = true;
                btnPanel.Visible = false;
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
        public void Panel(object sender, EventArgs e)
        {
            Response.Redirect("Panel.aspx");
        }
        public void Profil(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
        public void Cikis(object sender, EventArgs e)
        {
            Session["IsAuthenticated"] = null;
            Session["IsAdminAuthenticated"] = null;
            EtkinlikKayit.kayitKontrol1 = 0;
            EtkinlikKayit.kayitKontrol2 = 0;
            EtkinlikKayit.kayitKontrol3 = 0;
            EtkinlikKayit.kayitKontrol4 = 0;
            EtkinlikKayit.kayitKontrol5 = 0;
            Response.Redirect("MainPage.aspx");
        }
    }
}