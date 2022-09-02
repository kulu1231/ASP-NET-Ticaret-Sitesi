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
    public partial class ara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kelime = Request.QueryString["k"].ToString();
            OleDbConnection bag = new OleDbConnection();
            bag.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/ayakkabi.mdb");
            bag.Open();
            OleDbDataAdapter a = new OleDbDataAdapter("select * from urunler where urun_adi like '%" + kelime + "%' ", bag);
            DataTable dt = new DataTable();
            a.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            bag.Close();
        }
    }
}