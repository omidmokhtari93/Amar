using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bastebandi_carton : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSabt_OnClick(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtNS.Text))
        {
            ScriptManager.RegisterStartupScript(Page, GetType(), "script", "error();", true);
            return;
        }
        con.Open();
        var insertBox = new SqlCommand("insert into box (box,ns,mem) " +
                                       "VALUES('"+txtName.Text+"' , "+txtNS.Text+" , '"+txtmem.Text+"')",con);
        insertBox.ExecuteNonQuery();
        gridcarton.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnSearch_OnClick(object sender, EventArgs e)
    {
        Sqlcarton.FilterExpression = "box like '%" + txtSearch.Text + "%'";
    }

    protected void gridcarton_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editcarton")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var carID = (int) gridcarton.DataKeys[index]["ID"];
            cartonID.Value = carID.ToString();
            con.Open();
            var readCar = new SqlCommand("select box , mem , ns from box where ID = "+carID+" ",con);
            var rd = readCar.ExecuteReader();
            if (rd.Read())
            {
                txtEditName.Text = rd["box"].ToString();
                txteditNS.Text = rd["ns"].ToString();
                txtEditmem.Text = rd["mem"].ToString();
            }
            if (!string.IsNullOrEmpty(txtSearch.Text))
            {
                Sqlcarton.FilterExpression = "box like '%" + txtSearch.Text + "%'";
            }
            pnldelete.Visible = false;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "document.getElementById('edit').style.display='block'", true);

        }
        if (e.CommandName == "deletecarton")
        {
            var index = int.Parse(e.CommandArgument.ToString());
            var carID = (int)gridcarton.DataKeys[index]["ID"];
            cartonID.Value = carID.ToString();
            pnldelete.Visible = true;
        }
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var deleteCar = new SqlCommand("delete from box where ID = "+cartonID.Value+" ",con);
        deleteCar.ExecuteNonQuery();
        gridcarton.DataBind();
        pnldelete.Visible = false;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnEditCarton_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var editCar = new SqlCommand("update box set box='"+txtEditName.Text+"' , ns="+txteditNS.Text+" , mem='"+txtEditmem.Text+"' where iD = "+cartonID.Value+" ", con);
        editCar.ExecuteNonQuery();
        gridcarton.DataBind();
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "success();", true);
    }

    protected void btnNo_OnClick(object sender, EventArgs e)
    {
        pnldelete.Visible = false;
    }
}