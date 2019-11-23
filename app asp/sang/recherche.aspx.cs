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
    public partial class recherche : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Add("--choisir votre ville--");
                DropDownList1.Items.Add("Safi");
                DropDownList1.Items.Add("Casablanca");
                DropDownList1.Items.Add("Fès");
                DropDownList1.Items.Add("Salé");
                DropDownList1.Items.Add("Tanger");
                DropDownList1.Items.Add("Marrakech");
                DropDownList1.Items.Add("Meknès");
                DropDownList1.Items.Add("Rabat");
                DropDownList2.Items.Add("--choisir votre type de sang--");
                DropDownList2.Items.Add("AB+");
                DropDownList2.Items.Add("AB-");
                DropDownList2.Items.Add("A+");
                DropDownList2.Items.Add("A-");
                DropDownList2.Items.Add("B+");
                DropDownList2.Items.Add("B-");
                DropDownList2.Items.Add("O+");
                DropDownList2.Items.Add("O-");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(!DropDownList1.Text.Equals("--choisir votre ville--") || !DropDownList1.Text.Equals("--choisir votre type de sang--"))
            {
                SqlConnection cn = Class1.cn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("exec type_sang '"+DropDownList1.Text+"','"+DropDownList2.Text+"'", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                cn.Close();
            }
            else
            {
                GridView1.DataSource = null;
                Response.Write("<script>alert('choisir votre ville et type de sang')</script>");
            }
        }
    }
}