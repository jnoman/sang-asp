using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace sang
{
    public partial class trait : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    SqlConnection cn = Class1.cn;
                    cn.Open();
                    SqlCommand cmd1 = new SqlCommand("select numbre_message from admin", cn);
                    SqlDataReader dr1 = cmd1.ExecuteReader();
                    dr1.Read();
                    if (dr1[0].ToString() != "0")
                    {
                        HyperLink1.Text += "(" + dr1[0].ToString() + ")";
                        HyperLink1.BackColor = System.Drawing.Color.Red;
                    }
                    cn.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("liste_donneur.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("liste_donnation.aspx");
        }
    }
}