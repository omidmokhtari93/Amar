using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Channels;
using System.Web;

public partial class search_flower : System.Web.UI.Page
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
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
        if (Page.IsPostBack) return;
        if (!string.IsNullOrEmpty(Request.Params["fid"]))
        {
            flowerId.Value = Request.Params["fid"];
            show_flower_info(Convert.ToInt32(Request.Params["fid"]));
            get_arrange_info();
        }
    }

    protected void btn_search_OnClick(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txt_flower_name.Text) || !string.IsNullOrEmpty(txt_flower_code.Text) ||
            drp_flower_customer.SelectedValue != "-1" || drpday.SelectedValue != "روز" ||
            drpmonth.SelectedValue != "ماه" || drpyear.SelectedValue != "سال")
        {
            var drp = int.Parse(drp_flower_customer.SelectedValue);
            var tarikh = drpday.SelectedValue != "روز" && drpmonth.SelectedValue != "ماه" &&
                         drpyear.SelectedValue != "سال"
                ? drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text
                : "";
            sqlSearchSource.FilterExpression = " (flower_name LIKE '%" + txt_flower_name.Text +
                                               "%' OR flower_name = '')" +
                                               " AND (flower_code like '%" + txt_flower_code.Text +
                                               "%' OR flower_code = '')" +
                                               " AND (customername = " + drp + " or " +
                                               drp_flower_customer.SelectedValue + " = -1)" +
                                               " AND (enter_date like '%" + tarikh + "%' OR enter_date = '')";
            grid_show_flowers.DataBind();
            grid_show_flowers.Visible = true;
        }

        FlowerName.Value = string.IsNullOrEmpty(txt_flower_name.Text) ? "" : txt_flower_name.Text;
        CustomerID.Value = drp_flower_customer.SelectedValue == "-1" ? "-1" : drp_flower_customer.SelectedValue;
    }

    protected void grid_show_flowers_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "show_all")
        {
            Session["rowIndex"] = int.Parse(e.CommandArgument.ToString());
            var flowId = (int)grid_show_flowers.DataKeys[Convert.ToInt32(Session["rowIndex"])]["id"];
            Session["report"] = flowId;
            flowerId.Value = flowId.ToString();
            show_flower_info(flowId);
            get_arrange_info();
        }
    }

    protected void drp_form_number_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_arrange_info();
    }

    private void get_arrange_info()
    {
        try
        {
            con.Open();
            SqlCommand arrangeinfo = new SqlCommand("SELECT dbo.flower_forms_entry.form_number, " +
                                                     "dbo.arrange_type.arrange_type as arrangetype, " +
                                                     "dbo.flower_dimensions.flow_dimension as dimension, " +
                                                     "dbo.flower_forms_entry.sheetcount as sheetcount, " +
                                                     "dbo.flower_forms_entry.last_enter_date as last_enter_date, " +
                                                     "dbo.flower_forms_entry.mark_type as mark," +
                                                     "dbo.flower_forms_entry.comment as comment," +
                                                     "dbo.flower_forms_entry.flower_id," +
                                                     "dbo.flower_forms_entry.id " +
                                                     "FROM dbo.flower_forms_entry INNER JOIN " +
                                                     "dbo.arrange_type ON dbo.flower_forms_entry.arrange_type = dbo.arrange_type.arrange_id INNER JOIN " +
                                                     "dbo.flower_dimensions ON dbo.flower_forms_entry.dimension = dbo.flower_dimensions.dimension_id " +
                                                     " where (id = " + drp_form_number.SelectedValue + ") ", con);
            SqlDataReader readarrangeinfo = arrangeinfo.ExecuteReader();
            if (readarrangeinfo.Read())
            {
                lbl_arrange_type.Text = readarrangeinfo["arrangetype"].ToString();
                lbl_dimension.Text = readarrangeinfo["dimension"].ToString();
                lbl_arrange_sheet_count.Text = readarrangeinfo["sheetcount"].ToString();
                lbl_mark.Text = readarrangeinfo["mark"].ToString();
                lbl_arrange_comment.Text = readarrangeinfo["comment"].ToString();
                lbl_lastenterdate.Text = readarrangeinfo["last_enter_date"].ToString();
            }
            arrange_items.FilterExpression = "form_id = " + drp_form_number.SelectedValue + " ";
            grid_show_items.DataBind();
            pnl_show_arrange_info.Visible = true;
            con.Close();
            int i = drp_form_number.Items.Count - 1;
            if (drp_form_number.SelectedIndex == 0)
            {
                btn_previous.CssClass = "glyphicon glyphicon-minus-sign";
                btn_next.CssClass = "glyphicon glyphicon-triangle-right";
                btn_previous.Enabled = false;
                btn_next.Enabled = true;
            }
            else if (drp_form_number.SelectedIndex == i)
            {
                btn_next.CssClass = "glyphicon glyphicon-minus-sign";
                btn_previous.CssClass = "glyphicon glyphicon-triangle-left";
                btn_previous.Enabled = true;
                btn_next.Enabled = false;
            }
            else
            {
                btn_previous.CssClass = "glyphicon glyphicon-triangle-left";
                btn_next.CssClass = "glyphicon glyphicon-triangle-right";
                btn_previous.Enabled = true;
                btn_next.Enabled = true;
            }
        }
        catch
        {
        }
    }

    protected void grid_show_orders_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "show_forms")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            OrderId.Value = grid_show_orders.DataKeys[rowIndex]["id"].ToString();
            grid_show_order_forms.DataBind();
        }
    }

    protected void btn_edit_flower_info_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/edit_flower.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }

    private void show_flower_info(int flowId)
    {
        pnl_show_search_controls.Visible = false;
        pnl_show_report.Visible = true;
        con.Open();
        SqlCommand selectflower = new SqlCommand(
            " SELECT dbo.flower_entry.id, dbo.flower_entry.flower_name as flowname , " +
            " dbo.flower_entry.flower_code as flowcode , dbo.flower_colors.flow_color AS flowcolor, " +
            " dbo.flower_colortypes.flow_colortype AS colortype, dbo.flower_formats.flow_format AS format," +
            " dbo.flower_customers.customer_name AS customer, " +
            " dbo.flower_companies.company_name AS company, " +
            " dbo.flower_entry.enter_date as enterdate ," +
            " dbo.flower_entry.comment as comment ," +
            " dbo.flower_entry.customer_name as cusid" +
            " FROM dbo.flower_entry INNER JOIN " +
            " dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN " +
            " dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN " +
            " dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id INNER JOIN " +
            " dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id INNER JOIN " +
            " dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
            " where id = " + flowId + "", con);
        SqlDataReader readflowerreport = selectflower.ExecuteReader();
        if (readflowerreport.Read())
        {
            Page.Title = readflowerreport["flowname"].ToString();
            lbl_header_flowname.Text = readflowerreport["flowname"].ToString();
            lbl_code.Text = readflowerreport["flowcode"].ToString();
            lbl_color.Text = readflowerreport["flowcolor"].ToString();
            lbl_colortype.Text = readflowerreport["colortype"].ToString();
            lbl_format.Text = readflowerreport["format"].ToString();
            lbl_customer.Text = readflowerreport["customer"].ToString();
            lbl_company.Text = readflowerreport["company"].ToString();
            lbl_enterdate.Text = readflowerreport["enterdate"].ToString();
            lbl_comment.Text = readflowerreport["comment"].ToString();
        }
        string imgFilePath = "uploaded_pictures/" + flowId + ".JPG";
        img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
        img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
        pnl_show_arrange_info.Visible = false;
        drp_form_number.DataBind();
        con.Close();
        if (drp_form_number.Items.Count > 0)
        {
            arrange_items.FilterExpression = "form_id = " + drp_form_number.SelectedValue + " ";
        }

    }

    protected void btn_add_flower_arrange_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/flower_arrange.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }

    protected void btn_add_flower_items_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/flower_arrange_items.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }

    protected void btn_add_flower_order_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/order_entry.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }

    protected void btn_show_cuttedandremain_OnClick(object sender, EventArgs e)
    {
        CalculateFromsItemsCount();
    }

    protected void btn_edit_halfcut_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/half_cut.aspx?fid=" + flowerId.Value);
    }

    protected void btn_previous_OnClick(object sender, EventArgs e)
    {
        try
        {
            int counter = drp_form_number.SelectedIndex;
            counter--;
            drp_form_number.SelectedIndex = counter;
            get_arrange_info();
        }
        catch
        {
        }
    }

    protected void btn_next_OnClick(object sender, EventArgs e)
    {
        try
        {
            int counter = drp_form_number.SelectedIndex;
            counter++;
            drp_form_number.SelectedIndex = counter;
            get_arrange_info();
        }
        catch
        {
        }
    }

    protected void btn_back_to_search_OnClick(object sender, EventArgs e)
    {
        Session["show_order_forms"] = null;
        if (Request.Params["fname"] == null)
        {
            BackToSearchPanel(CustomerID.Value, FlowerName.Value);
        }
        else
        {
            BackToSearchPanel(Request.Params["cid"], Request.Params["fname"]);
        }

    }

    public void BackToSearchPanel(string customer, string flowername)
    {
        if (customer == "" && flowername == "")
        {
            pnl_show_search_controls.Visible = true;
            pnl_show_report.Visible = false;
            grid_show_flowers.Visible = false;
            return;
        }
        if (customer != "-1" && string.IsNullOrEmpty(flowername))
        {
            pnl_show_search_controls.Visible = true;
            pnl_show_report.Visible = false;
            grid_show_flowers.Visible = true;
            sqlSearchSource.FilterExpression = "customername = " + customer + " or " + customer + " = -1";
            drp_flower_customer.DataBind();
            drp_flower_customer.SelectedValue = customer;
            grid_show_flowers.DataBind();
            if (Session["rowIndex"] != null)
            {
                grid_show_flowers.Rows[Convert.ToInt32(Session["rowIndex"])].Cells[1].BackColor = Color.FromArgb(255, 176, 176);
            }
            return;
        }
        if (!string.IsNullOrEmpty(flowername) && customer == "-1")
        {
            pnl_show_search_controls.Visible = true;
            pnl_show_report.Visible = false;
            grid_show_flowers.Visible = true;
            sqlSearchSource.FilterExpression = "flower_name LIKE '%" + flowername + "%' OR flower_name LIKE '%" + flowername + "%'";
            grid_show_flowers.DataBind();
            if (Session["rowIndex"] != null)
            {
                grid_show_flowers.Rows[Convert.ToInt32(Session["rowIndex"])].Cells[1].BackColor = Color.FromArgb(255, 176, 176);
            }
        }

    }

    protected void new_halfcut_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("halfcut_test.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }



    public void CalculateFromsItemsCount()
    {
        con.Open();
        var cmd = new SqlCommand("update cutted_and_remain set falleh = j.falleh ,service = j.service from " +
                                 "(select item,case when[1] is null then 0 else [1] end as service " +
                                 ",case when[2] is null then 0 else [2] end as falleh from " +
                                 "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                                 "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                                 "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                                 "where flowid = " + flowerId.Value + ") union all " +
                                 "(select fai.item_name as item, ffe.arrange_type, " +
                                 "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                                 "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                                 "on fai.form_id = ffe.id where fai.flower_id = " + flowerId.Value + ")) as src " +
                                 "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                                 "where j.item = cutted_and_remain.item_name and cutted_and_remain.flower_id = " + flowerId.Value + "" +
                                 " " +
                                 "insert into cutted_and_remain (flower_id, item_name, service, falleh) " +
                                 "select " + flowerId.Value + ", j.item, j.service, j.falleh from " +
                                 "(select item,case when[1] is null then 0 else [1] end as service " +
                                 ",case when[2] is null then 0 else [2] end as falleh from " +
                                 "((select item, arrange_type, (count * tedad) as tedad from new_halfcut " +
                                 "inner join new_halfcutRiz on new_halfcut.id = new_halfcutRiz.hid " +
                                 "inner join flower_forms_entry on new_halfcut.formid = flower_forms_entry.id " +
                                 "where flowid = " + flowerId.Value + ") union all(select fai.item_name as item, ffe.arrange_type, " +
                                 "(fai.item_insheet_count * ffe.sheetcount) as tedad " +
                                 "from flower_arrange_items as fai inner join flower_forms_entry as ffe " +
                                 "on fai.form_id = ffe.id where fai.flower_id = " + flowerId.Value + ")) as src " +
                                 "pivot(sum(tedad) for arrange_type in ([1],[2]))as piv)j " +
                                 "where j.item not in(select item_name as item from " +
                                 "cutted_and_remain where flower_id = " + flowerId.Value + ")" +
                                 " " +
                                 "update cutted_and_remain set total = falleh + service + cutted  where flower_id = " + flowerId.Value + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("../flower_depot/cutted_and_remain.aspx" +
                          "?fid=" + flowerId.Value + "" +
                          "&report=1&cid=" + (string.IsNullOrEmpty(CustomerID.Value) ? Request.Params["cid"] : CustomerID.Value) + "" +
                          "&fname=" + (string.IsNullOrEmpty(FlowerName.Value) ? Request.Params["fname"] : FlowerName.Value));
    }
}


