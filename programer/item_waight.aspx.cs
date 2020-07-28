using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string date_end = "1393/01/01";
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
       

        cnn.Open();
        SqlCommand cmd_tarikh = new SqlCommand("select tarikh from users where leveluser=12", cnn);
        SqlDataReader dr_tarikh = cmd_tarikh.ExecuteReader();
        if (dr_tarikh.Read())

            lbltarikh.Text = Convert.ToString(dr_tarikh["tarikh"]);
        else
            lbltarikh.Text = "--------";
        cnn.Close();
      
        

    }
   
   

    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }
    
}