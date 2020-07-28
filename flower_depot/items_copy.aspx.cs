using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class items_copy : System.Web.UI.Page
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
    }
    protected void btn_search_source_OnClick(object sender, EventArgs e)
    {
        pnl_destination_controls.Visible = false;
        pnl_copy_warning.Visible = false;
        pnl_show_success.Visible = false;
        if (string.IsNullOrEmpty(txt_folwname_source.Text))
        {
            Session["source_flower_id"] = "";
            drp_form_source.DataSource  =  null;
            drp_form_source.Items.Clear();
            pnl_show_res_dest.Visible = false;
        }
        else
        {
            pnl_show_res_source.Visible = true;
            sqlsearch_source.FilterExpression = " flower_name LIKE '%" + txt_folwname_source.Text + "%'";
            grid_search_source.DataBind();
            Session["source_flower_id"] = "";
            drp_form_source.DataSource = null;
            drp_form_source.Items.Clear();
            pnl_show_res_dest.Visible = false;
        }
    }
    protected void grid_search_source_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnl_destination_controls.Visible = false;
        pnl_copy_warning.Visible = false;
        pnl_show_success.Visible = false;
        if (e.CommandName == "choose_source")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Session["source_flower_id"] = (int) grid_search_source.DataKeys[rowIndex]["id"];
            sqlsearch_source.FilterExpression = "id = " + Session["source_flower_id"] + " ";
            drp_form_source.DataBind();
        }
        get_arrange_info();
    }
    protected void btn_search_destination_OnClick(object sender, EventArgs e)
    {
        pnl_copy_warning.Visible = false;
        pnl_show_success.Visible = false;
        if (string.IsNullOrEmpty(txt_flowname_dest.Text))
        {
            Session["destination_flower_id"] = "";
            drp_form_destination.Items.Clear();
        }
        else
        {
            pnl_show_res_dest.Visible = true;
            sqlsearch_dest.FilterExpression = " flower_name LIKE '%" + txt_flowname_dest.Text + "%'";
            grid_search_dest.DataBind();
            Session["destination_flower_id"] = "";
            drp_form_destination.Items.Clear();
        }
        pnl_show_arrange_info1.Visible = false;
    }
    protected void grid_search_dest_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnl_copy_warning.Visible = false;
        pnl_show_success.Visible = false;
        if (e.CommandName == "choose_dest")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Session["destination_flower_id"] = (int) grid_search_dest.DataKeys[rowIndex]["id"];
            sqlsearch_dest.FilterExpression = "id = " + Session["destination_flower_id"] + " ";
            drp_form_destination.DataBind();
        }
    }
    protected void btn_paste_destination_OnClick(object sender, EventArgs e)
    {
        if (drp_form_destination.Items.Count == 0)
        {

        }
        else
        {
            con.Open();
            SqlCommand updateformname = new SqlCommand("update copy_items set form_number = '" +
                                                       drp_form_destination.SelectedItem.Text + "' " +
                                                       ", form_id = " + drp_form_destination.SelectedValue + " " +
                                                       ", flower_id = " + Session["destination_flower_id"] + " ", con);
            updateformname.ExecuteNonQuery();
            SqlCommand inserttomaintable = new SqlCommand(
                "INSERT INTO [flower_depot].[dbo].[flower_arrange_items]([flower_id],[form_id],[form_number],[item_name],[item_insheet_count],[lent_of_item],[comment]) " +
                "SELECT [flower_id],[form_id],[form_number],[item_name],[item_insheet_count],[lent_of_item],[comment] FROM [flower_depot].[dbo].[copy_items]",
                con);
            inserttomaintable.ExecuteNonQuery();
            pnl_show_success.Visible = true;
            con.Close();
            Session["destination_flower_id"] = "";
            Session["source_flower_id"] = "";
            drp_form_source.Items.Clear();
            drp_form_destination.Items.Clear();
        }
    }
    protected void btn_copy_OnClick(object sender, EventArgs e)
    {
        if (drp_form_source.Items.Count == 0)
        {

        }
        else
        {
            con.Open();
            SqlCommand deleteCommand = new SqlCommand("DELETE FROM [flower_depot].[dbo].[copy_items]", con);
            deleteCommand.ExecuteNonQuery();
            SqlCommand copy_items = new SqlCommand(
                "INSERT INTO [flower_depot].[dbo].[copy_items]([flower_id],[form_id],[form_number],[item_name],[item_insheet_count],[lent_of_item],[comment]) " +
                "SELECT[flower_id],[form_id],[form_number],[item_name],[item_insheet_count],[lent_of_item],[comment] " +
                "FROM[flower_depot].[dbo].[flower_arrange_items] WHERE (flower_id = " + Session["source_flower_id"] +
                ") " +
                "AND (form_id = " + drp_form_source.SelectedValue + " )", con);
            copy_items.ExecuteNonQuery();
            con.Close();
            pnl_copy_warning.Visible = true;
            pnl_destination_controls.Visible = true;
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
                                                    " where (id = " + drp_form_source.SelectedValue + ") ", con);
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
            pnl_show_arrange_info.Visible = true;
            con.Close();
        }
        catch (Exception e)
        {
        }
    }
    private void get_arrange_info1()
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
                                                    " where (id = " + drp_form_destination.SelectedValue + ") ", con);
            SqlDataReader readarrangeinfo = arrangeinfo.ExecuteReader();
            if (readarrangeinfo.Read())
            {
                lbl_arrange_type1.Text = readarrangeinfo["arrangetype"].ToString();
                lbl_dimension1.Text = readarrangeinfo["dimension"].ToString();
                lbl_arrange_sheet_count1.Text = readarrangeinfo["sheetcount"].ToString();
                lbl_mark1.Text = readarrangeinfo["mark"].ToString();
                lbl_arrange_comment1.Text = readarrangeinfo["comment"].ToString();
                lbl_lastenterdate1.Text = readarrangeinfo["last_enter_date"].ToString();
            }
            pnl_show_arrange_info.Visible = true;
            con.Close();
        }
        catch (Exception e)
        {
        }
    }
    protected void drp_form_source_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_arrange_info();
        pnl_show_arrange_info.Visible = true;
    }
    protected void drp_form_destination_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_arrange_info1();
        pnl_show_arrange_info1.Visible = true;
    }
}