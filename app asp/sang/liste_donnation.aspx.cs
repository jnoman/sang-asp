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
    public partial class admin : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[2].Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("delete rendez_vous where id_rendez="+id, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            remplire();
        }
        public void remplire()
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from rendez_vous where date_rendezvous<=getdate()", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cin = GridView1.SelectedRow.Cells[4].Text;
            string d = GridView1.SelectedRow.Cells[3].Text;
            string id = GridView1.SelectedRow.Cells[2].Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("delete rendez_vous where id_rendez=" + id, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("insert into donnation values('" + cin + "','" + d + "')", cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            string req = "update donneur set dernier_rendez='" + d + "' where cin='" + cin + "'";
            SqlCommand cmd2 = new SqlCommand(req, cn);
            Response.Redirect("<script>alert('"+req+"')</script>");
            cmd2.ExecuteNonQuery();
            cn.Close();
            remplire();
        }
    }
}