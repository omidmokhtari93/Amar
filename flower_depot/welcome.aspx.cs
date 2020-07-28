using System;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
        //        if ((int) Session["userid"] == 31 || (int) Session["userid"] == 33 || (int) Session["userid"] == 24) return;
        //        Session.Clear();
        //        Response.Redirect("../login.aspx");
    }
}