using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Collections.Specialized;
using System.Text;
using System.Configuration;

public partial class new_order1 : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);

    string sefaresh_id = "0";
    string kharid = "";
    string statecontrol = "";
    string date = "1393/01/01";
    string date_kharid = "1393/01/01";
    string first = "";
    string last = "";
    string m_khrid="";
    string code_m = "";

   

    protected void Page_Load(object sender, EventArgs e)
    {
       
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)
        {
            if (((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) 
            {
                  Response.Redirect("../login.aspx");
                  Session.Clear();
            }
            Panelshow.Visible = false;
        }
    }

   
    protected void btnshow_Click(object sender, EventArgs e)
    {
     
        if (ddlsector.SelectedValue == "1")//press
        {
            grid_press.Visible = true;
            grid_rikht.Visible = false;
            grid_forming.Visible = false;
        }
        else if (ddlsector.SelectedValue == "2")//forming
        {
            grid_forming.Visible = true;
            grid_press.Visible = false;
            grid_rikht.Visible = false;
           
        }
        else if (ddlsector.SelectedValue == "3")//rikht
        {
            grid_rikht.Visible = true;
            grid_press.Visible = false;
            grid_forming.Visible = false;
        }
    }
   
    protected void grid_press_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_press.Rows[e.RowIndex];
        row.Cells[3].Enabled = false;
    }
    protected void grid_forming_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_forming.Rows[e.RowIndex];
        row.Cells[3].Enabled = false;
    }
    protected void grid_rikht_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grid_rikht.Rows[e.RowIndex];
        row.Cells[3].Enabled = false;
    }


    protected void btninput_Click(object sender, EventArgs e)
    {
        if (txtpass.Text == "sabeghi123")
        {
            Panelshow.Visible = true;
            pnlpassword.Visible = false;
        }
        else
        {
            lblwrong.Visible = true;
        }

    }
   
}