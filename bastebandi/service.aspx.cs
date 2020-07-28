using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_service : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void btnSabt_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtnam.Text) || string.IsNullOrEmpty(txtVazn.Text))
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertService = new SqlCommand("INSERT INTO [dbo].[Service]([nam],[vazn],[mem],[Box1],[Box2]) "+
                                           "VALUES(N'"+txtnam.Text+"' , "+txtVazn.Text+" , N'"+txtmem.Text+"'," +
                                           " "+drBox1.SelectedValue+" , "+drBox2.SelectedValue+")",con);
        insertService.ExecuteNonQuery();
        var selectLast = new SqlCommand("select max(id) from Service",con);
        var lastServiceId = Convert.ToInt32(selectLast.ExecuteScalar());
        var updateTopersian = new SqlCommand("UPDATE Service " +
                                             "set nam = replace(nam, NCHAR(1603), NCHAR(1705)) where nam like '%' + NCHAR(1603) + '%' and id = "+lastServiceId+" " +
                                             "UPDATE Service " +
                                             "set nam = replace(nam, NCHAR(1610), NCHAR(1740)) where nam like '%' + NCHAR(1610) + '%' and id = " + lastServiceId + " ", con);
        updateTopersian.ExecuteNonQuery();
        foreach (GridViewRow row in gridItems.Rows)
        {
            var txt = row.FindControl("txtIC") as TextBox;
            if (!string.IsNullOrEmpty(txt.Text))
            {
                var itemId = (int) gridItems.DataKeys[row.RowIndex]["ID"];
                var RizSer = new SqlCommand("INSERT INTO [dbo].[RizSer]([idS],[idI],[ted])" +
                                            "VALUES(" + lastServiceId + " , " + itemId + " , " +
                                            Convert.ToInt32(txt.Text) + ")", con);
                RizSer.ExecuteNonQuery();
            }
            txt.Text = "";
        }
        gridService.DataBind();
        gridRizService.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void gridService_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "showriz")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            int service_id = (int) gridService.DataKeys[index]["ID"];
            ServiceId.Value = service_id.ToString();
            SqlRizServ.FilterExpression = "idS = "+ServiceId.Value+"";
        }
        if (e.CommandName == "deleteService")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var service_id = (int)gridService.DataKeys[index]["ID"];
            ServiceId.Value = service_id.ToString();
            pnldeleteservice.Visible = true;
            pnldeleteSerItem.Visible = false;
        }
        SqlService.FilterExpression = "nam like '%" + txtSearchService.Text + "%'";
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        SqlService.FilterExpression = "nam like '%" + txtSearchService.Text + "%'";
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteSer = new SqlCommand("delete from Service where ID = "+ServiceId.Value+" " +
                                       " delete from RizSer where ids = "+ServiceId.Value+" ",con);
        deleteSer.BeginExecuteNonQuery();
        gridService.DataBind();
        gridRizService.DataBind();
        pnldeleteservice.Visible = false;
    }

    protected void gridRizService_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editRiz")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var item_id = (int)gridRizService.DataKeys[index]["idI"];
            itemId.Value = item_id.ToString();
            con.Open();
            var getItem = new SqlCommand("select idi , ted from RizSer where idI = "+item_id+" and idS = "+ServiceId.Value+" ",con);
            var rd = getItem.ExecuteReader();
            if (rd.Read())
            {
                drSerItem.SelectedValue = rd["idi"].ToString();
                txtSerItemCount.Text = rd["ted"].ToString();
            }
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "document.getElementById('addItem').style.display='block'", true);
        }
        if (e.CommandName == "deleteRiz")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var item_id = (int)gridRizService.DataKeys[index]["idI"];
            itemId.Value = item_id.ToString();
            pnldeleteSerItem.Visible = true;
            pnldeleteservice.Visible = false;
        }
    }

    protected void btnSabtSerItem_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtSerItemCount.Text))
        {
            con.Open();
            var updateRizSer1 = new SqlCommand("update RizSer set idI = " + drSerItem.SelectedValue + " " +
                                              " where idS = " + ServiceId.Value + " and idI = " + itemId.Value + " ", con);
            updateRizSer1.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
            gridRizService.DataBind();
            return;
        }
        con.Open();
        var updateRizSer = new SqlCommand("update RizSer set idI = "+drSerItem.SelectedValue+" , ted = "+txtSerItemCount.Text+"" +
                                          " where idS = "+ServiceId.Value+" and idI = "+itemId.Value+" ",con);
        updateRizSer.ExecuteNonQuery();
        gridRizService.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnYesItesm_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteSer = new SqlCommand("delete from RizSer where ids = " + ServiceId.Value + " and idI = "+itemId.Value+" ", con);
        deleteSer.BeginExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
        SqlRizServ.FilterExpression = "idS = " + ServiceId.Value + "";
        pnldeleteSerItem.Visible = false;
        SqlRizServ.DataBind();
        gridRizService.DataBind();
    }

    protected void btnAddRizSer_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var insertItem = new SqlCommand("insert into RizSer (Ids,Idi,ted) " +
                                        "values(" + ServiceId.Value + " , " + drAddRizSer.SelectedValue + " , " +
                                        txtAddrizSer.Text + ")", con);
        insertItem.BeginExecuteNonQuery();
        SqlRizServ.FilterExpression = "idS = " + ServiceId.Value + "";
        SqlRizServ.DataBind();
        gridRizService.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnNoDeleteService_OnClick(object sender, EventArgs e)
    {
        pnldeleteservice.Visible = false;
    }

    protected void btnNoDeleteRizSer_OnClick(object sender, EventArgs e)
    {
        pnldeleteSerItem.Visible = false;
    }
}