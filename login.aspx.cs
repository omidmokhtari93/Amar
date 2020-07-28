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
    protected void btnenter_OnClick(object sender, EventArgs e)
    {
        Response.CacheControl = "no-cache";
        Response.AddHeader("Pragma", "no-cache");
        Response.Expires = -1;
        Session["level"] = "flower_depot";
        Session["userid"] = "44";
        Response.Redirect("/flower_depot/welcome.aspx");
            
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
            Session["userid"] = 46;
            Response.Redirect("flower_depot/welcome.aspx");
        }
        //try
        //{
        //    cnn.Open();
        //    SqlCommand cmd = new SqlCommand("select user_level.name as level,users.leveluser as user_id,users.id as " +
        //                                    "idmaster from users,user_level where users.user_name='" + txtname.Text + "' " +
        //                                    "and users.codemd5='" + encryptString(txtpass.Text) + "' and user_level.user_id=users.leveluser", cnn);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    if (dr.Read())
        //    {
        //        trwuser_id = Convert.ToString(dr["user_id"]);
        //        Session["level"] = dr["level"];
        //        Session["userid"] = dr["user_id"];
        //        Session["username"] = txtname.Text;
        //        Session["idmaster"] = dr["idmaster"];//for task master glaze

        //        if (dr["level"].ToString() == "rikhtegari")
        //            Response.Redirect("rikhtegari/rikhtegari.aspx");
        //        else if (dr["level"].ToString() == "forming")
        //            Response.Redirect("forming/forming.aspx");
        //        else if (dr["level"].ToString() == "pardakht")
        //            Response.Redirect("pardakht/show_result_pardakht.aspx");
        //        else if (dr["level"].ToString() == "press")
        //            Response.Redirect("press/press.aspx");
        //        else if (dr["level"].ToString() == "biscuit")
        //            Response.Redirect("biscuit/reporting_biswagon.aspx");
        //        else if (dr["level"].ToString() == "glaze1")
        //            Response.Redirect("glaze1/amar_glaze.aspx");
        //        else if (dr["level"].ToString() == "glaze2")
        //            Response.Redirect("glaze2/amar_glaze.aspx");
        //        else if (dr["level"].ToString() == "quality")
        //            Response.Redirect("admin/item.aspx");
        //        else if (dr["level"].ToString() == "kargozini")
        //            Response.Redirect("admin/personel.aspx");
        //        else if (dr["level"].ToString() == "admin")
        //            Response.Redirect("admin/admin.aspx");
        //        else if (dr["level"].ToString() == "programer")
        //            Response.Redirect("programer/show_amar_day.aspx");
        //        else if (dr["level"].ToString() == "mng_product")
        //            Response.Redirect("programer/show_amar_day.aspx");
        //        else if (dr["level"].ToString() == "Bana")
        //            Response.Redirect("programer/show_amar_day.aspx");
        //        else if (dr["level"].ToString() == "wagon1" || dr["level"].ToString() == "wagon11" || dr["level"].ToString() == "wagon111")
        //            Response.Redirect("glaze1/wagon.aspx");

        //        else if (dr["level"].ToString() == "wagon2" || dr["level"].ToString() == "wagon22" || dr["level"].ToString() == "wagon222")
        //            Response.Redirect("glaze2/wagon.aspx");
        //        else if (dr["level"].ToString() == "pardakht1")
        //            Response.Redirect("pardakht/pardakht.aspx");
        //        else if (dr["level"].ToString() == "control_weight")
        //            Response.Redirect("show_control/result_shift.aspx");
        //        else if (dr["level"].ToString() == "modelsazi")
        //            Response.Redirect("modelsazi/membran.aspx");
        //        else if ((dr["level"].ToString() == "depogol") || (dr["level"].ToString() == "depogol1") || (dr["level"].ToString() == "depogol2"))
        //            Response.Redirect("flower_depot/welcome.aspx");

        //        else if (dr["level"].ToString() == "taskmaster1")
        //            Response.Redirect("glaze1/daily_leave.aspx");
        //        else if (dr["level"].ToString() == "taskmaster2")
        //            Response.Redirect("glaze2/daily_leave.aspx");
        //        else if (dr["level"].ToString() == "Supervisor1")
        //            Response.Redirect("glaze1/daily_report.aspx");
        //        else if (dr["level"].ToString() == "Supervisor2")
        //            Response.Redirect("glaze2/daily_report.aspx");
        //        else if (dr["level"].ToString() == "bis")
        //            Response.Redirect("biscuit/wagon.aspx");
        //        else if (dr["level"].ToString() == "sorting")
        //            Response.Redirect("sorting/record_time.aspx");

        //        else if (dr["level"].ToString() == "Labratory")
        //            Response.Redirect("Labratory/Lab_Report.aspx");
        //        else if (dr["level"].ToString() == "grade")
        //            Response.Redirect("programer/reporting_glaze.aspx");
        //        else if (dr["level"].ToString() == "shatel")
        //            Response.Redirect("biscuit/shatel.aspx");
        //        else if (dr["level"].ToString() == "flower_depot")
        //            Response.Redirect("flower_depot/welcome.aspx");
        //        else if ((dr["level"].ToString() == "sort") )
        //            Response.Redirect("storage_map/Map_stor.aspx");
        //        else if (dr["level"].ToString() == "Packing")
        //            Response.Redirect("bastebandi/od.aspx");
        //        else if (dr["level"].ToString() == "Monshi_pack")
        //            Response.Redirect("bastebandi/order.aspx");
        //        else if (dr["level"].ToString() == "pack")
        //        {

        //                Response.Redirect("bastebandi/depo.aspx");

        //        }
        //        else if (dr["level"].ToString() == "decor")
        //        {
        //            Response.Redirect("Decor/PerProgram.aspx");
        //        }
        //        else if (dr["level"].ToString() == "fanni")
        //        {
        //            Response.Redirect("DaftarFanni/Sabt.aspx");
        //        }


        //    }
        //    else

        //        lblmsg.Text = "!كاربر گرامي نام کاربری یا رمز عبور شما اشتباه می باشد";


        //    cnn.Close();
        //}
        //catch
        //{
        //    lblmsg.Text = "!كاربر گرامي نام کاربری یا رمز عبور شما اشتباه می باشد";
        //}
    }

    protected void btnlogin_personel_OnClick(object sender, EventArgs e)
    {
        //try
        //{
        //    cnp.Open();
        //    SqlCommand cmdlogpersonel = new SqlCommand("SELECT     id, unit_name FROM         dbo.units where permit=1 and user_name='" + txtname.Text + "'  and password='" + txtpass.Text + "' ", cnp);
        //    SqlDataReader dr = cmdlogpersonel.ExecuteReader();
        //    if (dr.Read())
        //    {

        //        Session["unit_id"] = dr["id"];
        //        Session["unit"] = dr["unit_name"];
        //        Session["shift"] = 0;
        //        Session["user_shift"] = 0;
        //        Session["user_family"] = "-----";
        //        Session["user_bis"] = 0;
        //        Response.Redirect("daily/daily_leave.aspx");

        //    }
        //    else if (!dr.Read())
        //    {
        //        cnp.Close();
        //        cnp.Open();
        //        SqlCommand cmdlogshift = new SqlCommand("SELECT     dbo.user_shift.unit_id as unit_id, dbo.units.unit_name as unit_name, dbo.user_shift.id as id,dbo.user_shift.family as family " +
        //                                                " FROM dbo.units INNER JOIN dbo.user_shift ON dbo.units.id = dbo.user_shift.unit_id " +
        //                                                " where   dbo.user_shift.username='" + txtname.Text + "'  and dbo.user_shift.password='" + txtpass.Text + "' ", cnp);
        //        SqlDataReader drshift = cmdlogshift.ExecuteReader();
        //        if (drshift.Read())
        //        {
        //            Session["unit_id"] = drshift["unit_id"];
        //            Session["unit"] = drshift["unit_name"];
        //            Session["shift"] = 1;
        //            Session["user_shift"] = drshift["id"];
        //            Session["user_family"] = drshift["family"];
        //            Session["user_bis"] = 0;
        //            Response.Redirect("daily/daily_leave.aspx");

        //        }
        //    }
        //    if (string.IsNullOrEmpty(txtname.Text) || string.IsNullOrEmpty(txtpass.Text))
        //    {
        //        lblmsg.Text = "!كاربر گرامي نام کاربری یا رمز عبور شما اشتباه می باشد";
        //    }
        //    cnp.Close();
        //}
        //catch
        //{
        //    lblmsg.Text = "!كاربر گرامي نام کاربری یا رمز عبور شما اشتباه می باشد";
        //}
    }
}


