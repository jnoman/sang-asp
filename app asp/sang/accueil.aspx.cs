using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sang
{
    public partial class accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("recherche.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscription.aspx");
        }
    }
}