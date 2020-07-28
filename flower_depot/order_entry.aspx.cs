using System;
using System.Activities.Expressions;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderEntry : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.Params["fid"]))
            {
                pnl_back_to_previous_page.Visible = true;
                btn_back_to_previous_page.Text = "انتقال به صفحه گزارش";
                visible_panel_order_entry();
                get_flow_info();
                pnl_show_flowinfo.Visible = true;
            }
        }
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
    }
    private void get_flow_info()
    {
        if (!string.IsNullOrEmpty(Request.Params["fid"]))
        {
            con.Open();
            SqlCommand selectflower = new SqlCommand(
                " SELECT flower_entry.id, flower_entry.flower_name AS flowname, flower_entry.flower_code AS flowcode, flower_colors.flow_color AS flowcolor, " +
                " flower_colortypes.flow_colortype AS colortype, flower_formats.flow_format AS format, flower_customers.customer_name AS customer, " +
                " flower_companies.company_name AS company " +
                "  FROM flower_entry INNER JOIN " +
                " flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN " +
                " flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN " +
                " flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN " +
                " flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN " +
                " flower_companies ON flower_entry.company_name = flower_companies.company_id " +
                " where id = " + Request.Params["fid"] + "", con);
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
    }
    protected void btn_save_OnClick(object sender, EventArgs e)
    {
        if (drp_ordertype.SelectedValue == "انتخاب کنید" || string.IsNullOrEmpty(txt_ordercount.Text)
            || drpday.SelectedValue == "روز" || drpmonth.SelectedValue == "ماه" || drpyear.SelectedValue == "سال"
            || drpday1.SelectedValue == "روز" || drpmonth1.SelectedValue == "ماه" || drpyear1.SelectedValue == "سال")
        {
            pnl_show_success.Visible = false;
            pnl_show_failed.Visible = true;
        }
        else
        {
            string orderEnterDate = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
            string orderDateComplete = drpyear1.Text + "/" + drpmonth1.Text + "/" + drpday1.Text;
            con.Open();
            SqlCommand insertorder = new SqlCommand("INSERT INTO [flower_depot].[dbo].[orders] " +
                                                    " ([flower_id] " +
                                                    " ,[order_type] " +
                                                    " ,[order_count] " +
                                                    " ,[order_enter_date] " +
                                                    " ,[order_complete_date] " +
                                                    " ,[order_remain] " +
                                                    " ,[comment]) " +
                                                    " VALUES " +
                                                    " (" + Request.Params["fid"] + " " +
                                                    " ," + drp_ordertype.SelectedValue + " " +
                                                    " ,'" + txt_ordercount.Text + "' " +
                                                    " ,'" + orderEnterDate + "' " +
                                                    " ,'" + orderDateComplete + "' " +
                                                    " ,'" + txt_remain.Text + "' " +
                                                    " ,'" + txt_comment.Text + "')", con);
            insertorder.ExecuteNonQuery();
            con.Close();
            pnl_show_failed.Visible = false;
            pnl_show_success.Visible = true;
            grid_show_orders.DataBind();
        }

    }
    protected void grid_show_orders_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editorder")
        {
            pnl_show_sheet_count.Visible = false;
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Session["order_id"] = (int)grid_show_orders.DataKeys[rowIndex]["id"];
            con.Open();
            SqlCommand selectorder = new SqlCommand("SELECT [order_type],[order_count],[order_enter_date]," +
                                                    "[order_complete_date],[order_remain],[comment]FROM [dbo].[orders]" +
                                                    "where id = " + Session["order_id"] + " ", con);
            SqlDataReader rd = selectorder.ExecuteReader();
            if (rd.Read())
            {
                drp_ordertype.SelectedValue = rd["order_type"].ToString();
                txt_ordercount.Text = rd["order_count"].ToString();
                string ordrDate = rd["order_enter_date"].ToString();
                drpday.SelectedValue = ordrDate.Substring(8, 2);
                drpmonth.SelectedValue = ordrDate.Substring(5, 2);
                drpyear.SelectedValue = ordrDate.Substring(0, 4);
                string compDate = rd["order_complete_date"].ToString();
                drpday1.SelectedValue = compDate.Substring(8, 2);
                drpmonth1.SelectedValue = compDate.Substring(5, 2);
                drpyear1.SelectedValue = compDate.Substring(0, 4);
                txt_remain.Text = rd["order_remain"].ToString();
                txt_comment.Text = rd["comment"].ToString();
            }
            btn_save.Visible = false;
            btn_edit.Visible = true;
            btnCancelEdit.Visible = true;
            pnl_show_failed.Visible = false;
            pnl_show_success.Visible = false;
            pnl_delete_order.Visible = false;
        }
        if (e.CommandName == "enter_forms")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_show_orders.Rows[index];
            btn_save.Visible = true;
            btn_edit.Visible = false;
            pnl_delete_order.Visible = false;
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Session["order_id"] = (int)grid_show_orders.DataKeys[rowIndex]["id"];
            ViewState["order_flower_id"] = (int)grid_show_orders.DataKeys[rowIndex]["flower_id"];
            drpyear3.SelectedValue = row.Cells[3].Text.Substring(0, 4);
            drpmonth3.SelectedValue = row.Cells[3].Text.Substring(5, 2);
            drpday3.SelectedValue = row.Cells[3].Text.Substring(8, 2);
            pnl_show_sheet_count.Visible = true;
            drp_formnumber.DataBind();
            drp_ordertype.SelectedIndex = 0;
            txt_ordercount.Text = "";
            drpday.SelectedIndex = 0;
            drpmonth.SelectedIndex = 0;
            drpyear.SelectedIndex = 0;
            drpday1.SelectedIndex = 0;
            drpmonth1.SelectedIndex = 0;
            drpyear1.SelectedIndex = 0;
            txt_comment.Text = "";
            txt_remain.Text = "";
            get_arrange_info();
        }
        if (e.CommandName == "Delete_order")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delete_order"] = (int)grid_show_orders.DataKeys[rowIndex]["id"];
            pnl_delete_order.Visible = true;
            pnl_show_sheet_count.Visible = false;
            btn_save.Visible = true;
            btn_edit.Visible = false;
            drp_ordertype.SelectedIndex = 0;
            txt_ordercount.Text = "";
            drpday.SelectedIndex = 0;
            drpmonth.SelectedIndex = 0;
            drpyear.SelectedIndex = 0;
            drpday1.SelectedIndex = 0;
            drpmonth1.SelectedIndex = 0;
            drpyear1.SelectedIndex = 0;
            txt_comment.Text = "";
            txt_remain.Text = "";
        }
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
                                                    " where (id = " + drp_formnumber.SelectedValue + ") ", con);
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
            pnl_showarrangeinfo.Visible = true;
            con.Close();
        }
        catch
        {
        }
    }
    protected void btn_edit_OnClick(object sender, EventArgs e)
    {
        string orderEnterDate = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
        string orderDateComplete = drpyear1.Text + "/" + drpmonth1.Text + "/" + drpday1.Text;
        con.Open();
        SqlCommand updateorder = new SqlCommand("UPDATE [flower_depot].[dbo].[orders]" +
                                                "SET [order_type] = " + drp_ordertype.SelectedValue + " " +
                                                ",[order_count] = '" + txt_ordercount.Text + "' " +
                                                ",[order_enter_date] = '" + orderEnterDate + "' " +
                                                ",[order_complete_date] = '" + orderDateComplete + "' " +
                                                ",[order_remain] = '" + txt_remain.Text + "' " +
                                                ",[comment] ='" + txt_comment.Text + "'" +
                                                " WHERE id = " + Session["order_id"] + " ", con);

        updateorder.ExecuteNonQuery();
        con.Close();
        grid_show_orders.DataBind();
        btn_edit.Visible = false;
        btnCancelEdit.Visible = false;
        btn_save.Visible = true;
        pnl_show_failed.Visible = false;
        pnl_show_success.Visible = false;
        drp_ordertype.SelectedIndex = 0;
        txt_ordercount.Text = "";
        drpday.SelectedIndex = 0;
        drpmonth.SelectedIndex = 0;
        drpyear.SelectedIndex = 0;
        drpday1.SelectedIndex = 0;
        drpmonth1.SelectedIndex = 0;
        drpyear1.SelectedIndex = 0;
        txt_comment.Text = "";
        txt_remain.Text = "";
    }
    protected void drp_formnumber_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnl_showarrangeinfo.Visible = true;
        get_arrange_info();
    }
    protected void btn_add_forms_OnClick(object sender, EventArgs e)
    {
        if (Convert.ToInt32(lbl_arrange_sheet_count.Text) == 0 && string.IsNullOrEmpty(txt_form_count.Text))
        {
            pnl_forms_warning.Visible = true;
            return;
        }
        pnl_forms_warning.Visible = false;
        var recieveDate = drpyear3.Text + "" + drpmonth3.Text + "" + drpday3.Text;
        var recDate = drpyear3.Text + "/" + drpmonth3.Text + "/" + drpday3.Text;
        if (string.IsNullOrEmpty(txt_form_count.Text))
        {
            con.Open();
            SqlCommand checkformdate = new SqlCommand("select REPLACE(last_enter_date , '/' , '') as led " +
                                                      "from flower_forms_entry where id = " + drp_formnumber.SelectedValue + " ", con);
            string lastEnterDate = checkformdate.ExecuteScalar().ToString();
            if (Convert.ToInt32(recieveDate) > Convert.ToInt32(lastEnterDate))
            {
                SqlCommand updateformdate =
                    new SqlCommand("update flower_forms_entry " +
                                   "set last_enter_date = '" + recDate + "' " +
                                   "where id = " + drp_formnumber.SelectedValue + " ", con);
                updateformdate.ExecuteNonQuery();
            }
            SqlCommand insertsheetcount = new SqlCommand("INSERT INTO [flower_depot].[dbo].[order_sheet_count] " +
                                                         " ([order_id] " +
                                                         " ,[flower_id]" +
                                                         " ,[form_number]" +
                                                         " ,[form_id] " +
                                                         " ,[sheet_count]" +
                                                         " ,[recieve_date]) " +
                                                         " VALUES " +
                                                         " (" + Session["order_id"] + "" +
                                                         " , " + ViewState["order_flower_id"] + " " +
                                                         " , '" + drp_formnumber.SelectedItem.Text + "' " +
                                                         " , " + drp_formnumber.SelectedValue + " " +
                                                         " , '" + lbl_arrange_sheet_count.Text + "'" +
                                                         " , '" + recDate + "' )", con);
            insertsheetcount.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            con.Open();
            var checkformdate = new SqlCommand("select REPLACE(last_enter_date , '/' , '') as led" +
                                               " from flower_forms_entry where id = " + drp_formnumber.SelectedValue + " ", con);
            var lastEnterDate = checkformdate.ExecuteScalar().ToString();
            if (Convert.ToInt32(recieveDate) > Convert.ToInt32(lastEnterDate))
            {
                SqlCommand updateformdate =
                    new SqlCommand("update flower_forms_entry " +
                                   "set last_enter_date = '" + recDate + "' " +
                                   "where id = " + drp_formnumber.SelectedValue + " ", con);
                updateformdate.ExecuteNonQuery();
            }
            SqlCommand insertsheetcount = new SqlCommand("INSERT INTO [flower_depot].[dbo].[order_sheet_count] " +
                                                         " ([order_id] " +
                                                         " ,[flower_id]" +
                                                         " ,[form_number]" +
                                                         " ,[form_id] " +
                                                         " ,[sheet_count]" +
                                                         " ,[recieve_date]) " +
                                                         " VALUES " +
                                                         " (" + Session["order_id"] + "" +
                                                         " , " + ViewState["order_flower_id"] + " " +
                                                         " , '" + drp_formnumber.SelectedItem.Text + "' " +
                                                         " , " + drp_formnumber.SelectedValue + " " +
                                                         " , '" + txt_form_count.Text + "'" +
                                                         " , '" + recDate + "' )", con);
            insertsheetcount.ExecuteNonQuery();
            con.Close();
        }
        grid_show_sheet_count.DataBind();
        get_arrange_info();
        txt_form_count.Text = "";
    }
    protected void btn_cancel_deleteorder_OnClick(object sender, EventArgs e)
    {
        ViewState["delete_order"] = "";
        pnl_delete_order.Visible = false;
    }
    protected void btn_accept_deleteorder_OnClick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand deleteorder = new SqlCommand("DELETE FROM [flower_depot].[dbo].[orders] WHERE id = " + ViewState["delete_order"] + " ", con);
        deleteorder.ExecuteNonQuery();
        SqlCommand deleteformOfOrder = new SqlCommand("DELETE FROM [flower_depot].[dbo].[order_sheet_count] WHERE order_id = " + ViewState["delete_order"] + " ", con);
        deleteformOfOrder.ExecuteNonQuery();
        con.Close();
        pnl_delete_order.Visible = false;
        pnl_show_sheet_count.Visible = false;
        grid_show_orders.DataBind();
        grid_show_sheet_count.DataBind();
    }
    private void visible_panel_order_entry()
    {
        pnl_enterinformation.Visible = true;
        pnl_show_failed.Visible = false;
        pnl_show_success.Visible = false;
        grid_show_orders.DataBind();
        pnl_show_sheet_count.Visible = false;
        pnl_delete_order.Visible = false;
        btn_edit.Visible = false;
        btn_save.Visible = true;
        drp_ordertype.SelectedIndex = 0;
        txt_ordercount.Text = "";
        drpday.SelectedIndex = 0;
        drpmonth.SelectedIndex = 0;
        drpyear.SelectedIndex = 0;
        drpday1.SelectedIndex = 0;
        drpmonth1.SelectedIndex = 0;
        drpyear1.SelectedIndex = 0;
        txt_comment.Text = "";
        txt_remain.Text = "";
    }
    protected void btn_back_to_previous_page_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }
    protected void grid_show_sheet_count_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete_order_form")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delete_order_form"] = (int)grid_show_sheet_count.DataKeys[rowIndex]["id"];
            pnl_delete_warning.Visible = true;
        }
    }
    protected void btn_accept_delete_OnClick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand deleteform = new SqlCommand("delete from order_sheet_count where id = " + ViewState["delete_order_form"] + " ", con);
        deleteform.ExecuteNonQuery();
        grid_show_sheet_count.DataBind();
        pnl_delete_warning.Visible = false;
    }
    protected void btn_cancel_delete_OnClick(object sender, EventArgs e)
    {
        ViewState["delete_order_form"] = "";
        pnl_delete_warning.Visible = false;
    }
    protected void btnCancelEdit_OnClick(object sender, EventArgs e)
    {
        Session["order_id"] = "";
        pnl_show_sheet_count.Visible = false;
        btn_save.Visible = true;
        btn_edit.Visible = false;
        btnCancelEdit.Visible = false;
        drp_ordertype.SelectedIndex = 0;
        txt_ordercount.Text = "";
        drpday.SelectedIndex = 0;
        drpmonth.SelectedIndex = 0;
        drpyear.SelectedIndex = 0;
        drpday1.SelectedIndex = 0;
        drpmonth1.SelectedIndex = 0;
        drpyear1.SelectedIndex = 0;
        txt_comment.Text = "";
        txt_remain.Text = "";
    }
}