using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace sang
{
    public partial class message1 : System.Web.UI.Page
    {
        SqlConnection cn = Class1.cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    cn.Close();
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select cin,nom, prenom from donneur", cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource=dt;
                    GridView1.DataBind();

                    cn.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cin = GridView1.SelectedRow.Cells[1].ToString();
            Session["cin"] = cin;
            Response.Redirect("message2.aspx");
        }
    }
}