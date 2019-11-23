using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace sang
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = Class1.cn;
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from admin where username='" + TextBox01.Text + "' and mdps='" + TextBox3.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = TextBox01.Text;
                cn.Close();
                Response.Redirect("trait.aspx");
            }
            
            else
            {
                cn.Close();
                cn.Open();
                SqlCommand cmd1 = new SqlCommand("select * from donneur where cin='"+TextBox01.Text+"' and mdps='"+TextBox3.Text+"' and etat=1", cn);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    Session["id"] = TextBox01.Text;
                    cn.Close();
                    Response.Redirect("utilisateur.aspx");
                }
                else
                {
                    cn.Close();
                    Label4.Text = "Invalid Login";
                }
            }
        }
    }
}