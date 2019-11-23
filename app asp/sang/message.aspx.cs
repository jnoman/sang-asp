using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace sang
{
    public partial class message : System.Web.UI.Page
    {
        SqlConnection cn = Class1.cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    cn.Open();
                    SqlCommand cmd3 = new SqlCommand("update donneur set numbre_message=0 where cin='" + Session["id"].ToString() + "'", cn);
                    cmd3.ExecuteNonQuery();
                    cn.Close();
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select date_message,text_message,type from message where cin='" + Session["id"].ToString() + "' order by date_message", cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i][2].ToString().Equals("s"))
                        {
                            Label l1 = new Label();
                            l1.BackColor = Color.Blue;
                            l1.Text = dt.Rows[i][1].ToString();
                            Panel1.Controls.Add(l1);
                        }
                        else
                        {
                            Label l1 = new Label();
                            l1.Text = dt.Rows[i][1].ToString();
                            Panel1.Controls.Add(l1);
                        }
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
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into message values('"+ Session["id"].ToString() + "','"+TextArea1.InnerText+"',GETDATE(),'s')", cn);
            cmd.ExecuteNonQuery();
            TextArea1.InnerText = "";
            cn.Close();
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("update admin set numbre_message=numbre_message+1", cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
        }
    }
}