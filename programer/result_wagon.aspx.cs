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
        lblerror.Visible = false;
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
            {
                Response.Redirect("../login.aspx");
                Session.Clear();
            }
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();


       // DateTime miladi;
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

      //  miladi = datetimeformat;
       /// datetimeformat = p.AddDays(miladi, -1);
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        lbldateshow.Text = date;



        if (rdbglaze.SelectedValue == "1")
        {
            grid_wagon.DataSource = SqlDataSource1;
            chart_wagon.DataSource = SqlDataSource1;
            chart_wagon.Series[0].XValueMember = "num_wagon";
            chart_wagon.Series[0].YValueMembers = "tonazh";
            chart_wagon.DataBind();
            grid_wagon.DataBind();
            Session["result_wagon"] = "glaze1";
            lblcntwagon.Text = Convert.ToString(grid_wagon.Rows.Count);
            lblfaz.Text = "لعاب یک";
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            grid_wagon.DataSource = SqlDataSource2;
            chart_wagon.DataSource = SqlDataSource2;
            chart_wagon.Series[0].XValueMember = "num_wagon";
            chart_wagon.Series[0].YValueMembers = "tonazh";
            chart_wagon.DataBind();
            grid_wagon.DataBind();
            Session["result_wagon"] = "glaze2";
            lblcntwagon.Text = Convert.ToString(grid_wagon.Rows.Count);
            lblfaz.Text = "لعاب دو";
        }
        if (!Page.IsPostBack)
        {
            lbldateshow.Text = date;
            SqlDataSource2.FilterExpression = "tarikh ='" + lbldateshow.Text + "'";
            SqlDataSource1.FilterExpression = "tarikh ='" + lbldateshow.Text + "'";
            chart_wagon.Series[0].XValueMember = "num_wagon";
            chart_wagon.Series[0].YValueMembers = "tonazh";
            chart_wagon.DataBind();
            grid_wagon.DataBind();
          //  chart_wagon.DataBind();

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
       
    
        if (rdbglaze.SelectedValue == "1")
            {
                SqlDataSource1.FilterExpression = "tarikh ='" + lbldateshow.Text + "'";
                grid_wagon.DataSource = SqlDataSource1;
                chart_wagon.DataSource = SqlDataSource1;
                chart_wagon.Series[0].XValueMember = "num_wagon";
                chart_wagon.Series[0].YValueMembers = "tonazh";
                chart_wagon.DataBind();
                grid_wagon.DataBind();
                lblcntwagon.Text=Convert.ToString(grid_wagon.Rows.Count);
                
               
            }
        else if (rdbglaze.SelectedValue == "2")
            {
                SqlDataSource2.FilterExpression = "tarikh='" + lbldateshow.Text + "'";
                grid_wagon.DataSource = SqlDataSource2;
                chart_wagon.DataSource = SqlDataSource2;
                chart_wagon.Series[0].XValueMember = "num_wagon";
                chart_wagon.Series[0].YValueMembers = "tonazh";
                chart_wagon.DataBind();
                grid_wagon.DataBind();
                lblcntwagon.Text = Convert.ToString(grid_wagon.Rows.Count);
                
            }
          
           
       // }
        else
        {
            lblerror.Visible = true;
            
        }
        cnn.Close();
        
     }


    protected void grid_wagon_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       grid_wagon.PageIndex = e.NewPageIndex;
       grid_wagon.DataBind(); //bindgridview will get the data source and bind it again
    }
}