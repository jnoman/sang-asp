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
    public partial class inscription : System.Web.UI.Page
    {
        int m;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DropDownList3.Items.Add("--choisir votre ville--");
                DropDownList3.Items.Add("Safi");
                DropDownList3.Items.Add("Casablanca");
                DropDownList3.Items.Add("Fès");
                DropDownList3.Items.Add("Salé");
                DropDownList3.Items.Add("Tanger");
                DropDownList3.Items.Add("Marrakech");
                DropDownList3.Items.Add("Meknès");
                DropDownList3.Items.Add("Rabat");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = Class1.cn;
                cn.Open();
                SqlCommand cmd = new SqlCommand("insert_donneur", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = cmd.Parameters.Add("@cin", SqlDbType.VarChar, 8);
                SqlParameter p2 = cmd.Parameters.Add("@nom", SqlDbType.VarChar, 14);
                SqlParameter p3 = cmd.Parameters.Add("@prenom", SqlDbType.VarChar, 14);
                SqlParameter p4 = cmd.Parameters.Add("@sexe", SqlDbType.VarChar, 5);
                SqlParameter p5 = cmd.Parameters.Add("@age", SqlDbType.Int);
                SqlParameter p6 = cmd.Parameters.Add("@poids", SqlDbType.Int);
                SqlParameter p7 = cmd.Parameters.Add("@type_s", SqlDbType.VarChar, 3);
                SqlParameter p8 = cmd.Parameters.Add("@maladier", SqlDbType.Bit);
                SqlParameter p9 = cmd.Parameters.Add("@type_maldier", SqlDbType.VarChar, 300);
                SqlParameter p10 = cmd.Parameters.Add("@ville", SqlDbType.VarChar, 14);
                SqlParameter p11 = cmd.Parameters.Add("@mdps", SqlDbType.VarChar, 14);
                SqlParameter p12 = cmd.Parameters.Add("@dernier_donnation", SqlDbType.Date);
                SqlParameter p13 = cmd.Parameters.Add("@ret", SqlDbType.VarChar, 300);
                SqlParameter p14 = cmd.Parameters.Add("@telephone", SqlDbType.Int);
                SqlParameter p15 = cmd.Parameters.Add("@email", SqlDbType.VarChar, 30);
                p13.Direction = ParameterDirection.Output;
                p1.Value = TextBox01.Text;
                p2.Value = TextBox2.Text;
                p3.Value = TextBox3.Text;
                p4.Value = DropDownList1.Text;
                p5.Value = TextBox4.Text;
                p6.Value = TextBox5.Text;
                p7.Value = DropDownList2.Text;
                p8.Value = m;
                p9.Value = TextBox8.Text;
                p10.Value = DropDownList2.Text;
                p11.Value = TextBox9.Text;
                p12.Value = "01/01/2000";
                p14.Value = TextBox6.Text;
                p15.Value = TextBox7.Text;
                cmd.ExecuteNonQuery();
                if (p13.Value.ToString().Equals(""))
                {
                    cn.Close();
                    Response.Write("</script>alert('votre compte est ajouter avec succes')</script>");
                    Response.Redirect("accueil.aspx");
                }
                else
                {
                    Label3.Text = p4.Value.ToString();
                }
                cn.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton2.Checked)
            {
                TextBox8.Visible = false;
                m = 0;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                TextBox8.Visible = true;
                m = 1;
            }
        }
    }
}