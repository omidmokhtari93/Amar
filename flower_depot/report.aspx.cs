using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class report : System.Web.UI.Page
{
    private int _customerId;
    int _total, _total1, _total2, _total3, _total4, _total5, _total6, _total7, _total8, _total9;
    int _drpCustomer;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
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
            pnlshowtotal.Visible = false;
        }
        Page.MaintainScrollPositionOnPostBack = true;
    } //ok
    protected void rbl_choose_report_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbl_choose_report.SelectedValue == "1")
        {
            pnl_countof_cutomer_sheet.Visible = true;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "2")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = true;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "3")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = true;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "4")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = true;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "5")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = true;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "6")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = true;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "7")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnlBoresh.Visible = false;
            pnl_bastebandi_depo.Visible = true;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "8")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlBoresh.Visible = true;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "9")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlBoresh.Visible = false;
            pnlMojoodiGol.Visible = true;
            pnlTedadBargBaDimnesion.Visible = false;
        }
        else if (rbl_choose_report.SelectedValue == "10")
        {
            pnl_countof_cutomer_sheet.Visible = false;
            pnl_sheetcount_accordingto_filters.Visible = false;
            pnl_after93.Visible = false;
            pnl_customer_items.Visible = false;
            pnl_search_in_cus_items.Visible = false;
            pnl_customer_enter_sheetcount.Visible = false;
            pnl_bastebandi_depo.Visible = false;
            pnlBoresh.Visible = false;
            pnlMojoodiGol.Visible = false;
            pnlTedadBargBaDimnesion.Visible = true;
        }
    } //ok
    protected void btn_sheetcount_report_OnClick(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("moshtari");
        dt.Columns.Add("100 * 70");
        dt.Columns.Add("25 * 35");
        dt.Columns.Add("40 * 60");
        dt.Columns.Add("50 * 70");
        dt.Columns.Add("52 * 71");
        dt.Columns.Add("60 * 80");
        dt.Columns.Add("65 * 85");
        dt.Columns.Add("71 * 82");
        dt.Columns.Add("50 * 80");
        dt.Columns.Add("A4");
        con.Open();
        var customerCount = new SqlCommand("select count(customer_id) as cc from flower_customers", con);
        var cc = Convert.ToInt32(customerCount.ExecuteScalar());
        for (int i = 1; i <= cc; i++)
        {
            var cus_id = new SqlCommand("select customer_id  from (select customer_id , ROW_NUMBER()over (order by customer_id) as row_num" +
                                        " from flower_customers) as i where row_num = " + i + " ", con);
            _customerId = Convert.ToInt32(cus_id.ExecuteScalar());
            var da = new SqlDataAdapter("select (select customer_name from flower_customers where customer_id = " + _customerId + ")as moshtari," +
                                        "piv.[1] as '100 * 70',piv.[2] as '25 * 35',piv.[3] as '40 * 60'," +
                                        " piv.[4] as '50 * 70',piv.[5] as '52 * 71',piv.[6] as '60 * 80',piv.[7] as '65 * 85'," +
                                        " piv.[8] as '71 * 82', piv.[9] as 'A4' , piv.[10] as '50 * 80' from " +
                                        "(select sum(sheetcount) as tedad, dimension from flower_forms_entry " +
                                        "where flower_id in (select id from flower_entry where customer_name = " + _customerId + ") " +
                                        "group by dimension union all " +
                                        "select cast(sum(tedad * 0.75) as int) as tedad, ffe.dimension from new_halfcut " +
                                        "inner join flower_forms_entry ffe on new_halfcut.formid = ffe.id " +
                                        "where flowid in (select id from flower_entry where customer_name = " + _customerId + ") " +
                                        "group by ffe.dimension union all " +
                                        "select sum(k.tedad) as tedad, 4 as dimension from " +
                                        "(select sum(cutted) / ffo.tedad as tedad from cutted_and_remain car " +
                                        "inner join flower_entry fe on car.flower_id = fe.id " +
                                        "inner join flower_formats ffo on fe.flower_format = ffo.flowformat_id " +
                                        "where car.flower_id in (select id from flower_entry where customer_name = " + _customerId + ") " +
                                        "group by ffo.flow_format , ffo.tedad)k)as src " +
                                        "pivot(sum(tedad) for dimension in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10]))as piv; ", con);
            da.Fill(dt);
        }
        grid_cus.Columns[0].FooterText = "جمع کل";
        foreach (DataRow dr in dt.Rows)
        {
            if (string.IsNullOrEmpty(dr["100 * 70"].ToString())) { } else { _total += Convert.ToInt32(dr["100 * 70"]); }
            if (string.IsNullOrEmpty(dr["25 * 35"].ToString())) { } else { _total1 += Convert.ToInt32(dr["25 * 35"]); }
            if (string.IsNullOrEmpty(dr["40 * 60"].ToString())) { } else { _total2 += Convert.ToInt32(dr["40 * 60"]); }
            if (string.IsNullOrEmpty(dr["50 * 70"].ToString())) { } else { _total3 += Convert.ToInt32(dr["50 * 70"]); }
            if (string.IsNullOrEmpty(dr["52 * 71"].ToString())) { } else { _total4 += Convert.ToInt32(dr["52 * 71"]); }
            if (string.IsNullOrEmpty(dr["60 * 80"].ToString())) { } else { _total5 += Convert.ToInt32(dr["60 * 80"]); }
            if (string.IsNullOrEmpty(dr["65 * 85"].ToString())) { } else { _total6 += Convert.ToInt32(dr["65 * 85"]); }
            if (string.IsNullOrEmpty(dr["71 * 82"].ToString())) { } else { _total7 += Convert.ToInt32(dr["71 * 82"]); }
            if (string.IsNullOrEmpty(dr["50 * 80"].ToString())) { } else { _total9 += Convert.ToInt32(dr["50 * 80"]); }
            if (string.IsNullOrEmpty(dr["A4"].ToString())) { } else { _total8 += Convert.ToInt32(dr["A4"]); }

        }
        grid_cus.Columns[1].FooterText = _total.ToString();
        grid_cus.Columns[2].FooterText = _total1.ToString();
        grid_cus.Columns[3].FooterText = _total2.ToString();
        grid_cus.Columns[4].FooterText = _total3.ToString();
        grid_cus.Columns[5].FooterText = _total4.ToString();
        grid_cus.Columns[6].FooterText = _total5.ToString();
        grid_cus.Columns[7].FooterText = _total6.ToString();
        grid_cus.Columns[8].FooterText = _total7.ToString();
        grid_cus.Columns[10].FooterText = _total8.ToString();
        grid_cus.Columns[9].FooterText = _total9.ToString();
        grid_cus.FooterStyle.CssClass = "bolderfooter";
        grid_cus.DataSource = dt;
        grid_cus.DataBind();
        lbltotalsheet.Text = _total + _total1 + _total2 + _total3 + _total4 + _total5 + _total6 + _total7 + _total8 + _total9 + "";
        pnlshowtotal.Visible = true;
        con.Close();
    } //ok
    protected void btn_get_filtered_report_OnClick(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string startDate = drp_year1.Text + "/" + drp_month1.Text + "/" + drp_day1.Text;
        string endDate = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
        _drpCustomer = int.Parse(drp_customer.SelectedValue);
        var da = new SqlDataAdapter("select '" + drp_customer.SelectedItem.Text + "' as moshtari, " +
                                 "piv.[1] as '100 * 70', piv.[2] as '25 * 35', piv.[3] as '40 * 60', " +
                                 "piv.[4] as '50 * 70', piv.[5] as '52 * 71', piv.[6] as '60 * 80', piv.[7] as '65 * 85', " +
                                 "piv.[8] as '71 * 82', piv.[9] as 'A4', piv.[10] as '50 * 80' from " +
                                 "(select sum(sheetcount) as tedad, dimension from flower_forms_entry " +
                                 "where flower_id in (select id from flower_entry where " +
                                 "(customer_name = " + _drpCustomer + " or " + drp_customer.SelectedValue + " = -1) and " +
                                 "(company_name = " + drp_company.SelectedValue + " or " + drp_company.SelectedValue + " = -1) and " +
                                 "(flower_format = " + drp_format.SelectedValue + " or " + drp_format.SelectedValue + " = -1) and " +
                                 "(last_enter_date >= '" + startDate + "' and last_enter_date <= '" + endDate + "')) " +
                                 "group by dimension union all " +
                                 "select cast(sum(tedad * 0.75) as int) as tedad, ffe.dimension from new_halfcut " +
                                 "inner join flower_forms_entry ffe on new_halfcut.formid = ffe.id " +
                                 "where flowid in (select id from flower_entry where " +
                                 "(customer_name = " + _drpCustomer + " or " + drp_customer.SelectedValue + " = -1) and " +
                                 "(company_name = " + drp_company.SelectedValue + " or " + drp_company.SelectedValue + " = -1) and " +
                                 "(flower_format = " + drp_format.SelectedValue + " or " + drp_format.SelectedValue + " = -1) and " +
                                 "(last_enter_date >= '" + startDate + "' and last_enter_date <= '" + endDate + "')) " +
                                 "group by ffe.dimension)as src " +
                                 "pivot(sum(tedad) for dimension in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10]))as piv; ", con);
        da.Fill(dt);
        grid_show_filtered_sheetcount.DataSource = dt;
        grid_show_filtered_sheetcount.DataBind();
    } //ok
    protected void grid_show_filtered_sheetcount_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            var status = (Label)e.Row.FindControl("lbl_cus_name");
            status.Text = drp_customer.SelectedItem.Text;
        }
    } //ok
    protected void btn_get_customer_entry_Sheetcount_OnClick(object sender, EventArgs e)
    {
        var startDate = dr_year0.Text + "/" + dr_month0.Text + "/" + dr_day0.Text;
        var endDate = dr_year1.Text + "/" + dr_month1.Text + "/" + dr_day1.Text;
        var ds = new SqlDataSource
        {
            // production
            //ConnectionString = "Server=server\\server;Database=flower_depot;User ID=sa;Password=Taghdis000",

            //development
            ConnectionString = "Data Source=.;Initial Catalog=flower_depot;Integrated Security=True",

            //SelectCommand = "SELECT '" + dr_cus_entr_sheetcount.SelectedItem.Text + "' as customer_name ," +
            //                " '" + dr_company.SelectedItem.Text + "' as company_name ," +
            //                " SUM(dbo.order_sheet_count.sheet_count) AS total_sheet " +
            //                "FROM dbo.flower_entry INNER JOIN " +
            //                "dbo.order_sheet_count ON dbo.flower_entry.id " +
            //                "= dbo.order_sheet_count.flower_id " +
            //                "WHERE(dbo.flower_entry.customer_name = " + dr_cus_entr_sheetcount.SelectedValue + " or " +
            //                dr_cus_entr_sheetcount.SelectedValue + " = -1) " +
            //                "AND(dbo.flower_entry.company_name = " + dr_company.SelectedValue + " or " +
            //                dr_company.SelectedValue + " = -1) " +
            //                "AND (order_sheet_count.recieve_date <= '" + endData +
            //                "') AND (order_sheet_count.recieve_date >= '" + startDate + "')"
            SelectCommand = "SELECT '" + dr_cus_entr_sheetcount.SelectedItem.Text + "' as customer_name ," +
                            "'" + dr_company.SelectedItem.Text + "' as company_name , " +
                            "SUM(order_sheet_count.sheet_count) AS total_sheet, " +
                            "flower_dimensions.flow_dimension as dimension FROM flower_entry " +
                            "INNER JOIN order_sheet_count ON flower_entry.id = order_sheet_count.flower_id " +
                            "inner join flower_forms_entry on order_sheet_count.form_id = flower_forms_entry.id " +
                            "inner join flower_dimensions on flower_forms_entry.dimension = flower_dimensions.dimension_id " +
                            "WHERE(flower_entry.customer_name = " + dr_cus_entr_sheetcount.SelectedValue + "  or " + dr_cus_entr_sheetcount.SelectedValue + " = -1) " +
                            "AND(flower_dimensions.dimension_id = " + drDimension.SelectedValue + " or " + drDimension.SelectedValue + " = -1) " +
                            "AND(flower_entry.company_name = " + dr_company.SelectedValue + "  or " + dr_company.SelectedValue + " = -1) " +
                            "AND(order_sheet_count.recieve_date <= '" + endDate + "') " +
                            "AND(order_sheet_count.recieve_date >= '" + startDate + "') " +
                            "group by flower_dimensions.flow_dimension"
        };
        ds.DataBind();
        grid_cus_enter_sheetcount.DataSource = ds;
        grid_cus_enter_sheetcount.DataBind();
    } //ok

    protected void OnClick(object sender, EventArgs e)
    {
        Response.Redirect("search_flower.aspx?fid=" + Session["report"]);
    }
}