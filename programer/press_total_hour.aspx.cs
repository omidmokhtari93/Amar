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
    string year = "";
    string mounth = ""; 
    string day = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();


       
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        DateTime miladi = datetimeformat;
        datetimeformat = p.AddDays(miladi, -1);
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
       


        if (!Page.IsPostBack)
        {
            lbldateshow.Text = date;
            year = date.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date.Substring(8, 2);
            drday.SelectedValue = day;
        }
       
    }

   

    
    protected void btnshow_Click(object sender, EventArgs e)
    {
        cnn.Open();
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        lbldateshow.Text = date;
        gridpress.DataBind();
       
                
        
          

      
      
     }




    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlpress;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");

    }
}