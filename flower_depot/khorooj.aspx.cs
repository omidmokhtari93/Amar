using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_khorooj : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    private bool check;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }
        if (!Page.IsPostBack)
        {
            var pc = new PersianCalendar();
            var pDateYear = pc.GetYear(DateTime.Now).ToString();
            var pDateMonth = pc.GetMonth(DateTime.Now).ToString();
            var pDateDay = pc.GetDayOfMonth(DateTime.Now).ToString();
            if (pDateMonth.Length != 2) { pDateMonth = "0" + pDateMonth; }
            if (pDateDay.Length != 2) { pDateDay = "0" + pDateDay; }
            drpyear.SelectedValue = pDateYear;
            drpmonth.SelectedValue = pDateMonth;
            drpday.SelectedValue = pDateDay;
        }
    }

    private void CheckClosed()
    {
        con.Close();
        con.Open();
        var checkClosed = new SqlCommand("select closed from khorooj where id = " + khoroojID.Value + " ", con);
        check = Convert.ToBoolean(checkClosed.ExecuteScalar());
        if (check)
        {
            foreach (GridViewRow row in gridRiz.Rows)
            {
                row.Cells[8].Enabled = false;
                row.Cells[9].Enabled = false;
            }
            btnRiz.Visible = false;
            btnSabtnahaee.Visible = false;
        }
        else
        {
            foreach (GridViewRow row in gridRiz.Rows)
            {
                row.Cells[8].Enabled = true;
                row.Cells[9].Enabled = true;
            }
            btnRiz.Visible = true;
            btnSabtnahaee.Visible = true;
        }
    }
    protected void btnkhorooj_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var tarikh = drpyear.SelectedValue + "/" + drpmonth.SelectedValue + "/" + drpday.SelectedValue;
        var insertKH = new SqlCommand("insert into khorooj (sh,tarikh,girande,tozihat)values " +
                                      " ('"+txtshomare.Text+"' , '"+tarikh+"','"+txtgirande.Text+"','"+txttozihat.Text+"' )",con);
        insertKH.ExecuteNonQuery();
        gridkhorooj.DataBind();

    }

    protected void gridkhorooj_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "riz")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var khID = (int) gridkhorooj.DataKeys[index]["id"];
            khoroojID.Value = khID.ToString();
            con.Open();
            var selkhorroj = new SqlCommand("select sh,tarikh,girande,tozihat from khorooj where id = "+khID+" ",con);
            var rd = selkhorroj.ExecuteReader();
            if (rd.Read())
            {
                lblsh.InnerText = rd["sh"].ToString();
                lbladd.InnerText = rd["girande"].ToString();
                lbltarikh.InnerText = rd["tarikh"].ToString();
                lbltozihat.InnerText = rd["tozihat"].ToString();
            }
            pnlkhorooj.Visible = false;
            pnlRiz.Visible = true;
            CheckClosed();
        }
        if (e.CommandName == "del")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var khID = (int)gridkhorooj.DataKeys[index]["id"];
            khoroojID.Value = khID.ToString();
            pnldel.Visible = true;
        }
    }

    protected void btnRiz_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var insertRiz = new SqlCommand("insert into khoroojRiz (idkh, form, code, name, rang, dim, tedadB, tedadK)values " +
                                       "("+khoroojID.Value+" ,'"+txtFormnumber.Text+"', '"+txtcode.Text+"' ,'"+txtnameG.Text+"','"+txtRang.Text+"'," +
                                       " '"+txtdim.Text+"' , '"+txttedadB.Text+"','"+txttedadKol.Text+"')",con);
        insertRiz.ExecuteNonQuery();
        ClearFields();
        gridRiz.DataBind();
    }

    private void ClearFields()
    {
        txtRang.Text = "";
        txtcode.Text = "";
        txtnameG.Text = "";
        txtdim.Text = "";
        txttedadB.Text = "";
        txttedadKol.Text = "";
        txtFormnumber.Text = "";
    }

    protected void btnBack_OnClick(object sender, EventArgs e)
    {
        pnlRiz.Visible = false;
        pnlkhorooj.Visible = true;
        gridkhorooj.DataBind();
    }

    protected void btnNO_OnClick(object sender, EventArgs e)
    {
        pnldel.Visible = false;
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var delkh = new SqlCommand("delete from khorooj where id= "+khoroojID.Value+" " +
                                   " delete from khoroojRiz where idkh = "+khoroojID.Value+" ",con);
        delkh.ExecuteNonQuery();
        pnldel.Visible = false;
        gridkhorooj.DataBind();
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        Sqlkhorooj.FilterExpression = " sh like '" + txtSearch.Text + "' or tarikh like '" + txtSearch.Text + "' " +
                                      "or girande like '%" + txtSearch.Text + "%' or tozihat like '%" + txtSearch.Text + "%' ";
        Sqlkhorooj.DataBind();
    }

    protected void btnSabtnahaee_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var uptoClosed = new SqlCommand("update khorooj set closed = 1 where id = "+khoroojID.Value+" ",con);
        uptoClosed.ExecuteNonQuery();
        CheckClosed();
    }

    protected void gridkhorooj_OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow) return;
        DataRowView drv = e.Row.DataItem as DataRowView;
        if (Convert.ToBoolean(drv["closed"]))
        {
            e.Row.Cells[6].Enabled = false;
            e.Row.Cells[6].ToolTip = "این برگ خروج ثبت نهایی شده است";
        }
    }

    protected void gridRiz_OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        CheckClosed();
    }
}