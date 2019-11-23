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
    public partial class utilisateur : System.Web.UI.Page
    {
        SqlConnection cn = Class1.cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select id_donnation,date_donnation from donnation where cin='"+Session["id"].ToString()+"'", cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    cn.Close();
                    cn.Open();
                    SqlCommand cmd1 = new SqlCommand("select numbre_message from donneur where cin='" + Session["id"].ToString() + "'", cn);
                    SqlDataReader dr1 = cmd1.ExecuteReader();
                    dr1.Read();
                    if (dr1[0].ToString()!="0")
                    {
                        HyperLink1.Text += "(" + dr1[0].ToString() + ")";
                        HyperLink1.BackColor = System.Drawing.Color.Red;
                    }
                    cn.Close();
                    cn.Open();
                    SqlCommand cmd2 = new SqlCommand("autorisation", cn);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    SqlParameter p1 = cmd2.Parameters.Add("@cin", SqlDbType.VarChar, 8);
                    SqlParameter p2 = cmd2.Parameters.Add("@ret", SqlDbType.Char,1);
                    p1.Value = Session["id"].ToString();
                    p2.Direction = ParameterDirection.Output;
                    cmd2.ExecuteNonQuery();
                    if (!p2.Value.ToString().Equals("0"))
                    {
                        Panel1.Visible = true;
                        cn.Close();
                        cn.Open();
                        SqlCommand cmd3 = new SqlCommand("P_rendez_vous", cn);
                        cmd3.CommandType = CommandType.StoredProcedure;
                        SqlParameter p3 = cmd3.Parameters.Add("@ret", SqlDbType.Date);
                        p3.Direction = ParameterDirection.Output;
                        cmd3.ExecuteNonQuery();
                        Label2.Text = p3.Value.ToString();
                        TextBox2.Text = p3.Value.ToString();
                        cn.Close();
                    }
                    else
                    {
                        cn.Close();
                        Panel1.Visible = false;
                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Convert.ToDateTime(TextBox2.Text)>= Convert.ToDateTime(Label2.Text))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("insert into rendez_vous values('"+TextBox2.Text+"','"+ Session["id"].ToString() + "')", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('votre randez_vouz est ajouter avec succes')</script>");
                Response.Redirect("accueil.aspx");
            }
            else
            {
                Response.Write("<script>alert('date invalid')</script>");
            }
        }
    }
}