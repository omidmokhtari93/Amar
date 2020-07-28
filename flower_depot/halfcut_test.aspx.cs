using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_halfcut_test : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
            {
                Session.Clear();
                Response.Redirect("../login.aspx");
            }
        Page.MaintainScrollPositionOnPostBack = true;
        GetFlowerInfo();
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
    }
    private void GetFlowerInfo()
    {
        var flowerId = Request.Params["fid"];
        if (string.IsNullOrEmpty(flowerId)) return;
        con.Open();
        SqlCommand selectflower = new SqlCommand(
            " SELECT flower_entry.id, flower_entry.flower_name AS flowname, " +
            "flower_entry.flower_code AS flowcode, flower_colors.flow_color AS flowcolor, " +
            " flower_colortypes.flow_colortype AS colortype, flower_formats.flow_format AS format," +
            " flower_customers.customer_name AS customer, " +
            " flower_companies.company_name AS company FROM flower_entry INNER JOIN " +
            " flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN " +
            " flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN " +
            " flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN " +
            " flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN " +
            " flower_companies ON flower_entry.company_name = flower_companies.company_id " +
            " where id = " + flowerId + "", con);
        SqlDataReader readflow = selectflower.ExecuteReader();
        if (readflow.Read())
        {
            lbl_flowname.Text = readflow["flowname"].ToString();
            lbl_flowcode.Text = readflow["flowcode"].ToString();
            lbl_color.Text = readflow["flowcolor"].ToString();
            lbl_colortype.Text = readflow["colortype"].ToString();
            lbl_format.Text = readflow["format"].ToString();
            lbl_customer.Text = readflow["customer"].ToString();
            lbl_company.Text = readflow["company"].ToString();
        }
        con.Close();
    }

    protected void btnBack_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }
}