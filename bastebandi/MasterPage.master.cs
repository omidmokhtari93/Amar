using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        switch (Convert.ToInt32(Session["userid"]))
        {
            case 46:
                btnSabt.Visible = false;
                btnhavale.Visible = false;
                btnOrders.Visible = false;
                btnbackup.Visible = false;
                return;
            case 47:
                btnhavale.Visible = false;
                btndepo.Visible = false;
                btnOrders.Visible = false;
                btnbackup.Visible = false;
                return;
            case 34:
                return;
            case 11:
                return;
        }
        Session.Clear();
        Response.Redirect("../login.aspx");
    }

    protected void btn_exit_OnClick(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../login.aspx");
    }
}
