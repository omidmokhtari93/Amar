using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_gol : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void btnAddGolM_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddGol.Text) || string.IsNullOrEmpty(txtAddGolCode.Text) || string.IsNullOrEmpty(txtAddGolMoshtari.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "RedAlert('no','لطفا فیلدهای خالی را تکمیل نمایید');", true);
            return;
        }
        con.Open();
        var insertDarage = new SqlCommand("insert into Gol (nam,cod,moshtari,mem) values (N'" + txtAddGol.Text + "'," +
                                          " N'" + txtAddGolCode.Text + "' , N'" + txtAddGolMoshtari.Text + "' , N'" + txtAddGolMolahez.Text + "')", con);
        insertDarage.ExecuteNonQuery();
        gridGol.DataBind();
        ScriptManager.RegisterStartupScript(Page, GetType(), "script", "success();", true);
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        FilterGrid();   
    }

    private void FilterGrid()
    {
        SqlGol.FilterExpression = "nam like '%" + txtSearch.Value + "%' or cod like '%" + txtSearch.Value + "%'" +
                                  "or moshtari like '%" + txtSearch.Value + "%' or mem like '%" + txtSearch.Value + "%' ";
        gridGol.DataBind();
    }

    protected void gridGol_OnPageIndexChanged(object sender, EventArgs e)
    {
        FilterGrid();
    }
}