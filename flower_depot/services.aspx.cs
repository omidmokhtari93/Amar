using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class services : System.Web.UI.Page
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

    protected void btn_add_service_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_service_name.Text))
        {

        }
        else
        {
            con.Open();
            SqlCommand insertservice =
                new SqlCommand("insert into services (service_name) values ('" + txt_service_name.Text + "')", con);
            insertservice.ExecuteNonQuery();
            grid_service_name.DataBind();
            con.Close();
        }
    }

    protected void btn_add_new_service_OnClick(object sender, EventArgs e)
    {
        pnl_add_service_items.Visible = false;
        pnl_add_services.Visible = true;
        grid_service_name.Columns[0].Visible = false;
    }

    protected void btn_add_service_items_OnClick(object sender, EventArgs e)
    {
        pnl_add_service_items.Visible = true;
        pnl_add_services.Visible = false;
        drp_services.DataBind();
    }

    protected void btn_insert_items_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_item_count.Text))
        {

        }
        else
        {
            con.Open();
            SqlCommand insertitems =
                new SqlCommand(
                    "insert into service_items (service_id,item,count) values ( " + drp_services.SelectedValue + ", " +
                    drp_items.SelectedValue + " , " + Convert.ToInt32(txt_item_count.Text) + " )", con);
            insertitems.ExecuteNonQuery();
            grid_service_items.DataBind();
            con.Close();
        }
    }

    protected void drp_services_SelectedIndexChanged(object sender, EventArgs e)
    {
        sqlserviceitems.FilterExpression = "service_id = " + drp_services.SelectedValue + " ";
        grid_service_items.DataBind();
    }

    protected void grid_service_items_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_item")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["id"] = (int)grid_service_items.DataKeys[rowIndex]["id"];
            ViewState["item"] = (int)grid_service_items.DataKeys[rowIndex]["item"];
            ViewState["count"] = (int)grid_service_items.DataKeys[rowIndex]["count"];
            drp_items.SelectedValue = ViewState["item"].ToString();
            txt_item_count.Text = ViewState["count"].ToString();
            btn_insert_items.Visible = false;
            btn_edit_item.Visible = true;
        }
        if (e.CommandName == "delete_item")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["id"] = (int)grid_service_items.DataKeys[rowIndex]["id"];
            con.Open();
            SqlCommand deleteitem = new SqlCommand("delete from service_items where id = " + ViewState["id"] + " ", con);
            deleteitem.ExecuteNonQuery();
            con.Close();
            grid_service_items.DataBind();
        }
    }

    protected void btn_edit_item_OnClick(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand update = new SqlCommand("update service_items set item = " + drp_items.SelectedValue + " " +
                                           ", count = '" + txt_item_count.Text + "' where id = " + ViewState["id"] + " ", con);
        update.ExecuteNonQuery();
        grid_service_items.DataBind();
        con.Close();
        btn_insert_items.Visible = true;
        btn_edit_item.Visible = false;
    }
}