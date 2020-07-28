using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;
using System.Data;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    string date = "1393/01/01";
    string year = "";
    string mounth = "";
    string day = "";
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
        cnn.Open();
        SqlCommand cmd_query_sms = new SqlCommand("SELECT     COUNT(id) AS n_sms FROM         dbo.messages WHERE     (user_recive = " + Convert.ToInt32(Session["userid"]) + ") AND (msg_read = 0) AND (reciver = 0)", cnn);
        SqlDataReader dr = cmd_query_sms.ExecuteReader();

        if (dr.Read())//if count sms>1 then goto masseges.aspx
        {


            int cn_sms = Convert.ToInt32(dr["n_sms"]);
            if (cn_sms >= 1)
            {
                Response.Redirect("masseges.aspx");
            }

        }
        cnn.Close();
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();


        DateTime miladi;
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        miladi = datetimeformat;
        datetimeformat = p.AddDays(miladi, -1);
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
                

        if (!Page.IsPostBack)
        {
            labldate.Text = date;
            SqlDataSource1.FilterExpression = "tarikh ='" + date + "'";
            SqlDataSource2.FilterExpression = "tarikh ='" + date + "'";
            grid_total_press.DataBind();
            grid_press.DataBind();

            year = date.Substring(0, 4);
            dryear.SelectedValue = year;
            mounth = date.Substring(5, 2);
            drmounth.SelectedValue = mounth;
            day = date.Substring(8, 2);
            drday.SelectedValue = day;
        }
    }
   
   
    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlprint;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date = year + "/" + mounth + "/" + day;
        labldate.Text = date;
        SqlDataSource1.FilterExpression = "tarikh ='" + date + "'";
        SqlDataSource2.FilterExpression = "tarikh='" + date + "'";
        grid_total_press.DataBind();
        grid_press.DataBind();
    }



    protected void btnexcell_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "";
        FileName = "آمار رزوانه" + DateTime.Now + ".xls";
        
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());
        pnlprint.RenderControl(htmltextwrtter);
        Response.Output.Write(strwritter.ToString());
        Response.Flush();
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}