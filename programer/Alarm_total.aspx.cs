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
using System.Text;
using System.Drawing;
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
    static int minalaram = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!Page.IsPostBack)

            if ((((string)Session["level"] != "programer") || (Convert.ToInt32(Session["userid"]) != 15)) && (((string)Session["level"] != "mng_product") || (Convert.ToInt32(Session["userid"]) != 16)) && (((string)Session["level"] != "Bana") || (Convert.ToInt32(Session["userid"]) != 34)))
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
            lblfaz.Text = "فاز یک";
        }
        else if (rdbglaze.SelectedValue == "2")
        {
            lblfaz.Text = "فاز دو";
         
        }
    }
   
    protected void btnprint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = pnlrikhtegari;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
    }

    protected void DDlsectorr_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DDlsectorr.SelectedValue == "3")//press
       {
           lblsecture.Text = "_ پرس";
           minalaram =Convert.ToInt32(DDlsectorr.SelectedItem.ToString().Substring(1,2));
           


       }
       if (DDlsectorr.SelectedValue == "2")//forming
       {

           lblsecture.Text = "_ فرمینگ";
           minalaram = Convert.ToInt32(DDlsectorr.SelectedItem.ToString().Substring(1, 2));

       }
       if (DDlsectorr.SelectedValue == "1")//rikhtegari
       {

           lblsecture.Text = "_ ریخته گری";
           minalaram = Convert.ToInt32(DDlsectorr.SelectedItem.ToString().Substring(1, 2));
       }
   }
    //===============================
    protected void rdbglaze_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdbglaze.SelectedValue == "1")
        {
            lblfaz.Text = "فاز یک";
          
        }
        else if (rdbglaze.SelectedValue == "2")
        {

            lblfaz.Text = "فاز دو";
       
        }
    }
    protected void btnshowall_Click(object sender, EventArgs e)
    {
        //==========================hiden all gridview
        Grid_alrmtotal.Visible = true;


        //==========================
        Grid_alrmtotal.Columns[6].HeaderStyle.Width = new Unit(30, UnitType.Percentage);
        Grid_alrmtotal.Columns[5].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        Grid_alrmtotal.Columns[4].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        Grid_alrmtotal.Columns[3].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        Grid_alrmtotal.Columns[2].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        Grid_alrmtotal.Columns[1].HeaderStyle.Width = new Unit(10, UnitType.Percentage);
        Grid_alrmtotal.Columns[0].HeaderStyle.Width = new Unit(20, UnitType.Percentage);
        //========================================================================



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

        if (rdbglaze.SelectedValue == "1")
        {
            Session["faz"] = "faz1";
            //=====================================//session faz
            if (DDlsectorr.SelectedValue == "3")
            {
                Session["sector"] = "3";//press
                lblsecture.Text = "_ پرس";
                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
                    " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
                    " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
                    " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
                    " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
                    " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
                    " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
                    " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
                    " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";
                Grid_alrmtotal.DataBind();
            }
            else if (DDlsectorr.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";
                lblsecture.Text = "_ فرمینگ";

                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
            " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
            " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
            " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
            " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
            " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
            " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
            " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
            " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";

                Grid_alrmtotal.DataBind();

            }
            else if (DDlsectorr.SelectedValue == "1")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
                lblsecture.Text = "_ ریخته گری";
                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
                  " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
                  " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
                  " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
                  " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
                  " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
                  " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
                  " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
                  " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";
                Grid_alrmtotal.DataBind();

            }
            //=====================================//session sector



        }//END faz1
        else if (rdbglaze.SelectedValue == "2")
        {
            Session["faz"] = "faz2";

            if (DDlsectorr.SelectedValue == "3")
            {
                Session["sector"] = "3";//press
                lblsecture.Text = "_ پرس";
                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
                    " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
                    " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
                    " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
                    " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
                    " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
                    " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
                    " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
                    " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";
                Grid_alrmtotal.DataBind();
            }
            else if (DDlsectorr.SelectedValue == "2")
            {
                Session["sector"] = "2";//forming
                Session["sector_name"] = "forming";
                lblsecture.Text = "_ فرمینگ";

                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
            " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
            " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
            " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
            " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
            " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
            " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
            " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
            " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";

                Grid_alrmtotal.DataBind();

            }
            else if (DDlsectorr.SelectedValue == "1")
            {
                Session["sector"] = "1";//rikhtegari
                Session["sector_name"] = "rikht";
                lblsecture.Text = "_ ریخته گری";
                Alarm.SelectCommand = " SELECT item_name, A, B, col, '%' + CAST(FLOOR(darsadA) AS varchar(10)) + '/' + RIGHT (LEFT (darsadA - FLOOR(darsadA), 4), 2) AS darsadA, " +
                  " '%' + CAST(FLOOR(darsadB) AS varchar(10)) + '/' + RIGHT (LEFT (darsadB - FLOOR(darsadB), 4), 2) AS darsadB, '%' + CAST(FLOOR(darsadAB) " +
                  " AS varchar(10)) + '/' + RIGHT (LEFT (darsadAB - FLOOR(darsadAB), 4), 2) AS darsadAB " +
                  " FROM (SELECT item.item_name, SUM(grade_" + Session["faz"] + ".gradea) AS A, " +
                  " SUM(grade_" + Session["faz"] + ".gradeB) AS B, SUM(grade_" + Session["faz"] + ".tedad) AS col, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradea) * 1.0 / " +
                  " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadA, CASE WHEN SUM(dbo.grade_" + Session["faz"] + ".gradea) > 0 THEN (ROUND(SUM(dbo.grade_" + Session["faz"] + ".gradeB) * 1.0 / " +
                  " SUM(dbo.grade_" + Session["faz"] + ".tedad) * 100 , 2)) ELSE 0 END AS darsadB, ROUND((SUM(grade_" + Session["faz"] + ".gradeB) + SUM(grade_" + Session["faz"] + ".gradea)) * 1.0 / SUM(grade_" + Session["faz"] + ".tedad) * 100, 2) " +
                  " AS darsadAB FROM grade_" + Session["faz"] + " INNER JOIN item ON grade_" + Session["faz"] + ".item_id = item.id WHERE (grade_" + Session["faz"] + ".tarikh BETWEEN @Starikh AND @Etarikh) AND (item.sector_product = " + Session["sector"] + ")" +
                  " GROUP BY item.item_name, item.kind) AS derivedtbl_1 WHERE (darsadAB < " + minalaram + ")";

                Grid_alrmtotal.DataBind();
            }
            //=====================================//session sector

        }


    }


   
}