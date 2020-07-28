using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_moadel : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsabt_OnClick(object sender, EventArgs e)
    {
        var darb = 0;
        if (chdarb.Checked){darb = 1;}
        cnn.Open();
        var insertitem = new SqlCommand("insert into cItems (bitem,khitem,door,iddoor)values" +
                                        "("+drbitem.SelectedValue+","+drkhitem.SelectedValue+","+darb+","+drdarb.SelectedValue+")",cnn);
        insertitem.ExecuteNonQuery();
        drbitem.DataBind();
        drdarb.DataBind();
        drkhitem.DataBind();
        chdarb.Checked = false;
        drdarb.SelectedValue = "0";
        gridMoadel.DataBind();
    }

    protected void gridMoadel_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ed")
        {
            sqlBitem.SelectCommand = "SELECT ID, nam FROM bastebandi.dbo.Item order by nam";
            sqlKhitem.SelectCommand = "SELECT id, item_name FROM taghdis_amar.dbo.item order by item_name";
            drbitem.DataBind();
            drkhitem.DataBind();
            btnsabt.Visible = false;
            btnCancel.Visible = true;
            btnEdit.Visible = true;
            var index = int.Parse(e.CommandArgument.ToString());
            ViewState["mId"] = (int) gridMoadel.DataKeys[index]["cid"];
            cnn.Open();
            var getMoadel = new SqlCommand("SELECT [bitem],[khitem],[door],[iddoor] FROM [dbo].[cItems] where id = "+ ViewState["mId"] + " ",cnn);
            var rd = getMoadel.ExecuteReader();
            if (rd.Read())
            {
                drbitem.SelectedValue = rd["bitem"].ToString();
                drkhitem.SelectedValue = rd["khitem"].ToString();
                if (Convert.ToInt32(rd["door"]) == 1)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "showDarb();", true);
                    chdarb.Checked = true;
                    drdarb.SelectedValue = rd["iddoor"].ToString();
                }

            }
        }
    }

    protected void btnCancel_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("moadel.aspx");
    }

    protected void btnEdit_OnClick(object sender, EventArgs e)
    {
        var darb = 0;
        if (chdarb.Checked) { darb = 1; }
        cnn.Open();
        var updateCitem = new SqlCommand("UPDATE [dbo].[cItems] SET [bitem] ="+drbitem.SelectedValue+"" +
                                         " ,[khitem] ="+drkhitem.SelectedValue+" " +
                                         ",[door] ="+darb+" ,[iddoor] ="+drdarb.SelectedValue+" WHERE id = "+ ViewState["mId"] + " ",cnn);
        updateCitem.ExecuteNonQuery();
        Response.Redirect("moadel.aspx");
    }
}