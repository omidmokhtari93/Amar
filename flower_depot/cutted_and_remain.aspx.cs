using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cutted_and_remain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    int index;
    int rowIndex;
    int changevalue;
    int changevalue1;
    int cutted_value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["level"] != "flower_depot" || Convert.ToInt32(Session["userid"]) != 44)
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            get_flower_info();
        }
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
    }

    private void get_flower_info()
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
    protected void grid_show_cutted_and_remain_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete_cutted")
        {
            rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delete_id"] = (int) grid_show_cutted_and_remain.DataKeys[rowIndex]["ID"];
            pnl_delete_warning.Visible = true;
        }
        if (e.CommandName == "decrease_value")
        {
            PersianCalendar pc = new PersianCalendar();
            string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
            string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
            rowIndex = int.Parse(e.CommandArgument.ToString());
            index = Convert.ToInt32(e.CommandArgument);
            ViewState["decrease_id"] = (int) grid_show_cutted_and_remain.DataKeys[rowIndex]["ID"];
            GridViewRow row = grid_show_cutted_and_remain.Rows[index];
            TextBox txt_changevalue = row.Cells[0].FindControl("txt_change_cutted") as TextBox;
            if (!string.IsNullOrEmpty(txt_changevalue.Text))
            {
                 changevalue = Convert.ToInt32(txt_changevalue.Text);
                con.Open();
                SqlCommand checkcutted =
                    new SqlCommand(
                        "SELECT cutted as cutted from cutted_and_remain WHERE(ID = " + ViewState["decrease_id"] + ") ", con);
                 cutted_value = Convert.ToInt32(checkcutted.ExecuteScalar());
            }
            if (changevalue > cutted_value || string.IsNullOrEmpty(txt_changevalue.Text) || changevalue == 0)
            {
                txt_changevalue.BorderColor = Color.Red;
            }
            else
            {
                SqlCommand updatetable = new SqlCommand("UPDATE [dbo].[cutted_and_remain] " +
                                                        "SET [cutted] = [cutted] - " + changevalue + " " +
                                                        ",[record4] = [record3] " +
                                                        ",[td4] = [td3]" +
                                                        ",[record3] = [record2] " +
                                                        ",[td3] = [td2]" +
                                                        ",[record2] = [record1] " +
                                                        ",[td2] = [td1]" +
                                                        ",[record1] = '" + txt_changevalue.Text + "' + '-' " +
                                                        ",[td1] = '"+ timeAndDate + "' " +
                                                        "WHERE(ID = " + ViewState["decrease_id"] + ")", con);
                updatetable.ExecuteNonQuery();
                SqlCommand update2 = new SqlCommand("UPDATE [flower_depot].[dbo].[cutted_and_remain] " +
                                                    "SET [total] = [cutted] + [falleh] + [service] " +
                                                    "WHERE (ID = " + ViewState["decrease_id"] + ") ", con);
                update2.ExecuteNonQuery();
                con.Close();
                grid_show_cutted_and_remain.DataBind();
                txt_changevalue.Text = "";
            }
        }
        if (e.CommandName == "increase_value")
        {
            PersianCalendar pc = new PersianCalendar();
            string PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
            string timeAndDate = DateTime.Now.ToString("h:mm") + " - " + PDate;
            rowIndex = int.Parse(e.CommandArgument.ToString());
            index = Convert.ToInt32(e.CommandArgument);
            ViewState["increase_id"] = (int) grid_show_cutted_and_remain.DataKeys[rowIndex]["ID"];
            GridViewRow row1 = grid_show_cutted_and_remain.Rows[index];
            TextBox txt_changevalue1 = row1.Cells[0].FindControl("txt_change_cutted") as TextBox;
            if (!string.IsNullOrEmpty(txt_changevalue1.Text) || changevalue != 0)
            {
                changevalue1 = Convert.ToInt32(txt_changevalue1.Text);
            }
            if (string.IsNullOrEmpty(txt_changevalue1.Text) || Convert.ToInt32(txt_changevalue1.Text) == 0)
            {
                txt_changevalue1.BorderColor = Color.Red;
            }
            else
            {
                con.Open();
                SqlCommand update = new SqlCommand("UPDATE [flower_depot].[dbo].[cutted_and_remain] " +
                                                   "SET [cutted] = [cutted]+ " + changevalue1 + " " +
                                                   ",[record4] = [record3] " +
                                                   ",[td4] = [td3]" +
                                                   ",[record3] = [record2] " +
                                                   ",[td3] = [td2]" +
                                                   ",[record2] = [record1] " +
                                                   ",[td2] = [td1]" +
                                                   ",[record1] = '" + txt_changevalue1.Text + "' + '+' " +
                                                   ",[td1] = '" + timeAndDate + "' " +
                                                   "WHERE (ID = " + ViewState["increase_id"] + ") ", con);
                update.ExecuteNonQuery();
                SqlCommand update2 = new SqlCommand("UPDATE [flower_depot].[dbo].[cutted_and_remain] " +
                                                    "SET [total] = [cutted] + [falleh] + [service] " +
                                                    "WHERE (ID = " + ViewState["increase_id"] + ") ", con);
                update2.ExecuteNonQuery();
                con.Close();
                grid_show_cutted_and_remain.DataBind();
                txt_changevalue1.Text = "";
            }
        }
    }

    protected void back_to_previous_page_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }

    protected void btn_cancel_delete_OnClick(object sender, EventArgs e)
    {
        pnl_delete_warning.Visible = false;
    }

    protected void btn_accept_delete_OnClick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand delete_cutted = new SqlCommand("delete from cutted_and_remain where ID = " + ViewState["delete_id"] + " ", con);
        delete_cutted.ExecuteNonQuery();
        con.Close();
        grid_show_cutted_and_remain.DataBind();
        pnl_delete_warning.Visible = false;
    }

}