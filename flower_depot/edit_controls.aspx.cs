using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_controls : System.Web.UI.Page
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
    }

    protected void rbl_choose_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbl_choose.SelectedValue == "0")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = true;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "1")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = true;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "2")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = true;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "3")
        {
            pnl_color.Visible = true;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "4")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = true;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "5")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = true;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "6")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = true;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = false;
        }
        if (rbl_choose.SelectedValue == "7")
        {
            pnl_color.Visible = false;
            pnl_colortype.Visible = false;
            pnl_company.Visible = false;
            pnl_customer.Visible = false;
            pnl_dimension.Visible = false;
            pnl_format.Visible = false;
            pnl_item.Visible = false;
            pnl_ordertype.Visible = true;
        }
    }

    protected void btn_item_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_item_name.Text))
        {
            txt_item_name.BorderWidth = 2;
            txt_item_name.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertitem = new SqlCommand("insert into items (item_name) values ('" + txt_item_name.Text + "') ", con);
            insertitem.ExecuteNonQuery();
            SqlCommand farsi =new SqlCommand("UPDATE [flower_depot].[dbo].[items] "+
                                             "set item_name = replace(item_name, NCHAR(1603), NCHAR(1705)) where item_name like '%' + NCHAR(1603) + '%' " +
                                             "UPDATE[flower_depot].[dbo].[items] " +
                                             "set item_name = replace(item_name, NCHAR(1610), NCHAR(1740)) where item_name like '%' + NCHAR(1610) + '%'", con);
            farsi.ExecuteNonQuery();
            con.Close();
            grid_item.DataBind();
            txt_item_name.BorderWidth = 2;
            txt_item_name.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_color_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_color.Text))
        {
            txt_color.BorderWidth = 2;
            txt_color.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertcolor =
                new SqlCommand("insert into flower_colors (flow_color) values ('" + txt_color.Text + "') ", con);
            insertcolor.ExecuteNonQuery();
            con.Close();
            grid_color.DataBind();
            txt_color.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_cltype_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_color_type.Text))
        {
            txt_color_type.BorderWidth = 2;
            txt_color_type.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertcolortype =
                new SqlCommand("insert into flower_colortypes (flow_colortype) values ('" + txt_color_type.Text + "') ",
                    con);
            insertcolortype.ExecuteNonQuery();
            con.Close();
            grid_colortype.DataBind();
            txt_color_type.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_form_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_format.Text))
        {
            txt_format.BorderWidth = 2;
            txt_format.BorderColor = Color.Red;
        }
        else if (string.IsNullOrEmpty(txtTedadDarBarg.Text))
        {
            txtTedadDarBarg.BorderWidth = 2;
            txtTedadDarBarg.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertformat =
                new SqlCommand("insert into flower_formats (flow_format) values ('" + txt_format.Text + "') ", con);
            insertformat.ExecuteNonQuery();
            con.Close();
            grid_format.DataBind();
            txt_format.BorderColor = Color.Green;
            txtTedadDarBarg.BorderColor = Color.Green;
        }
    }

    protected void btn_dim_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_dim.Text))
        {
            txt_dim.BorderWidth = 2;
            txt_dim.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand inserdim =
                new SqlCommand("insert into flower_dimensions (flow_dimension) values ('" + txt_dim.Text + "') ", con);
            inserdim.ExecuteNonQuery();
            con.Close();
            grid_dimension.DataBind();
            txt_dim.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_cus_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_cus.Text))
        {
            txt_cus.BorderWidth = 2;
            txt_cus.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insetcus =
                new SqlCommand("insert into flower_customers (customer_name) values ('" + txt_cus.Text + "') ", con);
            insetcus.ExecuteNonQuery();
            con.Close();
            grid_customer.DataBind();
            txt_cus.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_comp_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_comp.Text))
        {
            txt_comp.BorderWidth = 2;
            txt_comp.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertcomp =
                new SqlCommand("insert into flower_companies (company_name) values ('" + txt_comp.Text + "') ", con);
            insertcomp.ExecuteNonQuery();
            con.Close();
            grid_company.DataBind();
            txt_comp.BorderColor = Color.LimeGreen;
        }
    }

    protected void btn_order_type_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_order_type.Text))
        {
            txt_order_type.BorderWidth = 2;
            txt_order_type.BorderColor = Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand insertordertype =
                new SqlCommand("insert into order_type (order_type) values ('" + txt_order_type.Text + "') ", con);
            insertordertype.ExecuteNonQuery();
            con.Close();
            grid_ordertype.DataBind();
            txt_order_type.BorderColor = Color.LimeGreen;
        }
    }
}