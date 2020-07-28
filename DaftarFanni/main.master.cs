using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DaftarFanni_main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        switch (Convert.ToInt32(Session["userid"]))
        {
            case 48:
                return;
        }
        Session.Clear();
        Response.Redirect("../login.aspx");
    }

    protected void OnServerClick(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../login.aspx");
    }
}
