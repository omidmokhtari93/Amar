using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_moshtari : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void btnSabt_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtnam.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertmosh = new SqlCommand("insert into moshtari (nam,cod,Addr,mem) " +
                                       "VALUES(N'" + txtnam.Text + "' , N'" + txtcod.Text + "' , N'" + txtAdd.Text + "' , N'"+txtmem.Text+"')", con);
        insertmosh.ExecuteNonQuery();
        gridmosh.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void gridmosh_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deletemosh")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var moshID = (int)gridmosh.DataKeys[index]["ID"];
            moshtartiID.Value = moshID.ToString();
            pnldeletecus.Visible = true;
        }
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteMosh = new SqlCommand("delete from moshtari where ID = "+moshtartiID.Value+" ",con);
        deleteMosh.ExecuteNonQuery();
        gridmosh.DataBind();
        pnldeletecus.Visible = false;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnNo_OnClick(object sender, EventArgs e)
    {
        pnldeletecus.Visible = false;
    }
}