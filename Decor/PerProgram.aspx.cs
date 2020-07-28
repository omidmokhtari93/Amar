using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


public partial class Decor_Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
       
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();

        
        var  date= p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        if (!Page.IsPostBack)
        {

            txtPerDate.Value = date;
        }
       
    }
}