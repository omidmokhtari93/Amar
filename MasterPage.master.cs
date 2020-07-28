using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Globalization;



public partial class MasterPage : System.Web.UI.MasterPage
{
    string sessionid;
    //string tuser_id;
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
   
    DataTable dtTree = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        sessionid = Convert.ToString(Session["userid"]);

        if (!(Page.IsPostBack))
            LoadTree();
       
        DateTime time1 = new DateTime();
        time1 = DateTime.Now;
        PersianCalendar objCalender = new PersianCalendar();
        ConvertToDay_Month(objCalender.GetYear(time1).ToString(), objCalender.GetMonth(time1).ToString(), objCalender.GetDayOfMonth(time1).ToString());
    }
    void AddNodes(int id, TreeNodeCollection tn)
    {
     
        foreach (DataRow dr in dtTree.Select("MenuParentID = " + id))
        {
            if (sessionid == (dr["user_id"].ToString()) || ((dr["user_id"].ToString()) == "0"))
            {
                TreeNode sub = new TreeNode(dr["MenuTitle"].ToString(), dr["MenuID"].ToString());
                tn.Add(sub);
                AddNodes(Convert.ToInt32(sub.Value), sub.ChildNodes);
                int menuparent = Convert.ToInt32(dr["MenuParentID"]);
                int menuid = Convert.ToInt32(dr["menuid"]);
                if ((menuparent < 2) && (menuid != 15) || (menuid == 20) || (menuid == 21) || (menuid == 30) || (menuid == 130) || 
                    (menuid == 131) || (menuid == 138) || (menuid == 143) || (menuid == 110) || (menuid == 159) || (menuid == 121) ||
                    (menuid == 107) || (menuid == 172) || (menuid == 177) ||(menuid == 190) ||(menuid == 191)|| (menuid == 197) ||
                    (menuid == 199) || (menuid == 210) || (menuid == 233) || (menuid == 241) || (menuid == 244) || (menuid == 250) ||
                    (menuid == 253) || (menuid == 260) || (menuid == 263) || (menuid == 269) || (menuid == 281) || (menuid == 304))
                {
                    sub.SelectAction = TreeNodeSelectAction.None;
                    //trw.Nodes[0].CollapseAll();
                }
            }
            trw.Nodes[0].Expand();


        }

    }

    protected void LoadTree()
    {
       
        SqlCommand cmd = new SqlCommand("Select * from Menus Order by MenuParentID, MenuID", cnn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dtTree);
        da.Dispose();
        TreeView tv = (TreeView)this.FindControl("trw");
        AddNodes(0, tv.Nodes);


    }

    protected void trw_SelectedNodeChanged(object sender, EventArgs e)
    {
        string respage="";
        string trwNodeClicked = trw.SelectedNode.Value;
        int menuid = Convert.ToInt32(trwNodeClicked);

        SqlCommand cmd = new SqlCommand("Select form_name from Menus Where MenuID =" + menuid, cnn);

        cnn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            respage = Convert.ToString(dr["form_name"]);
            if (respage == "../login.aspx")
            {
                Session.Clear();
                Response.Redirect("../login.aspx");
            }
            else if (respage == "show_amar_rikhtegari.aspx")
            {
                if (menuid == 31)
                    Response.Redirect("show_amar_rikhtegari.aspx?id=1");
                else if (menuid == 32)
                    Response.Redirect("show_amar_rikhtegari.aspx?id=2");
                else if (menuid == 4)
                    Response.Redirect("show_amar_rikhtegari.aspx?id=3");
            }
        
            else
                Response.Redirect(respage);
            cnn.Close();
        }
        


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

            Label2.Text = " امروز  " + DayOfWeek1 + "  " + Day + "  " + MonthOfYear + "  " + Year + " *****************";
        }
        catch (Exception ee)
        {
            Label2.Text = " ";
        }
    }
}
