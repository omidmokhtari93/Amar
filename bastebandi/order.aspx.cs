using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_order : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    private string cs = "Data Source=.;Initial Catalog=bastebandi;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            GetLastOrderNum();
        }
    }
    private void GetLastOrderNum()
    {
        cnn.Close();
        var pc = new PersianCalendar();
        var pDateYear = pc.GetYear(DateTime.Now).ToString();
        var pDateMonth = pc.GetMonth(DateTime.Now).ToString();
        var pDateDay = pc.GetDayOfMonth(DateTime.Now).ToString();
        if (pDateMonth.Length != 2) { pDateMonth = "0" + pDateMonth; }
        if (pDateDay.Length != 2) { pDateDay = "0" + pDateDay; }
        drpyear.SelectedValue = pDateYear;
        drpmonth.SelectedValue = pDateMonth;
        drpday.SelectedValue = pDateDay;
        cnn.Open();
        var orderS = new SqlCommand("select COUNT(ornum)+1 as ornum from " +
                                    "(select SUBSTRING(order_id, 5, 2) as ornum from orders)i " +
                                    "where ornum = " + pDateMonth + "", cnn);
        var oid = orderS.ExecuteScalar();
        txtOrderNumber.Text = pDateYear + "" + pDateMonth + "" + oid;
        cnn.Close();
        drCustomer.SelectedIndex = 0;
        txttozih.Text = "";
    }

    protected void btn_order_save_OnClick(object sender, EventArgs e)
    {
        if (drCustomer.SelectedValue == "-1"
            || drTahvilDay.SelectedValue == "-1"
            || drTahvilMonth.SelectedValue == "-1"
            || drTahvilYear.SelectedValue == "-1"
            || string.IsNullOrEmpty(txtCustomerDetail.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        var tarikh = drpyear.SelectedValue + "/" + drpmonth.SelectedValue + "/" + drpday.SelectedValue;
        var tarikhTahvil = drTahvilYear.SelectedValue + "/" + drTahvilMonth.SelectedValue + "/" + drTahvilDay.SelectedValue;
        cnn.Open();
        var insertorder = new SqlCommand("insert into orders (order_id , customer_id , customer_detail, tarikh , tarikh_tahvil , mem) values " +
                                         "('" + txtOrderNumber.Text + "' ," +
                                         " " + drCustomer.SelectedValue + " ," +
                                         " N'" + txtCustomerDetail.Text + "' ," +
                                         "'" + tarikh + "' ," +
                                         "'" + tarikhTahvil + "' ," +
                                         " N'" + txttozih.Text + "')", cnn);
        insertorder.ExecuteNonQuery();
        cnn.Close();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "saved();", true);
        GetLastOrderNum();
        grid_orders.DataBind();
        ClearFields();
    }

    private void ClearFields()
    {
        drCustomer.SelectedValue = "-1";
        txtCustomerDetail.Text = "";
        drTahvilYear.SelectedValue = "-1";
        drTahvilDay.SelectedValue = "-1";
        drTahvilMonth.SelectedValue = "-1";
    }
    protected void grid_orders_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ed")
        {
            var rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["edOrder"] = (int)grid_orders.DataKeys[rowIndex]["id"];
            cnn.Open();
            var getOrder = new SqlCommand("SELECT [order_id],[tarikh],[tarikh_tahvil],[customer_detail],[customer_id],[mem],[readd] FROM [dbo].[orders]" +
                                          " where id =" + ViewState["edOrder"] + " ", cnn);
            var rd = getOrder.ExecuteReader();
            if (rd.Read())
            {
                txtOrderNumber.Text = rd["order_id"].ToString();
                txttozih.Text = rd["mem"].ToString();
                var tarikh = rd["tarikh"].ToString();
                var tarikhTahvil = rd["tarikh_tahvil"].ToString();
                drpyear.SelectedValue = tarikh.Substring(0, 4);
                drpmonth.SelectedValue = tarikh.Substring(5, 2);
                drpday.SelectedValue = tarikh.Substring(8, 2);
                txtCustomerDetail.Text = rd["customer_detail"].ToString();
                drTahvilYear.SelectedValue = tarikhTahvil.Substring(0, 4);
                drTahvilMonth.SelectedValue = tarikhTahvil.Substring(5, 2);
                drTahvilDay.SelectedValue = tarikhTahvil.Substring(8, 2);
                drCustomer.SelectedValue = rd["customer_id"].ToString();
            }
            btnEditSabt.Visible = true;
            btnCanceledit.Visible = true;
            btn_order_save.Visible = false;
        }
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
                "select  order_id," +
                " fc.customer_name COLLATE Persian_100_CI_AI_KS_WS + ' - ' + customer_detail as cus ," +
                " tarikh ," +
                " tarikh_tahvil ," +
                " orders.mem " +
                " from orders inner join flower_depot.dbo.flower_customers as fc on orders.customer_id" +
                " = fc.customer_id where orders.id =" + oid + " ", cnn);
            var rd = selorder.ExecuteReader();
            if (rd.Read())
            {
                lblOrderNumber.InnerText = rd["order_id"].ToString();
                lblCusName.InnerText = rd["cus"].ToString();
                lblTarikh.InnerText = rd["tarikh"].ToString();
                lblTarikhTahvil.InnerText = rd["tarikh_tahvil"].ToString();
                lblComment.InnerText = rd["mem"].ToString();
            }
            order_id.Value = oid.ToString();
            pnl_order.Visible = false;
            pnl_order_detailes.Visible = true;
        }
    }

    protected void btn_cancel_OnClick(object sender, EventArgs e)
    {
        pnl_order.Visible = true;
        pnl_order_detailes.Visible = false;
        GetLastOrderNum();
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
        GetLastOrderNum();
    }

    protected void btnNo_OnClick(object sender, EventArgs e)
    {
        pnldel.Visible = false;
    }
    protected void btnCanceledit_OnClick(object sender, EventArgs e)
    {
        GetLastOrderNum();
        btnEditSabt.Visible = false;
        btnCanceledit.Visible = false;
        btn_order_save.Visible = true;
    }

    protected void btnEditSabt_OnClick(object sender, EventArgs e)
    {
        if (drCustomer.SelectedValue == "-1"
            || drTahvilDay.SelectedValue == "-1"
            || drTahvilMonth.SelectedValue == "-1"
            || drTahvilYear.SelectedValue == "-1"
            || string.IsNullOrEmpty(txtCustomerDetail.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        var tarikh = drpyear.SelectedValue + "/" + drpmonth.SelectedValue + "/" + drpday.SelectedValue;
        var tarikhTahvil = drTahvilYear.SelectedValue + "/" + drTahvilMonth.SelectedValue + "/" + drTahvilDay.SelectedValue;
        cnn.Open();
        var upOrders = new SqlCommand("UPDATE [dbo].[orders] SET" +
                                      " [tarikh] ='" + tarikh + "' " +
                                      ",[tarikh_tahvil] ='" + tarikhTahvil + "' " +
                                      ",[customer_detail] = N'" + txtCustomerDetail.Text + "' " +
                                      ",[customer_id] =" + drCustomer.SelectedValue + " " +
                                      ",[mem] = N'" + txttozih.Text + "' " +
                                      "WHERE id = " + ViewState["edOrder"] + " ", cnn);
        upOrders.ExecuteNonQuery();
        cnn.Close();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "saved();", true);
        GetLastOrderNum();
        grid_orders.DataBind();
        btnEditSabt.Visible = false;
        btnCanceledit.Visible = false;
        btn_order_save.Visible = true;
        ClearFields();
    }

    protected void btnfinal_OnClick(object sender, EventArgs e)
    {
        cnn.Open();
        var update = new SqlCommand("update orders set mconf = 1 where id = " + order_id.Value + " ", cnn);
        update.ExecuteNonQuery();
        pnl_order.Visible = true;
        pnl_order_detailes.Visible = false;
        GetLastOrderNum();
        grid_orders.DataBind();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "saved();", true);
    }
}