using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ticaretsitesi
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void giris_Click(object sender, EventArgs e)
        {
            OleDbConnection giris = new OleDbConnection();
            giris.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ayakkabi.mdb");
            giris.Open();
            OleDbCommand sorgu = new OleDbCommand("select eposta,sifre,adi from users", giris);
            OleDbDataReader oku = sorgu.ExecuteReader();
            while(oku.Read())
            {
                if(eposta.Text == oku[0].ToString() && sifreniz.Text == oku[1].ToString())
                {
                    Session["oturum"] = oku[2].ToString();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Label1.Text = "Kullanıcı Adı veya Yanlış Şifre";
                }
            }
            giris.Close();
        }

        protected void uyeol_Click(object sender, EventArgs e)
        {
            OleDbConnection kayit = new OleDbConnection();
            kayit.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ayakkabi.mdb");
            kayit.Open();
            OleDbCommand sorgu = new OleDbCommand("insert into users(adi,soyadi,eposta,tel,sifre,sifretekrar,cinsiyet,dogumtarihi) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", kayit);
            sorgu.ExecuteNonQuery();
            kayit.Close();

            Response.Redirect("index.aspx");
        }
    }
}