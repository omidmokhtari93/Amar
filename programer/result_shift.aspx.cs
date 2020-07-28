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


       
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        //miladi = datetimeformat;
        //datetimeformat = p.AddDays(miladi, -1);
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        lbldateshow.Text = date;

        if (rdbglaze.SelectedValue == "1")
        {
            grid_wagon.DataSource = SqlDataSource1;
            chart_wagon.DataSource = SqlDataSource1;
            grid_shift_item.DataSource = SqlDataSource11;
            gridshift.DataSource = SqlDataSource111;
            chart_wagon.Series[0].XValueMember = "shift";
            chart_wagon.Series[0].YValueMembers = "tonazh";
            chart_wagon.DataBind();
            grid_wagon.DataBind();
            lblfaz.Text = "لعاب یک";
            glaze = "glaze1";

        }
        else if (rdbglaze.SelectedValue == "2")
        {
            grid_wagon.DataSource = SqlDataSource2;
            chart_wagon.DataSource = SqlDataSource2;
            grid_shift_item.DataSource = SqlDataSource22;
            gridshift.DataSource = SqlDataSource222;
            chart_wagon.Series[0].XValueMember = "shift";
            chart_wagon.Series[0].YValueMembers = "tonazh";
            chart_wagon.DataBind();
            grid_wagon.DataBind();
            lblfaz.Text = "لعاب دو";
            glaze = "glaze2";

        }

        if (!Page.IsPostBack)
        {
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
        lblshiftt.Text="بارگیری شیفت"+rdbshift.SelectedValue;

        if (rdbglaze.SelectedValue == "1")
            {
                SqlDataSource1.FilterExpression = "tarikh ='" + lbldateshow.Text + "'";
                SqlDataSource11.FilterExpression="tarikh='"+lbldateshow.Text+"'";
                grid_wagon.DataSource = SqlDataSource1;
                chart_wagon.DataSource = SqlDataSource1;
                chart_wagon.Series[0].XValueMember = "shift";
                chart_wagon.Series[0].YValueMembers = "tonazh";
                chart_wagon.DataBind();
                grid_wagon.DataBind();
                grid_shift_item.DataBind();
                SqlCommand cmd_zero_up = new SqlCommand("UPDATE glaze1_shift set press=0,press_weight=0,form=0,form_weight=0,rikht=0,rikht_weight=0",cnn);
                cmd_zero_up.ExecuteNonQuery();

                SqlCommand cmd_press = new SqlCommand("UPDATE glaze1_shift SET  press =ppress, press_weight =pp_waight from (SELECT    shift as shif, SUM(dbo.glaze1_wagon.tot_carry) AS ppress,SUM(glaze1_wagon.waight) AS pp_waight FROM          dbo.glaze1_wagon INNER JOIN dbo.item ON dbo.glaze1_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 3) AND (dbo.glaze1_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);
                cmd_press.ExecuteNonQuery();
                
                SqlCommand cmd_form = new SqlCommand("UPDATE glaze1_shift SET  form =fform, form_weight =ff_waight from (SELECT    shift as shif, SUM(dbo.glaze1_wagon.tot_carry) AS fform,SUM(glaze1_wagon.waight) AS ff_waight FROM          dbo.glaze1_wagon INNER JOIN dbo.item ON dbo.glaze1_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 2) AND (dbo.glaze1_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);
                cmd_form.ExecuteNonQuery();
                
                SqlCommand cmd_rikht = new SqlCommand("UPDATE glaze1_shift SET  rikht =rrikht, rikht_weight =rr_waight from (SELECT    shift as shif, SUM(dbo.glaze1_wagon.tot_carry) AS rrikht,SUM(glaze1_wagon.waight) AS rr_waight FROM          dbo.glaze1_wagon INNER JOIN dbo.item ON dbo.glaze1_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 1) AND (dbo.glaze1_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);
                cmd_rikht.ExecuteNonQuery();
                
                gridshift.DataSource = SqlDataSource111;
                gridshift.Visible = true;
                gridshift.DataBind();
                
               
            }
        else if (rdbglaze.SelectedValue == "2")
            {
                SqlDataSource2.FilterExpression = "tarikh='" + lbldateshow.Text + "'";
                SqlDataSource22.FilterExpression = "tarikh='" + lbldateshow.Text + "'";
                grid_wagon.DataSource = SqlDataSource2;
                chart_wagon.DataSource = SqlDataSource2;
                chart_wagon.Series[0].XValueMember = "shift";
                chart_wagon.Series[0].YValueMembers = "tonazh";
                chart_wagon.DataBind();
                grid_wagon.DataBind();
                grid_shift_item.DataBind();
                SqlCommand cmd_zero_up = new SqlCommand("UPDATE glaze2_shift set press=0,press_weight=0,form=0,form_weight=0,rikht=0,rikht_weight=0",cnn);
                cmd_zero_up.ExecuteNonQuery();

                SqlCommand cmd_press = new SqlCommand("UPDATE glaze2_shift SET  press =ppress, press_weight =pp_waight from (SELECT    shift as shif, SUM(dbo.glaze2_wagon.tot_carry) AS ppress,SUM(glaze2_wagon.waight) AS pp_waight FROM          dbo.glaze2_wagon INNER JOIN dbo.item ON dbo.glaze2_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 3) AND (dbo.glaze2_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);      
                cmd_press.ExecuteNonQuery();
                
                SqlCommand cmd_form = new SqlCommand("UPDATE glaze2_shift SET  form =fform, form_weight =ff_waight from (SELECT    shift as shif, SUM(dbo.glaze2_wagon.tot_carry) AS fform,SUM(glaze2_wagon.waight) AS ff_waight FROM          dbo.glaze2_wagon INNER JOIN dbo.item ON dbo.glaze2_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 2) AND (dbo.glaze2_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);
                cmd_form.ExecuteNonQuery();
                
                SqlCommand cmd_rikht = new SqlCommand("UPDATE glaze2_shift SET  rikht =rrikht, rikht_weight =rr_waight from (SELECT    shift as shif, SUM(dbo.glaze2_wagon.tot_carry) AS rrikht,SUM(glaze2_wagon.waight) AS rr_waight FROM          dbo.glaze2_wagon INNER JOIN dbo.item ON dbo.glaze2_wagon.item_id = dbo.item.id WHERE      (dbo.item.sector_product = 1) AND (dbo.glaze2_wagon.tarikh = '" + lbldateshow.Text + "') group by shift) as table11 where shift=shif ", cnn);
                cmd_rikht.ExecuteNonQuery();
                
                gridshift.DataSource = SqlDataSource222;
                gridshift.Visible = true;
                gridshift.DataBind();
                
            }
          

      
      
     }


    protected void grid_wagon_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       grid_wagon.PageIndex = e.NewPageIndex;
       grid_wagon.DataBind(); //bindgridview will get the data source and bind it again
    }
}