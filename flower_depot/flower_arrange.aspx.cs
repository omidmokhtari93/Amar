using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FlowerArrange : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
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
                    btn_nextstep.Visible = false;
                }
                conn.Open();
                SqlCommand selectflower = new SqlCommand(
                    " SELECT dbo.flower_entry.id, dbo.flower_entry.flower_name as flowname , " +
                    " dbo.flower_entry.flower_code as flowcode , dbo.flower_colors.flow_color AS flowcolor, " +
                    " dbo.flower_colortypes.flow_colortype AS colortype, dbo.flower_formats.flow_format AS format," +
                    " dbo.flower_customers.customer_name AS customer, " +
                    " dbo.flower_companies.company_name AS company " +
                    " FROM dbo.flower_entry INNER JOIN " +
                    " dbo.flower_colors ON dbo.flower_entry.flower_color = dbo.flower_colors.flowcolor_id INNER JOIN " +
                    " dbo.flower_colortypes ON dbo.flower_entry.flower_colortype = dbo.flower_colortypes.colortype_id INNER JOIN " +
                    " dbo.flower_formats ON dbo.flower_entry.flower_format = dbo.flower_formats.flowformat_id INNER JOIN " +
                    " dbo.flower_customers ON dbo.flower_entry.customer_name = dbo.flower_customers.customer_id INNER JOIN " +
                    " dbo.flower_companies ON dbo.flower_entry.company_name = dbo.flower_companies.company_id " +
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
                    btn_nextstep.Text = "ثبت آیتم های گل " + lbl_flowname.Text;
                }
                conn.Close();
            }
        }
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
    }
    protected void btn_nextstep_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("flower_arrange_items.aspx?fid=" + Request.Params["fid"]);
    }
    protected void btn_addtotable_OnClick(object sender, EventArgs e)
    {
        if (drp_arrangetype.SelectedValue == "انتخاب کنید" ||
            drp_dimension.SelectedValue == "انتخاب کنید" ||
            (string.IsNullOrWhiteSpace(txt_sheetcount.Text)) ||
            drpday.SelectedValue == "روز" || drpmonth.SelectedValue == "ماه" ||
            drpyear.SelectedValue == "سال" ||
            (string.IsNullOrWhiteSpace(txt_formnumber.Text)))
        {
            lbl_edit_or_submit.Text = "!فیلد خالی را تکمیل نمایید";
        }
        else
        {
            string tarikh = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [flower_depot].[dbo].[flower_forms_entry] " +
                                            "([flower_id],[form_number],[arrange_type],[dimension],[sheetcount],[mark_type],[last_enter_date],[comment])" +
                                            " VALUES (" + Request.Params["fid"] + "" +
                                            " , '" + txt_formnumber.Text + "' " +
                                            " , " + drp_arrangetype.SelectedValue + "" +
                                            " , " + drp_dimension.SelectedValue + "" +
                                            " , '" + txt_sheetcount.Text + "'" +
                                            " , '" + txt_mark.Text + "' " +
                                            " , '" + tarikh + "' " +
                                            " , '" + txt_comment_arrange.Text + "')", conn);

            cmd.ExecuteNonQuery();
            grid_show_arranges.DataBind();
            lbl_edit_or_submit.Text = "!ثبت شد";
            conn.Close();
        }
    }

    protected void back_to_previous_page_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }

    protected void brn_edit_cancel_OnClick(object sender, EventArgs e)
    {
        txt_formnumber.Text = "";
        txt_comment_arrange.Text = "";
        txt_mark.Text = "";
        txt_sheetcount.Text = "";
        drp_arrangetype.SelectedIndex = 0;
        drp_dimension.SelectedIndex = 0;
        btn_addtotable.Visible = true;
        btn_edit_cancel.Visible = false;
        btn_editarranges.Visible = false;
        lbl_edit_or_submit.Text = "";
        drpday.SelectedIndex = 0;
        drpmonth.SelectedIndex = 0;
        drpyear.SelectedIndex = 0;
    }

    protected void grid_show_arranges_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lbl_edit_or_submit.Text = "";
        if (e.CommandName == "edit_Arranges")
        {
            lbl_edit_or_submit.Text = "";
            btn_addtotable.Visible = false;
            pnl_sheet_count_edit.Visible = false;
            pnl_delete_arrange_question.Visible = false;
            btn_editarranges.Visible = true;
            btn_edit_cancel.Visible = true;
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["flower_form_id"] = (int)grid_show_arranges.DataKeys[rowIndex]["flower_id"];
            ViewState["edit_arrange"] = (int)grid_show_arranges.DataKeys[rowIndex]["id"];
            conn.Open();
            SqlCommand editcommand =
                new SqlCommand("SELECT [id],[flower_id] as flowid ,[form_number] as formnumber,[arrange_type] as arrangetype,[dimension] as dimension,[sheetcount] as sheetcount,[mark_type] as marktype,[last_enter_date] as lastEnterDate,[comment] as comment FROM [flower_depot].[dbo].[flower_forms_entry] where id = " + ViewState["edit_arrange"] + " ", conn);
            SqlDataReader readarrnages = editcommand.ExecuteReader();
            if (readarrnages.Read())
            {
                txt_formnumber.Text = readarrnages["formnumber"].ToString();
                drp_arrangetype.SelectedValue = readarrnages["arrangetype"].ToString();
                drp_dimension.SelectedValue = readarrnages["dimension"].ToString();
                txt_sheetcount.Text = readarrnages["sheetcount"].ToString();
                txt_mark.Text = readarrnages["marktype"].ToString();
                txt_comment_arrange.Text = readarrnages["comment"].ToString();
                string lastEnterDate = readarrnages["lastEnterDate"].ToString();
                drpyear.SelectedValue = lastEnterDate.Substring(0, 4);
                drpmonth.SelectedValue = lastEnterDate.Substring(5, 2);
                drpday.SelectedValue = lastEnterDate.Substring(8, 2);
            }
            conn.Close();
            pnl_sheet_count_edit.Visible = false;
        }
        if (e.CommandName == "delete_Arranges")
        {
            lbl_edit_or_submit.Text = "";
            btn_addtotable.Visible = false;
            pnl_sheet_count_edit.Visible = false;
            btn_editarranges.Visible = false;
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_show_arranges.Rows[index];
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delete_arrange_id"] = (int)grid_show_arranges.DataKeys[rowIndex]["id"];
            ViewState["delete_arrange_flower_id"] = (int)grid_show_arranges.DataKeys[rowIndex]["flower_id"];
            pnl_delete_arrange_question.Visible = true;
            txt_formnumber.Text = "";
            drp_arrangetype.SelectedIndex = 0;
            drp_dimension.SelectedIndex = 0;
            txt_sheetcount.Text = "";
            txt_mark.Text = "";
            txt_comment_arrange.Text = "";
            pnl_sheet_count_edit.Visible = false;
        }
        if (e.CommandName == "increase_value")
        {
            lbl_edit_or_submit.Text = "";
            ViewState["form_number"] = "";
            ViewState["change_sheet_count"] = "";
            ViewState["edit_form_count_flower_id"] = "";
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_show_arranges.Rows[index];
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["change_sheet_count"] = (int)grid_show_arranges.DataKeys[rowIndex]["id"];
            ViewState["edit_form_count_flower_id"] = (int)grid_show_arranges.DataKeys[rowIndex]["flower_id"];
            ViewState["form_number"] = row.Cells[2].Text;
            lbl_sheet_edit_formname.Text = ".:: " + row.Cells[2].Text + " ::.";
            TextBox edit_arrange_sheetcount = row.Cells[1].FindControl("txt_edit_sheetcount") as TextBox;
            if (string.IsNullOrEmpty(edit_arrange_sheetcount.Text) || Convert.ToInt32(edit_arrange_sheetcount.Text) == 0)
            {
                edit_arrange_sheetcount.BorderColor = Color.Red;
            }
            else
            {
                PersianCalendar pc = new PersianCalendar();
                string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
                string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
                conn.Open();
                SqlCommand updatesheetcount =
                    new SqlCommand(
                        "UPDATE [flower_depot].[dbo].[flower_forms_entry] SET [sheetcount] = [sheetcount]+ " + Convert.ToInt32(edit_arrange_sheetcount.Text) +
                        " WHERE id = " + ViewState["change_sheet_count"] + " ", conn);
                updatesheetcount.ExecuteNonQuery();
                SqlCommand insertHistory = new SqlCommand("INSERT INTO [flower_depot].[dbo].[arrange_sheet_count] " +
                                                          "([flower_id]" +
                                                          ",[arrange_id] " +
                                                          ",[form_number] " +
                                                          ",[change_size] " +
                                                          ",[date_and_time]) " +
                                                          "VALUES " +
                                                          "(" + ViewState["edit_form_count_flower_id"] + " " +
                                                          "," + ViewState["change_sheet_count"] + " " +
                                                          ",'" + ViewState["form_number"] + "' " +
                                                          ",'" + edit_arrange_sheetcount.Text + "' + '+' " +
                                                          ",'" + timeAndDate + "')", conn);
                insertHistory.ExecuteNonQuery();
                conn.Close();
                grid_show_arranges.DataBind();
                grid_sheet_count_edit_history.DataBind();
                pnl_sheet_count_edit.Visible = true;
            }

        }
        if (e.CommandName == "decrease_value")
        {
            lbl_edit_or_submit.Text = "";
            ViewState["form_number"] = "";
            ViewState["change_sheet_count"] = "";
            ViewState["edit_form_count_flower_id"] = "";
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_show_arranges.Rows[index];
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["change_sheet_count"] = (int)grid_show_arranges.DataKeys[rowIndex]["id"];
            ViewState["edit_form_count_flower_id"] = (int)grid_show_arranges.DataKeys[rowIndex]["flower_id"];
            ViewState["form_number"] = row.Cells[2].Text;
            int currentSheetcount = Convert.ToInt32(row.Cells[3].Text);
            TextBox edit_arrange_sheetcount = row.Cells[1].FindControl("txt_edit_sheetcount") as TextBox;
            if (string.IsNullOrEmpty(edit_arrange_sheetcount.Text) || Convert.ToInt32(edit_arrange_sheetcount.Text) == 0 ||
                Convert.ToInt32(edit_arrange_sheetcount.Text) > currentSheetcount)
            {
                edit_arrange_sheetcount.BorderColor = Color.Red;
            }
            else
            {
                PersianCalendar pc = new PersianCalendar();
                string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
                string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
                conn.Open();
                SqlCommand updatesheetcount =
                    new SqlCommand(
                        "UPDATE [flower_depot].[dbo].[flower_forms_entry] SET [sheetcount] = [sheetcount] - " + Convert.ToInt32(edit_arrange_sheetcount.Text) +
                        " WHERE id = " + ViewState["change_sheet_count"] + " ", conn);
                updatesheetcount.ExecuteNonQuery();
                SqlCommand insertHistory = new SqlCommand("INSERT INTO [flower_depot].[dbo].[arrange_sheet_count] " +
                                                          "([flower_id]" +
                                                          ",[arrange_id] " +
                                                          ",[form_number] " +
                                                          ",[change_size] " +
                                                          ",[date_and_time]) " +
                                                          "VALUES " +
                                                          "(" + ViewState["edit_form_count_flower_id"] + " " +
                                                          "," + ViewState["change_sheet_count"] + " " +
                                                          ",'" + ViewState["form_number"] + "' " +
                                                          ",'" + edit_arrange_sheetcount.Text + "' + '-' " +
                                                          ",'" + timeAndDate + "')", conn);
                insertHistory.ExecuteNonQuery();
                conn.Close();
                grid_show_arranges.DataBind();
                grid_sheet_count_edit_history.DataBind();
                pnl_sheet_count_edit.Visible = true;
            }
        }
        if (e.CommandName == "show_history")
        {
            lbl_edit_or_submit.Text = "";
            pnl_sheet_count_edit.Visible = true;
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid_show_arranges.Rows[index];
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            lbl_sheet_edit_formname.Text = ".:: " + row.Cells[2].Text + " ::.";
            ViewState["form_number"] = row.Cells[2].Text;
            Session["change_sheet_count"] = (int)grid_show_arranges.DataKeys[rowIndex]["id"];
            txt_formnumber.Text = "";
            drp_arrangetype.SelectedIndex = 0;
            drp_dimension.SelectedIndex = 0;
            txt_sheetcount.Text = "";
            txt_mark.Text = "";
            txt_comment_arrange.Text = "";
            btn_editarranges.Visible = false;
            btn_edit_cancel.Visible = false;
            pnl_delete_arrange_question.Visible = false;
            btn_addtotable.Visible = true;
            grid_sheet_count_edit_history.DataBind();
        }
    }

    protected void btn_editarranges_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand updateFormnumber = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_arrange_items] " +
                                                     "SET [form_number] = '" + txt_formnumber.Text + "' " +
                                                     "WHERE form_id = " + ViewState["edit_arrange"] + "", conn);
        updateFormnumber.ExecuteNonQuery();
        string tarikh = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
        SqlCommand updateCommand = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_forms_entry]" +
                                                  "SET" +
                                                  " [form_number] ='" + txt_formnumber.Text + "' " +
                                                  ",[arrange_type] =" + drp_arrangetype.SelectedValue + " " +
                                                  ",[dimension] =" + drp_dimension.SelectedValue + " " +
                                                  ",[sheetcount] ='" + txt_sheetcount.Text + "' " +
                                                  ",[mark_type] = '" + txt_mark.Text + "' " +
                                                  ",[comment] ='" + txt_comment_arrange.Text + "' " +
                                                  ",[last_enter_date] = '" + tarikh + "' " +
                                                  " WHERE" +
                                                  " id = " + ViewState["edit_arrange"] + " ", conn);
        updateCommand.ExecuteNonQuery();
        conn.Close();
        lbl_edit_or_submit.Text = ".ویرایش شد";
        btn_editarranges.Visible = false;
        txt_formnumber.Text = "";
        txt_comment_arrange.Text = "";
        txt_mark.Text = "";
        txt_sheetcount.Text = "";
        drp_arrangetype.SelectedIndex = 0;
        drp_dimension.SelectedIndex = 0;
        btn_addtotable.Visible = true;
        btn_edit_cancel.Visible = false;
        grid_show_arranges.DataBind();
    }

    protected void btn_delete_arrange_yes_OnClick(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand deletearrange = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_forms_entry]" +
                                                  " WHERE (id = " + ViewState["delete_arrange_id"] + ") ", conn);
        deletearrange.ExecuteNonQuery();
        SqlCommand delelteitems = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_arrange_items]" +
                                                 " WHERE form_id = " + ViewState["delete_arrange_id"] + " " +
                                                 " AND flower_id =" + ViewState["delete_arrange_flower_id"] + " ", conn);
        delelteitems.ExecuteNonQuery();

        SqlCommand deletearrangesheetcount = new SqlCommand("DELETE FROM [flower_depot].[dbo].[arrange_sheet_count] WHERE " +
                                                            "flower_id = " + ViewState["delete_arrange_flower_id"] + "" +
                                                            "AND arrange_id = " + ViewState["delete_arrange_id"] + " ", conn);
        deletearrangesheetcount.ExecuteNonQuery();
        var deleteHalf = new SqlCommand("delete from half_cut where form_id =" + ViewState["delete_arrange_id"] + "" +
                                        " and flower_id =" + ViewState["delete_arrange_flower_id"] + "  ", conn);
        deleteHalf.ExecuteNonQuery();
        conn.Close();
        pnl_delete_arrange_question.Visible = false;
        lbl_edit_or_submit.Text = ".چیدمان حذف شد";
        grid_show_arranges.DataBind();
        grid_sheet_count_edit_history.DataBind();
        btn_addtotable.Visible = true;
    }
    protected void btn_delete_arrange_no_OnClick(object sender, EventArgs e)
    {
        pnl_delete_arrange_question.Visible = false;
        btn_addtotable.Visible = true;
        lbl_edit_or_submit.Text = "";
    }

    protected void drp_arrangetype_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_edit_or_submit.Text = "";
    }
}