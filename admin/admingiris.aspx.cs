using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace webtasarimperformansi.admin
{
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection bag = new OleDbConnection();
            bag.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ayakkabi.mdb");
            
                bag.Open();
                OleDbCommand sorgu = new OleDbCommand("Select adi,sifre from admin", bag);
                OleDbDataReader oku = sorgu.ExecuteReader();
                while (oku.Read())
                {
                    if (TextBox1.Text == oku[0].ToString() && TextBox2.Text == oku[1].ToString())
                    {
                        Session["adminoturumu"] = TextBox1.Text;
                        Response.Redirect("uyeislem.aspx");
                    }
                    else
                        Image1.Visible = true;
                        Label1.Text = "Kullanıcı Adı veya Şifre yanlış.";
                    
                    
                } 
                bag.Close();
              
                
          
        }
    }
}