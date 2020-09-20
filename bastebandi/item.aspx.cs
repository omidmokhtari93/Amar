using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSabtItem_OnClick(object sender, EventArgs e)
    {
        var isService = 0;
        var darb = 0;
        var tedadDarKartonMadar = string.IsNullOrEmpty(txtAddTedadM.Text) ? 0 : Convert.ToInt16(txtAddTedadM.Text);
        var tedadDarKartonChild = string.IsNullOrEmpty(txtAddtedadCH.Text) ? 0 : Convert.ToInt16(txtAddtedadCH.Text);
        var tds = string.IsNullOrEmpty(txtAddServiceTedad.Text) ? 0 : Convert.ToInt32(txtAddServiceTedad.Text);
        var vazn = string.IsNullOrEmpty(txtAddVazn.Text) ? 0 : Convert.ToDecimal(txtAddVazn.Text);
        if (chkAddIsService.Checked) { isService = 1; }
        if (chkAddDarb.Checked) { darb = 1; }
        con.Open();
        var insertItem = new SqlCommand("INSERT INTO [dbo].[Item]([nam],[mem],[TDK],[ser],[tds]" +
                                        ",[darb],[idser],[ghes],[vazn],[BoxMCode],[BoxChCode],[TBoxCh]) " +
                                        "VALUES(N'" + txtAdditemName.Text + "' , N'" + txtAddmem.Text + "' , " + tedadDarKartonMadar + "," +
                                        " " + isService + " , " + tds + " , " + darb + " , " + drAddServieCod.SelectedValue + "," +
                                        " " + drAddTolid.SelectedValue + " , " + vazn + " " +
                                        ", " + drAddMkartoon.SelectedValue + " ," +
                                        " " + drAddCHkartoon.SelectedValue + " , " + tedadDarKartonChild + ")", con);
        insertItem.ExecuteNonQuery();
        gridItems.DataBind();
        SetControlsNull();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void gridItems_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editItem")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var itemId = (int)gridItems.DataKeys[index]["ID"];
            ItemID.Value = itemId.ToString();
            con.Open();
            var getItem = new SqlCommand("SELECT nam, mem, TDK, ser, tds, darb, idser, ghes," +
                                         " vazn, BoxMCode, BoxChCode, TBoxCh FROM dbo.Item where ID = " + itemId + " ", con);
            var rd = getItem.ExecuteReader();
            if (rd.Read())
            {
                txtAdditemName.Text = rd["nam"].ToString();
                txtAddmem.Text = rd["mem"].ToString();
                txtAddTedadM.Text = rd["TDK"].ToString();
                if (Convert.ToInt32(rd["ser"]) == 1) { chkAddIsService.Checked = true; }
                txtAddServiceTedad.Text = rd["tds"].ToString();
                if (Convert.ToInt32(rd["darb"]) == 1) { chkAddDarb.Checked = true; }
                drAddServieCod.SelectedValue = rd["idser"].ToString();
                drAddTolid.SelectedValue = rd["ghes"].ToString();
                txtAddVazn.Text = rd["vazn"].ToString();
                drAddMkartoon.SelectedValue = rd["BoxMCode"].ToString();
                drAddCHkartoon.SelectedValue = rd["BoxChCode"].ToString();
                txtAddtedadCH.Text = rd["TBoxCh"].ToString();
            }
            btnEdit.Visible = true;
            btnCancel.Visible = true;
            btnSabtItem.Visible = false;
        }
        if (e.CommandName == "deleteItem")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var itemId = gridItems.DataKeys[index]["ID"];
            ItemID.Value = itemId.ToString();
            delete.Visible = true;
        }
    }

    protected void btnEdit_OnClick(object sender, EventArgs e)
    {
        var isService = 0;
        var darb = 0;
        int tds;
        if (chkAddIsService.Checked) { isService = 1; }
        if (chkAddDarb.Checked) { darb = 1; }
        tds = string.IsNullOrEmpty(txtAddServiceTedad.Text) ? 0 : Convert.ToInt32(txtAddServiceTedad.Text);
        con.Open();
        var updateItem = new SqlCommand("update Item set nam = N'" + txtAdditemName.Text + "' , mem = '" + txtAddmem.Text + "'," +
                                        " TDK = " + txtAddTedadM.Text + " , ser = " + isService + " , " +
                                        " tds = " + tds + " , darb = " + darb + " , idser = " + drAddServieCod.SelectedValue + "," +
                                        " ghes = " + drAddTolid.SelectedValue + " , vazn = " + txtAddVazn.Text + " ," +
                                        " BoxMCode = " + drAddMkartoon.SelectedValue + " , BoxChCode = " + drAddCHkartoon.SelectedValue + " , " +
                                        " TBoxCh = " + txtAddtedadCH.Text + " where ID = " + ItemID.Value + " ", con);
        updateItem.ExecuteNonQuery();
        gridItems.DataBind();
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabtItem.Visible = true;
        SetControlsNull();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnCancel_OnClick(object sender, EventArgs e)
    {
        btnEdit.Visible = false;
        btnCancel.Visible = false;
        btnSabtItem.Visible = true;
        delete.Visible = false;
        SetControlsNull();
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteItem = new SqlCommand("delete from item where ID = " + ItemID.Value + " ", con);
        deleteItem.ExecuteNonQuery();
        gridItems.DataBind();
        delete.Visible = false;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    private void SetControlsNull()
    {
        txtAdditemName.Text = "";
        txtAddmem.Text = "";
        txtAddTedadM.Text = "";
        chkAddIsService.Checked = false;
        txtAddServiceTedad.Text = "";
        chkAddDarb.Checked = false;
        drAddServieCod.SelectedValue = "0";
        drAddTolid.SelectedValue = "0";
        txtAddVazn.Text = "";
        drAddMkartoon.SelectedValue = "0";
        drAddCHkartoon.SelectedValue = "0";
        txtAddtedadCH.Text = "";
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        FilterGrid();
    }

    private void FilterGrid()
    {
        SqlItems.FilterExpression = "nam like '%" + txtSearch.Value + "%'";
        SqlItems.DataBind();
        gridItems.DataBind();
    }
    protected void gridItems_OnPageIndexChanged(object sender, EventArgs e)
    {
        FilterGrid();
    }
}