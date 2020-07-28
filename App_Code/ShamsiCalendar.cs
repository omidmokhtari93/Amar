using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for ShamsiCalendar
/// </summary>
public class ShamsiCalendar
{
    public enum CulterType { en, fa };
    public static DateTime Shamsi2Miladi(string _date)
    {
        try
        {
            string[] datevalue = _date.Split('/').ToArray();
            int years = Convert.ToInt16(datevalue[0]);
            int month = Convert.ToInt16(datevalue[1]);
            string[] DT = datevalue[2].Split(' ').ToArray();
            int Day = Convert.ToInt16(DT[0]);
            int H = 0;
            int D = 0;
            try
            {
                if (DT[1] != null)
                {
                    string[] Time = DT[1].Split(':').ToArray();
                    H = Int32.Parse(Time[0]);
                    D = Int32.Parse(Time[1]);
                }
            }
            catch { }
            PersianCalendar PSC = new PersianCalendar();
            DateTime date = PSC.ToDateTime(years, month, Day, H, D, 0, 0);
            return date;
        }
        catch (Exception ER)
        {
            DateTime Dt = new DateTime();
            return Dt;
        }
    }
    public static void ChangCulter(CulterType cu)
    {
        switch (cu)
        {
            case CulterType.en:
                CultureInfo CU = new CultureInfo("en-US");
                Thread.CurrentThread.CurrentCulture = CU;
                Thread.CurrentThread.CurrentUICulture = CU;
                break;
            case CulterType.fa:
                PersianCulture PC = new PersianCulture();
                Thread.CurrentThread.CurrentCulture = PC;
                Thread.CurrentThread.CurrentUICulture = PC;
                break;
        }
    }
}