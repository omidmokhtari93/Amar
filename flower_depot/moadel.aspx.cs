using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_depot_moadel : System.Web.UI.Page
{
    private readonly SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsabt_OnClick(object sender, EventArgs e)
    {
        cnn.Open();
        var insertitem = new SqlCommand("INSERT INTO [dbo].[moadel]([bitem],[gitem],[door],[iddoor])values" +
                                        "(" + drbitem.SelectedValue + "," + drkhitem.SelectedValue + ",0,0)", cnn);
        insertitem.ExecuteNonQuery();
        drbitem.DataBind();
        drkhitem.DataBind();
        gridMoadel.DataBind();
    }

    protected void gridMoadel_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ed")
        {
            sqlBitem.SelectCommand = "SELECT ID, nam FROM bastebandi.dbo.Item order by nam";
            sqlKhitem.SelectCommand = "SELECT item_id, item_name FROM flower_depot.dbo.items order by item_name";
            drbitem.DataBind();
            drkhitem.DataBind();
            btnsabt.Visible = false;
            btnCancel.Visible = true;
            btnEdit.Visible = true;
            var index = int.Parse(e.CommandArgument.ToString());
            ViewState["mId"] = (int)gridMoadel.DataKeys[index]["id"];
            cnn.Open();
            var getMoadel = new SqlCommand("SELECT [bitem],[gitem],[door],[iddoor] FROM moadel where id = " + ViewState["mId"] + " ", cnn);
            var rd = getMoadel.ExecuteReader();
            if (rd.Read())
            {
                drbitem.SelectedValue = rd["bitem"].ToString();
                drkhitem.SelectedValue = rd["gitem"].ToString();
            }
        }
    }

    protected void btnCancel_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("~/bastebandi/moadel.aspx");
    }

    protected void btnEdit_OnClick(object sender, EventArgs e)
    {
        cnn.Open();
        var updateCitem = new SqlCommand("UPDATE [dbo].[moadel] SET [bitem] =" + drbitem.SelectedValue + "" +
                                         " ,[gitem] =" + drkhitem.SelectedValue + " " +
                                         ",[door] = 0 ,[iddoor] = 0 WHERE id = " + ViewState["mId"] + " ", cnn);
        updateCitem.ExecuteNonQuery();
        Response.Redirect("moadel.aspx");
    }
}