using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ticaretsitesi
{
    public partial class kullanicisablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["oturum"]==null)
            {
                Label4.Visible = false;
                kapat.Visible = false;
            }
            else
            {
                Label4.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Label4.Text = "Hoşgeldin " + Session["oturum"];
                kapat.Visible = true;
            }

            
        }

        protected void kapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ara.aspx?k=" + TextBox1.Text.Trim());
        }
     
    }
}