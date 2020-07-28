using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_orderDetTEST : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            GetTimeDate();
        }

        if (Session["username"].ToString() == "ali")
        {
            Sqlhavaleh.SelectCommand = "SELECT ID ,replace(sh, '/', '')as shomare,replace(sh, ' ', '')as sh, left (dat,4)+ '/' " +
                                       "+ SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat" +
                                       ",mnan, madd, rnam, rno , mem FROM HKhorooj" +
                                       " where ID not in (SELECT ID FROM HKhorooj where sh like '220/%' or sh like '210/%') or ID in (10884 , 8201) " +
                                       "order by HKhorooj.dat desc, shomare desc";
        }
    }

    private void GetTimeDate()
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

    protected void gridHavaleh_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "kala")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var Hid = (int)gridHavaleh.DataKeys[index]["ID"];
            con.Open();
            var selHAvaleInfo = new SqlCommand("SELECT  sh, left (dat,4)+ '/' + SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat," +
                                               " mnan, madd, rnam, rno , mem FROM HKhorooj where ID = " + Hid + " ", con);
            var read = selHAvaleInfo.ExecuteReader();
            if (read.Read())
            {
                lblsh.InnerText = read["sh"].ToString();
                lbldat.InnerText = read["dat"].ToString();
                lblmnam.InnerText = read["mnan"].ToString();
                lblmadd.InnerText = read["madd"].ToString();
                lblrnam.InnerText = read["rnam"].ToString();
                lblrno.InnerText = read["rno"].ToString();
                lblmem.InnerText = read["mem"].ToString();
            }
            HavalehId.Value = Hid.ToString();
            pnlHavaleh.Visible = false;
            pnlKala.Visible = true;
            CheckOrderConfirmed();
        }
        if (e.CommandName == "delet")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var Hid = (int)gridHavaleh.DataKeys[index]["ID"];
            HavalehId.Value = Hid.ToString();
            pnldeletehavaleh.Visible = true;
        }
        if (e.CommandName == "ed")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var hid = gridHavaleh.DataKeys[index]["ID"];
            HavalehId.Value = hid.ToString();
            con.Open();
            var selHAvaleInfo = new SqlCommand("SELECT  sh, dat," +
                                               " mnan, madd, rnam, rno , mem FROM HKhorooj where ID = " + hid + " ", con);
            var read = selHAvaleInfo.ExecuteReader();
            if (read.Read())
            {
                txtHavalehNo.Text = read["sh"].ToString();
                var dat = read["dat"].ToString();
                drpyear.SelectedValue = dat.Substring(0, 4);
                drpmonth.SelectedValue = dat.Substring(4, 2);
                drpday.SelectedValue = dat.Substring(6, 2);
                txtAddressKharidar.Text = read["madd"].ToString();
                txtNamDriver.Text = read["rnam"].ToString();
                txtShomareMashin.Text = read["rno"].ToString();
                txtMolahezat.Text = read["mem"].ToString();
            }
            btnEdit.Visible = true;
            btnCancel.Visible = true;
            btnSabt.Visible = false;
        }
    }

    private void CheckOrderConfirmed()
    {
        con.Close();
        con.Open();
        var checkConfirmed = new SqlCommand("select conf from HKhorooj where ID = " + HavalehId.Value + " ", con);
        var isConfirmed = Convert.ToBoolean(checkConfirmed.ExecuteScalar());
        btnConfirm.Visible = !isConfirmed;
        con.Close();
    }

    protected void btnConfirm_OnServerClick(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        var updateDepo = new SqlCommand("update basdepo set Tedad = basdepo.Tedad - i.Tedad " +
                                        "from(select * from HKhoroojRiz where idkh = " + HavalehId.Value + " )i " +
                                        "where i.idi = basdepo.idi and i.ids = basdepo.ids " +
                                        "and i.idg = basdepo.idg and i.idd = basdepo.idd and i.rang = basdepo.rang " +
                                        "delete from basdepo where Tedad = 0 " +
                                        "update HKhorooj set conf = 1 where ID = " + HavalehId.Value + " ", con);
        updateDepo.ExecuteNonQuery();
        CheckOrderConfirmed();
    }

    protected void btnAddDarageM_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddDarage.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertDarage = new SqlCommand("insert into Darajeh (dar) values (N'" + txtAddDarage.Text + "')", con);
        insertDarage.ExecuteNonQuery();
        listDarage.DataBind();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    protected void btnAddRangM_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddRang.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertDarage = new SqlCommand("insert into rang (colo) values (N'" + txtAddRang.Text + "')", con);
        insertDarage.ExecuteNonQuery();
        listDarage.DataBind();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    protected void btnAddGolM_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddGol.Text) || string.IsNullOrEmpty(txtAddGolCode.Text) || string.IsNullOrEmpty(txtAddGolMoshtari.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertDarage = new SqlCommand("insert into Gol (nam,cod,moshtari,mem) values (N'" + txtAddGol.Text + "'," +
                                          " N'" + txtAddGolCode.Text + "' , N'" + txtAddGolMoshtari.Text + "' , N'" + txtAddGolMolahez.Text + "')", con);
        insertDarage.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    protected void btnBacktoHavale_OnClick(object sender, EventArgs e)
    {
        pnlHavaleh.Visible = true;
        pnlKala.Visible = false;
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        var searchField = txtsearchAll.Value;
        Sqlhavaleh.FilterExpression = "sh like '%" + searchField + "%' or dat like '%" + searchField + "%' or " +
                                      " mnan like '%" + searchField + "%' or madd like '%" + searchField + "%'" +
                                      " or mem like '%" + searchField + "%' or rnam like '%" + searchField + "%' " +
                                      " or rno like '%" + searchField + "%' ";
        gridHavaleh.DataBind();
    }

    protected void btnSabt_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtHavalehNo.Text) || drMoshtari.SelectedValue == "-1")
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        if (CheckDuplicateHavalehNumber(txtHavalehNo.Text))
        {
            con.Close();
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "RedAlert('no', 'شماره حواله تکراری');", true);
            return;
        }
        con.Close();
        var tarikh = drpyear.SelectedValue + "" + drpmonth.SelectedValue + "" + drpday.SelectedValue;
        con.Open();
        var insertHavaleh = new SqlCommand("INSERT INTO [dbo].[HKhorooj]([sh],[dat],[rnam],[rno],[mem],[mnan],[madd],[mid])" +
                                           "VALUES(N'" + txtHavalehNo.Text + "' , N'" + tarikh + "' , N'" + txtNamDriver.Text + "' , " +
                                           "N'" + txtShomareMashin.Text + "' , N'" + txtMolahezat.Text + "', N'" + drMoshtari.SelectedItem.Text + "'" +
                                           " ,N'" + txtAddressKharidar.Text + "'," + drMoshtari.SelectedValue + ")", con);
        insertHavaleh.ExecuteNonQuery();
        gridHavaleh.DataBind();
        txtHavalehNo.Text = "";
        drMoshtari.SelectedValue = "-1";
        GetTimeDate();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    private bool CheckDuplicateHavalehNumber(string number)
    {
        con.Open();
        var numeric = new string(number.Where(char.IsDigit).ToArray());
        var sel = new SqlCommand("select count(number)from(select dbo.GetNumeric(sh) as number from HKhorooj)i where number like '" + numeric + "'", con);
        return (int)sel.ExecuteScalar() > 0;

    }

    protected void btnAddItem_OnServerClick(object sender, EventArgs e)
    {
        Response.Redirect("item.aspx");
    }

    protected void btnAddService_OnServerClick(object sender, EventArgs e)
    {
        Response.Redirect("service.aspx");
    }

    protected void drMoshtari_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        var lsh = new SqlCommand("select REPLACE(sh , '.' ,'/')as sh from " +
                                 "(select max(cast(sh as float)) as sh from " +
                                 "(SELECT replace(substring(sh, 5, 10), '/', '.') as sh " +
                                 "FROM[dbo].[HKhorooj] " +
                                 "where sh like '880%')i)j", con);
        txtLastSH.Text = lsh.ExecuteScalar().ToString();
    }

    protected void btndeletehavaNo_OnClick(object sender, EventArgs e)
    {
        pnldeletehavaleh.Visible = false;
    }
    protected void btnEdit_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtHavalehNo.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        if (drMoshtari.SelectedValue == "-1")
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "customer();", true);
            return;
        }
        con.Open();
        var tarikh = drpyear.SelectedValue + "" + drpmonth.SelectedValue + "" + drpday.SelectedValue;
        var updateHavaleh = new SqlCommand("UPDATE [dbo].[HKhorooj] " +
                                           "SET[sh] = N'" + txtHavalehNo.Text + "' " +
                                           ",[dat] = N'" + tarikh + "' " +
                                           ",[rnam] = N'" + txtNamDriver.Text + "' " +
                                           ",[rno] = N'" + txtShomareMashin.Text + "' " +
                                           ",[mem] = N'" + txtMolahezat.Text + "' " +
                                           ",[mid] = " + drMoshtari.SelectedValue + " " +
                                           ",[mnan] = N'" + drMoshtari.SelectedItem.Text + "' " +
                                           ",[madd] = N'" + txtAddressKharidar.Text + "' " +
                                           "WHERE ID = " + HavalehId.Value + " ", con);
        updateHavaleh.ExecuteNonQuery();
        gridHavaleh.DataBind();
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabt.Visible = true;
        ClearFields();
        GetTimeDate();
    }

    protected void btnCancel_OnClick(object sender, EventArgs e)
    {
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabt.Visible = true;
        ClearFields();
        GetTimeDate();
    }

    private void ClearFields()
    {
        txtHavalehNo.Text = "";
        txtAddressKharidar.Text = "";
        txtNamDriver.Text = "";
        txtShomareMashin.Text = "";
        txtMolahezat.Text = "";
    }

    protected void gridHavaleh_OnPageIndexChanged(object sender, EventArgs e)
    {
        var searchField = txtsearchAll.Value;
        Sqlhavaleh.FilterExpression = "sh like '%" + searchField + "%' or dat like '%" + searchField + "%' or " +
                                      " mnan like '%" + searchField + "%' or madd like '%" + searchField + "%'" +
                                      " or mem like '%" + searchField + "%' or rnam like '%" + searchField + "%' " +
                                      " or rno like '%" + searchField + "%' ";
        gridHavaleh.DataBind();
    }

    protected void btndeletehavaYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteHavaleh = new SqlCommand("delete from HKhoroojRiz where idkh = " + HavalehId.Value + " " +
                                           " delete from HKhorooj where ID = " + HavalehId.Value + " ", con);
        deleteHavaleh.BeginExecuteNonQuery();
        pnldeletehavaleh.Visible = false;
        var searchField = txtsearchAll.Value;
        Sqlhavaleh.FilterExpression = "sh like '%" + searchField + "%' or dat like '%" + searchField + "%' or " +
                                      " mnan like '%" + searchField + "%' or madd like '%" + searchField + "%'" +
                                      " or mem like '%" + searchField + "%' or rnam like '%" + searchField + "%' " +
                                      " or rno like '%" + searchField + "%' ";
        Sqlhavaleh.DataBind();
        gridHavaleh.DataBind();
        GetTimeDate();
    }
}