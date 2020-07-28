using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_mojoodibastebandi : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void grid_orders_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["delOrder"] = (int)grid_orders.DataKeys[rowIndex]["id"];
            pnldel.Visible = true;
        }
        if (e.CommandName != "order_detailes") return;
        {
            var rowIndex = int.Parse(e.CommandArgument.ToString());
            var oid = (int)grid_orders.DataKeys[rowIndex]["id"];
            cnn.Open();
            var selorder = new SqlCommand(
                "select  order_id, fc.customer_name as cus , tarikh , orders.mem " +
                "from orders inner join flower_depot.dbo.flower_customers as fc on orders.customer_id" +
                " = fc.customer_id where orders.id =" + oid + " ", cnn);
            var rd = selorder.ExecuteReader();
            if (rd.Read())
            {
                lblOrderNumber.InnerText = rd["order_id"].ToString();
                lblCusName.InnerText = rd["cus"].ToString();
                lblTarikh.InnerText = rd["tarikh"].ToString();
                lblComment.InnerText = rd["mem"].ToString();
            }
            order_id.Value = oid.ToString();
            pnl_order.Visible = false;
            pnl_order_detailes.Visible = true;
        }
    }

    protected void btnNo_OnClick(object sender, EventArgs e)
    {
        pnldel.Visible = false;
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        cnn.Open();
        var delorder = new SqlCommand("delete from orders where id = " + ViewState["delOrder"] + " ", cnn);
        delorder.ExecuteNonQuery();
        var delorder1 = new SqlCommand("delete from order_details where order_id = " + ViewState["delOrder"] + " ", cnn);
        delorder1.ExecuteNonQuery();
        cnn.Close();
        grid_orders.DataBind();
        pnldel.Visible = false;
    }

    protected void btn_cancel_OnClick(object sender, EventArgs e)
    {
        pnl_order.Visible = true;
        pnl_order_detailes.Visible = false;
    }

    protected void btnFinalConfirmation_OnClick(object sender, EventArgs e)
    {
        cnn.Open();
        var conf = new SqlCommand("update orders set bconf = 1 where id = " + order_id.Value + " ", cnn);
        conf.ExecuteNonQuery();
        grid_orders.DataBind();
        pnl_order.Visible = true;
        pnl_order_detailes.Visible = false;
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }
}