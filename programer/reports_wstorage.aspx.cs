using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;
using System.Security.Permissions;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;

public partial class Map : System.Web.UI.Page
{
  
     int id,cont;
     public int si = 15; // px
     public int to = 0; // px  =>  Space From Top
     static int left = 0, Top = 0;
     static int grid_kind = 0;// for define sqlsearch or sqlshow_itemgrid  
     string date;
    string year = "";
    string mounth = "";
    string day = "";
    static string iditem;
    static int sortagain = 0;


    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
      
        if (!Page.IsPostBack)
        {
            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();


            DateTime miladi;
            DateTime datetimeformat = DateTime.Now;
            PersianCalendar p = new PersianCalendar();
            miladi = datetimeformat;
            datetimeformat = miladi;
            date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
            labldate.Text = date;
            year = date.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date.Substring(8, 2);
            drday.SelectedValue = day;
           // P_L();
        }
        
    }//end page load

    protected void drday_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;

    }
    protected void drmounth_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;

    }
    protected void dryear_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;

    }
    
    

    

    protected void btntotalgrade_Click(object sender, EventArgs e)
    {
        grid_totalgrade.DataBind();
    }

    protected void showsearch_Click(object sender, EventArgs e)
    {
        if (drservice.SelectedValue == "0")

        {
            if (ddlitem_serach.SelectedValue == "0")
            {
                if (ddlgrade_search.SelectedValue == "0")
                {
                    grid_itemgrade.DataSource = Sqlcombintotal;
                    grid_itemgrade.DataBind();
                    grid_itemgrade.Visible = true;
                    grid_item.Visible = false;
                }
                else
                {
                    grid_item.DataSource = sqlkolitem;
                    grid_item.DataBind();
                    grid_item.Visible = true;
                    grid_itemgrade.Visible = false;
                    lblkind.Text = ddlitem_serach.SelectedItem.ToString();
                    lblgrade.Text = ddlgrade_search.SelectedItem.ToString();
                    lbldate.Text = labldate.Text;
                    lblservice.Text = "تمام سرویس ها";
                }
            }
            else
            {
                grid_item.DataSource = sqlitemgrade;
                grid_item.DataBind();
                grid_item.Visible = true;
                grid_itemgrade.Visible = false;
                lblkind.Text = ddlitem_serach.SelectedItem.ToString();
                lblgrade.Text = ddlgrade_search.SelectedItem.ToString();
                lbldate.Text = labldate.Text;
                lblservice.Text = "تمام سرویس ها";
            }

        }
        else
        {
            if (ddlitem_serach.SelectedValue == "0")
            {
                if (ddlgrade_search.SelectedValue == "0")
                {
                    grid_itemgrade.DataSource = Sqlcombinegrade;
                    grid_itemgrade.DataBind();
                    grid_itemgrade.Visible = true;
                    grid_item.Visible = false;
                }
                else
                {
                    grid_item.DataSource = sqlkolitemservice;
                    grid_item.DataBind();
                    grid_item.Visible = true;
                    grid_itemgrade.Visible = false;
                    lblkind.Text = ddlitem_serach.SelectedItem.ToString();
                    lblgrade.Text = ddlgrade_search.SelectedItem.ToString();
                    lblservice.Text = drservice.SelectedItem.ToString();
                    lbldate.Text = labldate.Text;
                }
            }
            else
            {
                grid_item.DataSource = sqlreportservice;
                grid_item.DataBind();
                grid_item.Visible = true;
                grid_itemgrade.Visible = false;
                lblkind.Text = ddlitem_serach.SelectedItem.ToString();
                lblgrade.Text = ddlgrade_search.SelectedItem.ToString();
                lblservice.Text = drservice.SelectedItem.ToString();
                lbldate.Text = labldate.Text;
            }
        }
    }


    protected void btnprint_Click(object sender, EventArgs e)
    {

        Session["ctrl"] =pnlprint;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");

    }

    protected void btnexit_Click(object sender, EventArgs e)
    {
        Response.Redirect("show_amar_day.aspx");
    }
}