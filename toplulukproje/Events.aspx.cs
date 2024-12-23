using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace toplulukproje
{
    public static class EtkinlikKayit
    {
        public static int kayitKontrol1 = 0;
        public static int kayitKontrol2 = 0;
        public static int kayitKontrol3 = 0;
        public static int kayitKontrol4 = 0;
        public static int kayitKontrol5 = 0;
    }
    public partial class Events : System.Web.UI.Page
    {
        private int etkinlikID;
        string connectionString = "Data Source=DESKTOP-NJB41HI\\MSSQLSERVER_2022;Initial Catalog=gonullutopluluk;Integrated Security=True;Encrypt=False;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAuthenticated"] != null && (bool)Session["IsAuthenticated"] == true)
            {
                if (EtkinlikKayit.kayitKontrol1 == 0)
                {
                    btnKayit1.Visible = true;
                }
                else
                {
                    btnKayit1.Visible = false;
                }
                if (EtkinlikKayit.kayitKontrol2 == 0)
                {
                    btnKayit2.Visible = true;
                }
                else
                {
                    btnKayit2.Visible = false;
                }
                if (EtkinlikKayit.kayitKontrol3 == 0)
                {
                    btnKayit3.Visible = true;
                }
                else
                {
                    btnKayit3.Visible = false;
                }
                if (EtkinlikKayit.kayitKontrol4 == 0)
                {
                    btnKayit4.Visible = true;
                }
                else
                {
                    btnKayit4.Visible = false;
                }
                if (EtkinlikKayit.kayitKontrol5 == 0)
                {
                    btnKayit5.Visible = true;
                }
                else
                {
                    btnKayit5.Visible = false;
                }
                EtkinlikGoster(connectionString);
            }
            else if (Session["IsAdminAuthenticated"] != null && (bool)Session["IsAdminAuthenticated"] == true)
            {
                ShowErrorMessage("Etkinliklere Yalnızca Kullanıcılar Kayıt Olabilir!");
            }
            else
            {
                ShowErrorMessage("Bu sayfaya erişebilmek için GİRİŞ YAPMALISINIZ!");
            }
        }
        public void EtkinlikKayitOl(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.ID == "btnKayit1")
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    etkinlikID = 1; // Example event ID (can be dynamic)
                    EtkinlikKayit.kayitKontrol1 = 1;

                    // Create the command for the stored procedure
                    SqlCommand command = new SqlCommand("EtkinlikKayitOl", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters to the command
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = KullaniciBilgileri.kullaniciID;
                    command.Parameters.Add(new SqlParameter("@etkinlik_id", SqlDbType.Int)).Value = etkinlikID;

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the stored procedure
                        command.ExecuteNonQuery();
                        ShowSuccessMessage("Kayıt Başarılı!");
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
            else if (clickedButton.ID == "btnKayit2")
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    etkinlikID = 2; // Example event ID (can be dynamic)
                    EtkinlikKayit.kayitKontrol2 = 1;

                    // Create the command for the stored procedure
                    SqlCommand command = new SqlCommand("EtkinlikKayitOl", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters to the command
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = KullaniciBilgileri.kullaniciID;
                    command.Parameters.Add(new SqlParameter("@etkinlik_id", SqlDbType.Int)).Value = etkinlikID;

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the stored procedure
                        command.ExecuteNonQuery();
                        ShowSuccessMessage("Kayıt Başarılı!");
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
             else if (clickedButton.ID == "btnKayit3")
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    etkinlikID = 3; // Example event ID (can be dynamic)

                    EtkinlikKayit.kayitKontrol3 = 1;

                    // Create the command for the stored procedure
                    SqlCommand command = new SqlCommand("EtkinlikKayitOl", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters to the command
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = KullaniciBilgileri.kullaniciID;
                    command.Parameters.Add(new SqlParameter("@etkinlik_id", SqlDbType.Int)).Value = etkinlikID;

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the stored procedure
                        command.ExecuteNonQuery();
                        ShowSuccessMessage("Kayıt Başarılı!");
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
             else if (clickedButton.ID == "btnKayit4")
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    etkinlikID = 4; // Example event ID (can be dynamic)

                    EtkinlikKayit.kayitKontrol4 = 1;

                    // Create the command for the stored procedure
                    SqlCommand command = new SqlCommand("EtkinlikKayitOl", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters to the command
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = KullaniciBilgileri.kullaniciID;
                    command.Parameters.Add(new SqlParameter("@etkinlik_id", SqlDbType.Int)).Value = etkinlikID;

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the stored procedure
                        command.ExecuteNonQuery();
                        ShowSuccessMessage("Kayıt Başarılı!");
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
             else if (clickedButton.ID == "btnKayit5")
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    etkinlikID = 5; // Example event ID (can be dynamic)

                    EtkinlikKayit.kayitKontrol5 = 1;

                    // Create the command for the stored procedure
                    SqlCommand command = new SqlCommand("EtkinlikKayitOl", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters to the command
                    command.Parameters.Add(new SqlParameter("@kullanici_id", SqlDbType.Int)).Value = KullaniciBilgileri.kullaniciID;
                    command.Parameters.Add(new SqlParameter("@etkinlik_id", SqlDbType.Int)).Value = etkinlikID;

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the stored procedure
                        command.ExecuteNonQuery();
                        ShowSuccessMessage("Kayıt Başarılı!");
                    }
                    catch (Exception ex)
                    {
                        // Handle any errors
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
        }
        private void EtkinlikGoster(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = new SqlCommand("EtkinlikGetir", connection);
                    SqlCommand command1 = new SqlCommand("SELECT * FROM dbo.fn_etkinlik_detaylari()", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        int index = 1; // Dinamik kontrol için index
                        while (reader.Read())
                        {
                            switch (index)
                            {
                                case 1:
                                    txtEtkinlikAdi1.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikAciklama1.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                case 2:
                                    txtEtkinlikAdi2.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikAciklama2.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                case 3:
                                    txtEtkinlikAdi3.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikAciklama3.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                 case 4:
                                    txtEtkinlikAdi4.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikAciklama4.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                                 case 5:
                                    txtEtkinlikAdi5.Text = reader["etkinlik_adi"].ToString();
                                    txtEtkinlikAciklama5.Text = reader["etkinlik_aciklama"].ToString();
                                    break;
                            }
                            index++;
                            if (index > 5) break; // Sadece 3 çalışanı göster
                        }

                        if (index == 1) // Hiç kayıt gelmediğinde
                        {
                        }
                    }
                    using (SqlDataReader reader1 = command1.ExecuteReader())
                    {
                        int index = 1; // Dinamik kontrol için index
                        while (reader1.Read())
                        {
                            switch (index)
                            {
                                case 1:
                                    txtEtkinlikYeri1.Text = "Etkinlik Yeri: " + reader1["etkinlik_yeri"].ToString();
                                    txtEtkinlikBaslangicTarihi1.Text = "Etkinlik Başlangıç Tarihi: "+reader1["etkinlik_baslamatarihi"].ToString();
                                    txtEtkinlikBitisTarihi1.Text = "Etkinlik Bitiş Tarihi: " + reader1["etkinlik_bitistarihi"].ToString();
                                    break;
                                case 2:
                                    txtEtkinlikYeri2.Text = "Etkinlik Yeri: " + reader1["etkinlik_yeri"].ToString();
                                    txtEtkinlikBaslangicTarihi2.Text = "Etkinlik Başlangıç Tarihi: " + reader1["etkinlik_baslamatarihi"].ToString();
                                    txtEtkinlikBitisTarihi2.Text = "Etkinlik Bitiş Tarihi: " + reader1["etkinlik_bitistarihi"].ToString();
                                    break;
                                case 3:
                                    txtEtkinlikYeri3.Text = "Etkinlik Yeri: " + reader1["etkinlik_yeri"].ToString();
                                    txtEtkinlikBaslangicTarihi3.Text = "Etkinlik Başlangıç Tarihi: " + reader1["etkinlik_baslamatarihi"].ToString();
                                    txtEtkinlikBitisTarihi3.Text = "Etkinlik Bitiş Tarihi: " + reader1["etkinlik_bitistarihi"].ToString();
                                    break;
                                case 4:
                                    txtEtkinlikYeri4.Text = "Etkinlik Yeri: " + reader1["etkinlik_yeri"].ToString();
                                    txtEtkinlikBaslangicTarihi4.Text = "Etkinlik Başlangıç Tarihi: " + reader1["etkinlik_baslamatarihi"].ToString();
                                    txtEtkinlikBitisTarihi4.Text = "Etkinlik Bitiş Tarihi: " + reader1["etkinlik_bitistarihi"].ToString();
                                    break;
                                case 5:
                                    txtEtkinlikYeri5.Text = "Etkinlik Yeri: " + reader1["etkinlik_yeri"].ToString();
                                    txtEtkinlikBaslangicTarihi5.Text = "Etkinlik Başlangıç Tarihi: " + reader1["etkinlik_baslamatarihi"].ToString();
                                    txtEtkinlikBitisTarihi5.Text = "Etkinlik Bitiş Tarihi: " + reader1["etkinlik_bitistarihi"].ToString();
                                    break;
                            }
                            index++;
                            if (index > 5) break;
                        }
                    }
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        private void ShowErrorMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert",
                $"alert('{message}'); window.location.href='Activities.aspx';", true);
        }
        private void ShowSuccessMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "SuccessAlert",
                $"alert('{message}'); window.location.href='Events.aspx';", true);
        }
    }
}
