using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 40;
    }
    protected void btn_exit_OnClick(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../login.aspx");
    }
    protected void btnnewflower_OnClick(object sender, EventArgs e)
    {
        Session["flower_id"] = null;
        Session["add_flower_arrange"] = null;
        Response.Redirect("../flower_depot/add_new_flower.aspx");
    }
    protected void btn_search_flower_OnClick(object sender, EventArgs e)
    {
        Session["show_order_forms"] = null;
        Session["report"] = null;
        Session["back_to_previous_page"] = null;
        Response.Redirect("../flower_depot/search_flower.aspx");
    }

    protected void btn_report_OnClick(object sender, EventArgs e)
    {

        Response.Redirect("../flower_depot/report.aspx");
    }

    protected void btn_services_OnClick(object sender, EventArgs e)
    {

        Response.Redirect("../flower_depot/services.aspx");
    }

    protected void btn_program_OnClick(object sender, EventArgs e)
    {

        Response.Redirect("../flower_depot/program.aspx");
    }
    protected void btn_copy_items_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/items_copy.aspx");
    }

    protected void btn_edit_controls_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/edit_controls.aspx");
    }

    protected void btnBargkhorooj_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/khorooj.aspx");
    }

    protected void btnmoadel_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("moadel.aspx");
    }

    protected void btn_backup_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("backup.aspx");
    }
}
