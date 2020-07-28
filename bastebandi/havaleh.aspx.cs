using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_havaleh : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            GetTimeDate();
        }
        hdPageCount.Value = gridKala.PageCount.ToString();
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
    protected void OnCheckedChanged(object sender, EventArgs e)
    {
        if (chkFallehService.Checked)
        {
            pnlService.Visible = true;
            pnlFalleh.Visible = false;
        }
        else
        {
            pnlService.Visible = false;
            pnlFalleh.Visible = true;
        }
    }

    protected void gridHavaleh_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "kala")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var Hid = (int) gridHavaleh.DataKeys[index]["ID"];
            con.Open();
            var selHAvaleInfo= new SqlCommand("SELECT  sh, left (dat,4)+ '/' + SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat, mnan, madd, rnam, rno , mem FROM HKhorooj where ID = "+Hid+" ",con);
            var read = selHAvaleInfo.ExecuteReader();
            if (read.Read())
            {
                lblsh.InnerText = read["sh"].ToString();
                lblShHavaleh.InnerText = read["sh"].ToString();
                lbldat.InnerText = read["dat"].ToString();
                lblDateHavaleh.InnerText = read["dat"].ToString();
                lblmnam.InnerText = read["mnan"].ToString();
                lblKharidar.InnerText = read["mnan"].ToString();
                lblmadd.InnerText = read["madd"].ToString();
                lblAddKharidar.InnerText = read["madd"].ToString();
                lblrnam.InnerText = read["rnam"].ToString();
                lblDriverName.InnerText = read["rnam"].ToString();
                lblrno.InnerText = read["rno"].ToString();
                lblShPelak.InnerText = read["rno"].ToString();
                lblmem.InnerText = read["mem"].ToString();
            }
            HavalehId.Value = Hid.ToString();
            gridKala.DataBind();
            lblPageNumber.InnerText = "صفحه 1 از " + gridKala.PageCount;
            pnlHavaleh.Visible = false;
            pnlKala.Visible = true;
            Get_Vazn_Total();
            GetHavalehTotal();
            gridKala.PageIndex = 0;
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
                //drMoshtari.SelectedValue = read["mnan"].ToString();
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

    protected void btnAddDarageM_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddDarage.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertDarage = new SqlCommand("insert into Darajeh (dar) values (N'"+txtAddDarage.Text+"')",con);
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
                                          " N'"+txtAddGolCode.Text+"' , N'"+txtAddGolMoshtari.Text+"' , N'"+txtAddGolMolahez.Text+"')", con);
        insertDarage.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    protected void btnBacktoHavale_OnClick(object sender, EventArgs e)
    {
        pnlHavaleh.Visible = true;
        pnlKala.Visible = false;
    }

    protected void btnSabtKala_OnClick(object sender, EventArgs e)
    {
        int n;
        bool isNumeric = int.TryParse(txtKalaCartoon.Text, out n);
        if (!isNumeric)
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        if (chkFallehService.Checked)
        {
            if (string.IsNullOrEmpty(listService.SelectedValue) || string.IsNullOrEmpty(listGol.SelectedValue) || string.IsNullOrEmpty(listDarage.SelectedValue)
                || string.IsNullOrEmpty(listRang.SelectedValue) || string.IsNullOrEmpty(txtKalaCartoon.Text))
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
                return;
            }
            var insertService = new SqlCommand("INSERT INTO [dbo].[HKhoroojRiz]([idkh],[idi],[ids],[idg],[idd],[TedadK],[Tedad],[rang],[serok],[vazn]) " +
                                            "SELECT "+HavalehId.Value+" , 0 , "+listService.SelectedValue+" , "+listGol.SelectedValue+"," +
                                            ""+listDarage.SelectedValue+ " ,SUM(ted) AS tedadK , "+txtKalaCartoon.Text+" , " +
                                            ""+listRang.SelectedValue+" , 0 , 0 FROM dbo.RizSer WHERE(idS = " + listService.SelectedValue + ") ",con);
            insertService.ExecuteNonQuery();
            gridKala.DataBind();
            Get_Vazn_Total();
            gridTotalKala.DataBind();
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
        }
        else
        {
            if (string.IsNullOrEmpty(listFalleh.SelectedValue) || string.IsNullOrEmpty(listGol.SelectedValue) || string.IsNullOrEmpty(listDarage.SelectedValue)
                || string.IsNullOrEmpty(listRang.SelectedValue) || string.IsNullOrEmpty(txtKalaCartoon.Text))
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
                return;
            }
            var insertFalleh = new SqlCommand("INSERT INTO [dbo].[HKhoroojRiz]([idkh],[idi],[ids],[idg],[idd],[TedadK],[Tedad],[rang],[serok],[vazn]) " +
                                               "SELECT " + HavalehId.Value + " , "+listFalleh.SelectedValue+" , 0 , " + listGol.SelectedValue + "," +
                                               "" + listDarage.SelectedValue + " , TDK , " + txtKalaCartoon.Text + " , " +
                                               "" + listRang.SelectedValue + " , 0 , 0 FROM Item WHERE(ID = " + listFalleh.SelectedValue + ") ",con);
            insertFalleh.ExecuteNonQuery();
            gridKala.DataBind();
            Get_Vazn_Total();
            gridTotalKala.DataBind();
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
        }
        GetHavalehTotal();
    }
    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        var searchField = txtsearchAll.Value;
        Sqlhavaleh.FilterExpression = "sh like '%" + searchField + "%' or dat like '%" + searchField + "%' or " +
                                      " mnan like '%" + searchField + "%' or madd like '%" + searchField + "%'" +
                                      " or mem like '%" + searchField + "%' or rnam like '%" + searchField + "%' " +
                                      " or rno like '%" + searchField + "%'";
        gridHavaleh.DataBind();
    }

    protected void btnSabt_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtHavalehNo.Text) || drMoshtari.SelectedValue == "-1")
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;    
        }
        var tarikh = drpyear.SelectedValue + "" + drpmonth.SelectedValue + "" + drpday.SelectedValue;
        con.Open();
        var insertHavaleh = new SqlCommand("INSERT INTO [dbo].[HKhorooj]([sh],[dat],[rnam],[rno],[mem],[mnan],[madd],[mid])" +
                                           "VALUES(N'"+txtHavalehNo.Text+"' , N'"+tarikh+"' , N'"+txtNamDriver.Text+"' , " +
                                           "N'"+txtShomareMashin.Text+"' , N'"+txtMolahezat.Text+"', N'"+drMoshtari.SelectedItem.Text+ "'" +
                                           " ,N'" + txtAddressKharidar.Text + "',"+drMoshtari.SelectedValue+")",con);
        insertHavaleh.ExecuteNonQuery();
        gridHavaleh.DataBind();
        txtHavalehNo.Text = "";
        drMoshtari.SelectedValue = "-1";
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    private void Get_Vazn_Total()
    {
        con.Close();
        con.Open();
        var vazn = new SqlCommand("select SUM(vaznKol) as vaznkol from ( "+
                                 "(SELECT SUM(dbo.Service.vazn * dbo.HKhoroojRiz.Tedad) AS vaznKol " +
                                 "FROM dbo.HKhoroojRiz INNER JOIN dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID " +
                                 "WHERE(dbo.HKhoroojRiz.idkh = "+HavalehId.Value+") AND(dbo.HKhoroojRiz.ids <> 0))union all " +
                                 "(SELECT SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.vazn) AS vaznKol " +
                                 "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID " +
                                 "WHERE(dbo.HKhoroojRiz.idkh = " + HavalehId.Value + ") AND(dbo.HKhoroojRiz.idi <> 0)))i", con);
        lblVaznKol.InnerText = vazn.ExecuteScalar().ToString();
        lblVaznKol.InnerText = lblVaznKol.InnerText.Replace(".", " / ");
        var totalItem = new SqlCommand("select sum(total) as total from (( "+
                                       "SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad) " +
                                       "WHEN Item.darb = 1 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad)  END AS total, dbo.RizSer.idI AS item " +
                                       "FROM dbo.HKhoroojRiz INNER JOIN dbo.RizSer ON dbo.HKhoroojRiz.ids = dbo.RizSer.idS INNER JOIN " +
                                       "dbo.Item ON dbo.RizSer.idI = dbo.Item.ID WHERE(dbo.HKhoroojRiz.idkh = " + HavalehId.Value + ") GROUP BY dbo.RizSer.idI, dbo.Item.darb)union all " +
                                       "(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.TDK) " +
                                       "WHEN Item.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.TDK) * 2 END AS total, dbo.Item.ID AS item " +
                                       "FROM dbo.Item INNER JOIN dbo.HKhoroojRiz ON dbo.Item.ID = dbo.HKhoroojRiz.idi " +
                                       "WHERE(dbo.HKhoroojRiz.idkh = " + HavalehId.Value + ") AND(dbo.Item.ser = 0) AND(dbo.Item.ID <> 0) " +
                                       "GROUP BY dbo.Item.darb, dbo.Item.ID)union all " +
                                       "(SELECT CASE WHEN Item_1.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) " +
                                       "WHEN Item_1.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) * 2 END AS total, Item_1.ID AS item " +
                                       "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                       "dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS INNER JOIN dbo.Item AS Item_1 ON dbo.RizSer.idI = Item_1.ID " +
                                       "WHERE(dbo.HKhoroojRiz.idkh = " + HavalehId.Value + ") GROUP BY Item_1.ID, Item_1.darb))i", con);
        lblItemkol.InnerText = totalItem.ExecuteScalar().ToString(); 
        con.Close();
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
        var LSH = new SqlCommand("select REPLACE(sh , '.' ,'/')as sh from "+
                                 "(select max(cast(sh as float)) as sh from " +
                                 "(SELECT replace(substring(sh, 5, 10), '/', '.') as sh " +
                                 "FROM[dbo].[HKhorooj] " +
                                 "where sh like '880%')i)j",con);
        txtLastSH.Text = LSH.ExecuteScalar().ToString();
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteHavaleh = new SqlCommand("delete from HKhoroojRiz where idkh = " + HavalehId.Value + " " +
                                       " delete from HKhorooj where ID = " + HavalehId.Value + " ", con);
        deleteHavaleh.BeginExecuteNonQuery();
        pnldeletehavaleh.Visible = false;
        gridHavaleh.DataBind();
        Response.Redirect("havaleh.aspx");
    }

    protected void gridKala_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        var pageindex = e.NewPageIndex + 1;
        lblPageNumber.InnerText = "صفحه " + pageindex + " از " + gridKala.PageCount;
        hdPageIndex.Value = pageindex.ToString();
    }

    private void GetHavalehTotal()
    {
        string total = " مجموع : ";
        con.Open();
        var getTotal = new SqlCommand("select tedad + ' ' + item as total from(select case when falleh = '----' then cast(SUM(tedad)as nvarchar(10)) + N'سرویس' " +
                                      "when service = '----' then cast(SUM(tedad) as nvarchar(10)) + N'کارتن' end as tedad, " +
                                      "case when falleh = '----' then service when service = '----' then falleh end as item " +
                                      "from(SELECT case when Item.nam <> '----' then N'فله' else Item.nam end as falleh, " +
                                      "Service.nam as service, dbo.HKhoroojRiz.Tedad FROM dbo.HKhorooj INNER JOIN " +
                                      "dbo.HKhoroojRiz ON dbo.HKhorooj.ID = dbo.HKhoroojRiz.idkh INNER JOIN " +
                                      "dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                      "dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID " +
                                      "WHERE(dbo.HKhorooj.ID = " + HavalehId.Value + "))i group by falleh, service)j", con);
        var read = getTotal.ExecuteReader();
        while (read.Read())
        {
            total += " (" + read["total"] + ")";
        }
        total += "ارسال گردید/.";
        con.Close();
        con.Open();
        var readmem = new SqlCommand("select mem from HKhorooj where id = " + HavalehId.Value + "",con);
        total += "(" + readmem.ExecuteScalar() + ")";
        TotalHavaleh.Value = total;
    }

    protected void btndeletehavaNo_OnClick(object sender, EventArgs e)
    {
        pnldeletehavaleh.Visible = false;
    }

    protected void gridKala_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var rizid = gridKala.DataKeys[index]["rizid"];
            HavalehRizId.Value = rizid.ToString();
            pnldeleteHavalehRiz.Visible = true;
        }
    }

    protected void btnDeleteRizYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteRiz = new SqlCommand("DELETE FROM [dbo].[HKhoroojRiz] WHERE id = "+HavalehRizId.Value+" ",con);
        deleteRiz.ExecuteNonQuery();
        gridKala.DataBind();
        pnldeleteHavalehRiz.Visible = false;
        Get_Vazn_Total();
    }

    protected void btnDeleteRizNo_OnClick(object sender, EventArgs e)
    {
        pnldeleteHavalehRiz.Visible = false;
    }

    protected void btnEdit_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtHavalehNo.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        if ( drMoshtari.SelectedValue == "-1")
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "customer();", true);
            return;
        }
        con.Open();
        var tarikh = drpyear.SelectedValue + "" + drpmonth.SelectedValue + "" + drpday.SelectedValue;
        var updateHavaleh = new SqlCommand("UPDATE [dbo].[HKhorooj] "+
                                           "SET[sh] = N'"+txtHavalehNo.Text+"' " +
                                           ",[dat] = N'"+tarikh+"' " +
                                           ",[rnam] = N'"+txtNamDriver.Text+"' " +
                                           ",[rno] = N'"+txtShomareMashin.Text+"' " +
                                           ",[mem] = N'"+txtMolahezat.Text+"' " +
                                           ",[mid] = "+drMoshtari.SelectedValue+" " +
                                           ",[mnan] = N'"+drMoshtari.SelectedItem.Text+"' " +
                                           ",[madd] = N'"+txtAddressKharidar.Text+"' " +
                                           "WHERE ID = "+HavalehId.Value+" ",con);
        updateHavaleh.ExecuteNonQuery();
        gridHavaleh.DataBind();
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabt.Visible = true;
        ClearFields();
    }

    protected void btnCancel_OnClick(object sender, EventArgs e)
    {
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabt.Visible = true;
        ClearFields();
    }

    private void ClearFields()
    {
        txtHavalehNo.Text = "";
        var dat = "";
        drpyear.SelectedIndex =0 ;
        drpmonth.SelectedIndex = 0;
        drpday.SelectedIndex = 0;
        //drMoshtari.SelectedValue = read["mnan"].ToString();
        txtAddressKharidar.Text = "";
        txtNamDriver.Text = "";
        txtShomareMashin.Text = "";
        txtMolahezat.Text = "";
    }
}