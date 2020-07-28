using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string glaze = "";
    string date = "1393/01/01";
    string date_end = "1393/01/01";
    string date_start = "1393/01/01";
    string year = "";
    string mounth = "";
    string day = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) 
            {
               Response.Redirect("../login.aspx");
               Session.Clear();
            }
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();


        DateTime miladi;
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        miladi = datetimeformat;
        datetimeformat = p.AddDays(miladi, -1);
        date_end = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        if (!Page.IsPostBack)
        {

            year = date_end.Substring(0, 4);
            dryearstart.SelectedValue = year;
            mounth = date_end.Substring(5, 2);
            drmounthstart.SelectedValue = mounth;
            day = date_end.Substring(8, 2);
            drdaystart.SelectedValue = day;
            year = date_end.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date_end.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date_end.Substring(8, 2);
            drday.SelectedValue = day;
        }

       
      
       
    }

   

    
    protected void btnshow_Click(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date_end = year + "/" + mounth + "/" + day;
        lbldate_e.Text = date_end;
        year = dryearstart.SelectedValue;
        mounth = drmounthstart.SelectedValue;
        day = drdaystart.SelectedValue;
        date_start = year + "/" + mounth + "/" + day;
        lbldate_s.Text = date_start;
        gridfaz1.DataBind();
        gridfaz2.DataBind();
          
           
     
     
        
     }



    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = Panel_wastage;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }
}