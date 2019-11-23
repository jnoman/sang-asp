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
    public partial class liste_donneur : System.Web.UI.Page
    {
        SqlConnection cn = Class1.cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    remplire();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
        public void remplire()
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select cin,type_maldier,type_s,ville,telephone,email from donneur where etat=0", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cn.Close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[2].Text;
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("delete message where cin=" + id, cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            SqlCommand cmd = new SqlCommand("delete donneur where cin=" + id, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            remplire();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cin = GridView1.SelectedRow.Cells[4].Text;
            string d = GridView1.SelectedRow.Cells[3].Text;
            string id = GridView1.SelectedRow.Cells[2].Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("update donneur set etat=1 where cin=" + id, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            remplire();
        }
    }
}