using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_backup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["level"] != "flower_depot" || Convert.ToInt32(Session["userid"]) != 44)
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
    }
}