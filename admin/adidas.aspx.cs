using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ticaretsitesi.admin
{
    public partial class adidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection bag = new OleDbConnection();
            bag.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ayakkabi.mdb");
            bag.Open();
            OleDbCommand sorgu = new OleDbCommand("insert into urunler(resim,marka,urun_adi,fiyat,kategori_id) values('" + resim.Text + "','" + marka.Text + "','" + urun_adi.Text + "','" + fiyat.Text + "','2')",bag);
            sorgu.ExecuteNonQuery();
            bag.Close();
            resim.Text = "";
            marka.Text = "";
            urun_adi.Text = "";
            fiyat.Text = "";
            
        }
    }
}