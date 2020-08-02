using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;
using System.Text;
using System.Security.Cryptography;

public partial class main : System.Web.UI.Page
{
    string trwuser_id;
    string[] d = new string[10];
    //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    //SqlConnection cnp = new SqlConnection(ConfigurationManager.ConnectionStrings["personel"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.CacheControl = "no-cache";
        Response.AddHeader("Pragma", "no-cache");
        Response.Expires = -1;

        DateTime time1 = new DateTime();
        time1 = DateTime.Now;
        PersianCalendar objCalender = new PersianCalendar();
        ConvertToDay_Month(objCalender.GetYear(time1).ToString(), objCalender.GetMonth(time1).ToString(), objCalender.GetDayOfMonth(time1).ToString());
    }
    private string encryptString(string strToEncrypt)
    {
        UTF8Encoding ue = new UTF8Encoding();
        byte[] bytes = ue.GetBytes(strToEncrypt);

        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] hashBytes = md5.ComputeHash(bytes);

        // Bytes to string

        return System.Text.RegularExpressions.Regex.Replace
            (BitConverter.ToString(hashBytes), "-", "").ToLower();

    }
    private void ConvertToDay_Month(string Year, string Month, string Day)
    {
        try
        {
            System.Globalization.PersianCalendar x = new System.Globalization.PersianCalendar();
            DateTime dt = x.ToDateTime(Convert.ToInt16(Year), Convert.ToInt16(Month), Convert.ToInt16(Day), 0, 0, 0, 0);
            int WeekOfYear = x.GetWeekOfYear(dt, CalendarWeekRule.FirstDay, 0);
            string DayOfWeek1 = x.GetDayOfWeek(dt).ToString();
            string MonthOfYear = x.GetMonth(dt).ToString();

            switch (MonthOfYear)
            {
                case "1": { MonthOfYear = "فروردین"; }; break;
                case "2": { MonthOfYear = "اردیبهشت"; }; break;
                case "3": { MonthOfYear = "خرداد"; }; break;
                case "4": { MonthOfYear = "تیر"; }; break;
                case "5": { MonthOfYear = "مرداد"; }; break;
                case "6": { MonthOfYear = "شهریور"; }; break;
                case "7": { MonthOfYear = "مهر"; }; break;
                case "8": { MonthOfYear = "آبان"; }; break;
                case "9": { MonthOfYear = "آذر"; }; break;
                case "10": { MonthOfYear = "دی"; }; break;
                case "11": { MonthOfYear = "بهمن"; }; break;
                case "12": { MonthOfYear = "اسفند"; }; break;
            }


            switch (DayOfWeek1)
            {
                case "Saturday": { DayOfWeek1 = "شنبه"; }; break;
                case "ُُSunday": { DayOfWeek1 = "یکشبه"; }; break;
                case "Monday": { DayOfWeek1 = "دوشنبه"; }; break;
                case "Tuesday": { DayOfWeek1 = "سه شنبه"; }; break;
                case "Wednesday": { DayOfWeek1 = "چهارشنبه"; }; break;
                case "Thursday": { DayOfWeek1 = "پنجشنبه"; }; break;
                case "Friday": { DayOfWeek1 = "جمعه"; }; break;
            }

            if (DayOfWeek1 == "Sunday")
                DayOfWeek1 = "یکشنبه";

            lbl_today.Text = DayOfWeek1;
            lbl_today1.Text = Day + "  " + MonthOfYear + "  " + Year;
        }
        catch
        {

        }
    }

    protected void btnlogin_OnClick(object sender, EventArgs e)
    {
        if (txtname.Text == "anbargol" && txtpass.Text == "gol")
        {
            Session["level"] = "flower_depot";
            Session["userid"] = 44;
            Response.Redirect("flower_depot/welcome.aspx");
        }
        if (txtname.Text == "ali" && txtpass.Text == "ali123")
        {
            Session["level"] = "pack";
            Session["username"] = txtname.Text;
            Session["userid"] = 34;
            Response.Redirect("bastebandi/od.aspx");
        }
        if (txtname.Text == "parvin" && txtpass.Text == "1363")
        {
            Session["level"] = "depo";
            Session["username"] = txtname.Text;
            Session["userid"] = 46;
            Response.Redirect("bastebandi/depo.aspx");
        }
        
    }

    protected void btnlogin_personel_OnClick(object sender, EventArgs e)
    {
       
    }
}


