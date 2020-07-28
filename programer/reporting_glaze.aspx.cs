using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    string date_end = "1393/01/01";
    string date_start = "1393/01/01";
    string year = "";
    string mounth = "";
    string day = "";
    string id = "";
    string glaze = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)) && (((string)Session["level"] != "grade") || (Convert.ToInt32(Session["userid"]) != 8)))
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
        if (rdbglaze.SelectedValue == "1")
        {
            grid_total.DataSource = total1;
            grid_total_day.DataSource = totalday1;
            grid_tonazh.DataSource = tonazh1;
            gridtafkik.DataSource = tafkik1;
            gridtotaltafkik.DataSource = totaltafkik1;
            gridtotaltafkik.DataBind();
            gridtafkik.DataBind();
            grid_total.DataBind();
            grid_total_day.DataBind();
            grid_tonazh.DataBind();
            lblfaz.Text = "یک";
            glaze = "glaze1";
        
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            grid_total.DataSource = total2;
            grid_total_day.DataSource = totalday2;
            grid_tonazh.DataSource = tonazh2;
            gridtafkik.DataSource = tafkik2;
            gridtotaltafkik.DataSource = totaltafkik2;
            gridtotaltafkik.DataBind();
            gridtafkik.DataBind();
            grid_total.DataBind();
            grid_total_day.DataBind();
            grid_tonazh.DataBind();
            lblfaz.Text = "دو";
            glaze = "glaze2";
           
        }
        else if (rdbglaze.SelectedValue == "3")
        {
            grid_total.DataSource = sumtotal;
            grid_total_day.DataSource = sumtotalday;
            grid_tonazh.DataSource = sumtonazh;
            gridtafkik.DataSource = sumtafkik;
            gridtotaltafkik.DataSource = sumtotaltafkik;
            gridtotaltafkik.DataBind();
            gridtafkik.DataBind();
            grid_total.DataBind();
            grid_total_day.DataBind();
            grid_tonazh.DataBind();
            lblfaz.Text = "مجموع دو لعاب";
            

        }





    }
   
    protected void btnshow_Click(object sender, EventArgs e)
    {

        lblwagon.Text = "";
        year = dryear.SelectedValue;
        mounth = drmounth.SelectedValue;
        day = drday.SelectedValue;
        date_end = year + "/" + mounth + "/" + day;
        lbldate_e.Text = date_end;
        year=dryearstart.SelectedValue;
        mounth = drmounthstart.SelectedValue;
        day = drdaystart.SelectedValue;
        date_start = year + "/" + mounth + "/" + day;
        lbldate_s.Text = date_start;
        cnn.Open();
        if (date_end == date_start)
        {
            if (rdbglaze.SelectedValue == "3")
            {
                int countt = 0;
                SqlCommand cmd_wagon = new SqlCommand("SELECT     COUNT(num_wagon) AS Twagon FROM         (SELECT     MAX(tarikh) AS tarikh, num_wagon, SUM(waight) AS tonazh FROM glaze1_wagon WHERE     (tarikh = '" + lbldate_e.Text + "') GROUP BY num_wagon, sortt, shift) AS glaze_w", cnn);
                countt = Convert.ToInt32(cmd_wagon.ExecuteScalar());
                SqlCommand cmd_wagon2 = new SqlCommand("SELECT     COUNT(num_wagon) AS Twagon FROM         (SELECT     MAX(tarikh) AS tarikh, num_wagon, SUM(waight) AS tonazh FROM glaze1_wagon WHERE     (tarikh = '" + lbldate_e.Text + "') GROUP BY num_wagon, sortt, shift) AS glaze_w", cnn);
                countt += Convert.ToInt32(cmd_wagon2.ExecuteScalar());
                lblwagon.Text =Convert.ToString( countt);

            }
            else
            {
                SqlCommand cmd_wagon = new SqlCommand("SELECT     COUNT(num_wagon) AS Twagon FROM         (SELECT     MAX(tarikh) AS tarikh, num_wagon, SUM(waight) AS tonazh FROM " + glaze + "_wagon WHERE     (tarikh = '" + lbldate_e.Text + "') GROUP BY num_wagon, sortt, shift) AS glaze_w", cnn);
                lblwagon.Text = Convert.ToString(cmd_wagon.ExecuteScalar());
            }
        }
        
        cnn.Close();

        grid_total.DataBind();
        grid_total_day.DataBind();
        grid_tonazh.DataBind();
        gridtafkik.DataBind();
        gridtotaltafkik.DataBind();
    }

    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }


    protected void btnexcell_Click(object sender, EventArgs e)
    {

        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "";
        FileName = "آمار لعاب " + DateTime.Now + ".xls";

        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());
        pnlrikhtegari.RenderControl(htmltextwrtter);
        Response.Output.Write(strwritter.ToString());
        Response.Flush();
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}