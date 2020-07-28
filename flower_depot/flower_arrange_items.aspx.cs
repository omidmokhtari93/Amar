using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FlowerArrangeItems : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    int formIndex;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
            {
                Session.Clear();
                Response.Redirect("../login.aspx");
            }
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.Params["fid"]))
            {
                if (!string.IsNullOrEmpty(Request.Params["report"]))
                {
                    btn_back_to_previous_page.Visible = true;
                    btn_enter_order.Visible = false;
                }
                conn.Open();
                SqlCommand selectflower = new SqlCommand(
                    " SELECT flower_entry.id, flower_entry.flower_name AS flowname," +
                    " flower_entry.flower_code AS flowcode, flower_colors.flow_color AS flowcolor, " +
                    " flower_colortypes.flow_colortype AS colortype, flower_formats.flow_format AS format," +
                    " flower_customers.customer_name AS customer,  flower_companies.company_name AS company " +
                    "  FROM flower_entry INNER JOIN " +
                    " flower_colors ON flower_entry.flower_color = flower_colors.flowcolor_id INNER JOIN " +
                    " flower_colortypes ON flower_entry.flower_colortype = flower_colortypes.colortype_id INNER JOIN " +
                    " flower_formats ON flower_entry.flower_format = flower_formats.flowformat_id INNER JOIN " +
                    " flower_customers ON flower_entry.customer_name = flower_customers.customer_id INNER JOIN " +
                    " flower_companies ON flower_entry.company_name = flower_companies.company_id " +
                    " where id = " + Request.Params["fid"] + "", conn);
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
                conn.Close();
                btn_enter_order.Text = "ثبت سفارش گل " + lbl_flowname.Text;
            }
            get_arrange_info();
        }
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (drp_formnumber.SelectedValue == "انتخاب کنید" || drp_itemname.SelectedValue == "انتخاب کنید" ||
            (string.IsNullOrWhiteSpace(txt_itemcount.Text)) || string.IsNullOrEmpty(txt_lentcount.Text))
        {
            lbl_edit_or_submit.Text = "! فیلد خالی را تکمیل نمایید";
        }
        else
        {
            conn.Open();
            SqlCommand insertCommand = new SqlCommand(
                "INSERT INTO [flower_depot].[dbo].[flower_arrange_items]" +
                "([flower_id],[form_id],[form_number],[item_name],[item_insheet_count],[lent_of_item],[comment]) values" +
                " ('" + Request.Params["fid"] + "',"+drp_formnumber.SelectedValue+"," +
                "'" + drp_formnumber.SelectedItem.Text + "' , " + drp_itemname.SelectedValue + ",'" + txt_itemcount.Text + "'," +
                "'" + txt_lentcount.Text + "','" + txt_comment.Text + "')", conn);
            insertCommand.ExecuteNonQuery();
            lbl_edit_or_submit.Text = ".ثبت جدول شد";
            get_arrange_info();
            grid_show_items.DataBind();
            pnl_show_items_delete.Visible = false;
        }
    }
    protected void btn_edit_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        var updateCommand = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_arrange_items] " +
                                                  " SET " +
                                                  "   [form_id] = "+drp_formnumber.SelectedValue+" " +
                                                  "  ,[form_number] = '"+drp_formnumber.SelectedItem.Text+"' " +
                                                  "  ,[item_name] = "+drp_itemname.SelectedValue+" "+
                                                  "  ,[item_insheet_count] ='"+txt_itemcount.Text+"'" +
                                                  "  ,[lent_of_item] = '"+txt_lentcount.Text+"'" +
                                                  "  ,[comment] = '"+txt_comment.Text+"'" +
                                                  "  WHERE id = "+ ViewState["item_id"] + " ", conn);
        updateCommand.ExecuteNonQuery();
        conn.Close();
        lbl_edit_or_submit.Text = ".ویرایش شد";
        drp_formnumber.SelectedIndex = 0;
        txt_itemcount.Text = "";
        txt_lentcount.Text = "";
        txt_comment.Text = "";
        btnadd.Visible = true;
        grid_show_items.DataBind();
        get_arrange_info();
    }
    protected void btn_back_to_previous_page_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }
    protected void btn_enter_order_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/order_entry.aspx?fid=" + Request.Params["fid"]);
    }

    private void get_arrange_info()
    {
        conn.Close();
        try
        {
            conn.Open();
            SqlCommand selectflow = new SqlCommand(
                "SELECT dbo.flower_forms_entry.form_number, dbo.arrange_type.arrange_type AS arrangetype, " +
                "dbo.flower_dimensions.flow_dimension AS dimension, dbo.flower_forms_entry.sheetcount AS sheetcount, " +
                "dbo.flower_forms_entry.mark_type, dbo.flower_forms_entry.comment as comment," +
                "dbo.flower_forms_entry.flower_id, dbo.flower_forms_entry.id " +
                "FROM dbo.flower_forms_entry INNER JOIN " +
                "dbo.arrange_type ON dbo.flower_forms_entry.arrange_type = dbo.arrange_type.arrange_id INNER JOIN " +
                "dbo.flower_dimensions ON dbo.flower_forms_entry.dimension = dbo.flower_dimensions.dimension_id " +
                "WHERE (id = " + drp_formnumber.SelectedValue + ")", conn);
            SqlDataReader readdata = selectflow.ExecuteReader();
            if (readdata.Read())
            {
                pnl_showarrangeinfo.Visible = true;
                lbl_arrange_type.Text = readdata["arrangetype"].ToString();
                lbl_dimension.Text = readdata["dimension"].ToString();
                lbl_sheetcount.Text = readdata["sheetcount"].ToString();
                lbl_comment.Text = readdata["comment"].ToString();
                conn.Close();
                items.FilterExpression = "form_id = " + drp_formnumber.SelectedValue + " ";
                grid_show_items.DataBind();
            }
            int i = drp_formnumber.Items.Count - 1;
            if (drp_formnumber.SelectedIndex == 0)
            {
                btn_previous.CssClass = "glyphicon glyphicon-minus-sign";
                btn_next.CssClass = "glyphicon glyphicon-triangle-right";
                btn_previous.Enabled = false;
                btn_next.Enabled = true;
            }
            else if (drp_formnumber.SelectedIndex == i)
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
        catch (Exception)
        {

        }
    }

    protected void btn_previous_OnClick(object sender, EventArgs e)
    {
        int counter = drp_formnumber.SelectedIndex;
        counter--;
        drp_formnumber.SelectedIndex = counter;
        get_arrange_info();
    }
    protected void btn_next_OnClick(object sender, EventArgs e)
    {
        int counter = drp_formnumber.SelectedIndex;
        counter++;
        drp_formnumber.SelectedIndex = counter;
        get_arrange_info();
    }
    protected void grid_show_items_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_items")
        {
            btnadd.Visible = false;
            lbl_edit_or_submit.Text = "";
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["edit_item"] = (int)grid_show_items.DataKeys[rowIndex]["id"];
            ViewState["itemId"] = (int)grid_show_items.DataKeys[rowIndex]["item_name_id"];
            conn.Open();
            SqlCommand selectitem = new SqlCommand("SELECT [id] as formnumber ,[flower_id],[form_number],[item_name]" +
                                                   " as itemname ,[item_insheet_count] as itemcount,[lent_of_item] as lentcount " +
                                                   ",[comment] as comment FROM [flower_depot].[dbo].[flower_arrange_items] where " +
                                                   "id = " + ViewState["edit_item"] + " ", conn);
            SqlDataReader readitems = selectitem.ExecuteReader();
            if (readitems.Read())
            {
                drp_itemname.SelectedValue = readitems["itemname"].ToString();
                txt_itemcount.Text = readitems["itemcount"].ToString();
                txt_lentcount.Text = readitems["lentcount"].ToString();
                txt_comment.Text = readitems["comment"].ToString();
            }
            conn.Close();
            btn_edit_items.Visible = true;
            pnl_show_items_delete.Visible = false;
        }
        if (e.CommandName == "delete_items")
        {
            lbl_edit_or_submit.Text = "";
            pnl_show_items_delete.Visible = true;
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delete_from_recent"] = (int)grid_show_items.DataKeys[rowIndex]["id"];
            ViewState["delete_form_all"] = (int)grid_show_items.DataKeys[rowIndex]["flower_id"];
            ViewState["item_name"] = (int)grid_show_items.DataKeys[rowIndex]["item_name_id"];
            btn_edit_items.Visible = false;
            btnadd.Visible = true;
           // drp_formnumber.SelectedIndex = 0;
            //drp_itemname.SelectedIndex = 0;
            txt_itemcount.Text = "";
            txt_lentcount.Text = "";
            txt_comment.Text = "";
        }
    }
    protected void btn_delete_from_all_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        var deleteFromCutted = new SqlCommand("delete from cutted_and_remain where flower_id =" +
                                              " " + ViewState["delete_form_all"] + "  and item_name = " + ViewState["item_name"] + "", conn);
        deleteFromCutted.ExecuteNonQuery();
        SqlCommand delelteitems = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_arrange_items]" +
                                                 " WHERE flower_id = " + ViewState["delete_form_all"] + " " +
                                                 " and item_name = " + ViewState["item_name"] + " ", conn);
        delelteitems.ExecuteNonQuery();
        grid_show_items.DataBind();
        conn.Close();
        pnl_show_items_delete.Visible = false;
        get_arrange_info();
        lbl_edit_or_submit.Text = ".ازهمه چیدمان ها حذف شد";
    }
    protected void btn_delete_from_recent_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        if (CheckItemExistInAnotherForms())
        {
            var deleteFromCutted = new SqlCommand("delete from cutted_and_remain where flower_id = " +
                                                  "" + ViewState["delete_form_all"] + "  and item_name = " + ViewState["item_name"] + "", conn);
            deleteFromCutted.ExecuteNonQuery();
        }
        SqlCommand delelteitems = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_arrange_items]" +
                                                 " WHERE id = " + ViewState["delete_from_recent"] + " ", conn);
        delelteitems.ExecuteNonQuery();
        grid_show_items.DataBind();
        conn.Close();
        pnl_show_items_delete.Visible = false;
        get_arrange_info();
        lbl_edit_or_submit.Text = ".از چیدمان انتخاب شده حذف شد";
    }

    private bool CheckItemExistInAnotherForms()
    {
        var itemCount = new SqlCommand("select count(id) from flower_arrange_items" +
                                       " where flower_id = " + ViewState["delete_form_all"] + "" +
                                       " and item_name = " + ViewState["item_name"] + " ",conn);
        return Convert.ToInt32(itemCount.ExecuteScalar()) <= 1;
    }

    protected void btn_edit_items_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand updateCommand = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_arrange_items] " +
                                                  " SET " +
                                                  "   [item_name] = " + drp_itemname.SelectedValue + " " +
                                                  "  ,[item_insheet_count] ='" + txt_itemcount.Text + "'" +
                                                  "  ,[lent_of_item] = '" + txt_lentcount.Text + "'" +
                                                  "  ,[comment] = '" + txt_comment.Text + "'" +
                                                  "  WHERE id = " + ViewState["edit_item"] + " ", conn);
        updateCommand.ExecuteNonQuery();
        conn.Close();
        get_arrange_info();
        grid_show_items.DataBind();
        btn_edit_items.Visible = false;
        btn_cancel_edit.Visible = false;
        btnadd.Visible = true;
        lbl_edit_or_submit.Text = ".ویرایش شد";
    }
    protected void drpformnumber_SelectedIndexChanged1(object sender, EventArgs e)
    {
        get_arrange_info();
    }
    protected void btn_cancel_edit_OnClick(object sender, EventArgs e)
    {
        btn_cancel_edit.Visible = false;
        btn_edit_items.Visible = false;
        btnadd.Visible = true;
        drp_formnumber.SelectedIndex = 0;
        drp_itemname.SelectedIndex = 0;
        txt_itemcount.Text = "";
        txt_lentcount.Text = "";
        txt_comment.Text = "";
    }
    protected void drp_formnumber_DataBound(object sender, EventArgs e)
    {
        get_arrange_info();
    }

    protected void drp_itemname_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_edit_or_submit.Text = "";
    }
}
