using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for backup
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class backup : System.Web.Services.WebService
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
 
    [WebMethod]
    public string CheckTodayBackups()
    {
        var d = new DirectoryInfo(Server.MapPath("Backups"));
        var Files = d.GetFiles().OrderByDescending(p => p.CreationTime).ToArray();
        var getFormattedDate = GetFormattedDate();
        foreach (var file in Files)
        {
            if (file.Name == getFormattedDate)
            {
                return file.Name;
            }
        }
        return "";
    }

    [WebMethod]
    public string CreateBackup()
    {
        if (CheckTodayBackups() != "")
        {
            return new JavaScriptSerializer().Serialize(new { message = "پشتیبان گیری امروز انجام شده است", type = "error" });
        }
        con.Open();
        var path = Server.MapPath("Backups");
        var fileName = GetFormattedDate();
        path = path.Replace("\\", "/") + "/" + fileName;
        var cmd = new SqlCommand("BACKUP DATABASE flower_depot TO DISK = '" + path + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return new JavaScriptSerializer().Serialize(new { message = "پشتیبان گیری با موفقیت انجام شد", type = "success" });
    }

    public string GetFormattedDate()
    {
        return "FLOWER_DEPOT_" + DateTime.Now.ToString("dd_MM_yyyy");
    }

    [WebMethod]
    public string CheckLastBackups()
    {
        var list = new List<BackupData>();
        var d = new DirectoryInfo(Server.MapPath("Backups"));
        var Files = d.GetFiles().OrderByDescending(p => p.CreationTime).ToArray();
        for (var j = 0; j < Files.Length && j < 10; j++)
        {
            list.Add(new BackupData()
            {
                Name = Files[j].Name,
                Size = Files[j].Length
            });
        }
        return new JavaScriptSerializer().Serialize(list);
    }

    public class BackupData
    {
        public string Name { get; set; }
        public long Size { get; set; }
    }

    public void taskScheduler()
    {
        TaskScheduler.Instance.ScheduleTask(15, 2, 24,
            () => { CreateBackup(); });
    }

    public class TaskScheduler
    {
        private static TaskScheduler _instance;
        private List<Timer> timers = new List<Timer>();

        private TaskScheduler() { }

        public static TaskScheduler Instance
        {
            get
            {
                return _instance ?? (_instance = new TaskScheduler());
            }
        }

        public void ScheduleTask(int hour, int min, double intervalInHour, Action task)
        {
            var now = DateTime.Now;
            var firstRun = new DateTime(now.Year, now.Month, now.Day, hour, min, 0, 0);
            if (now > firstRun)
            {
                firstRun = firstRun.AddDays(1);
            }

            var timeToGo = firstRun - now;
            if (timeToGo <= TimeSpan.Zero)
            {
                timeToGo = TimeSpan.Zero;
            }

            var timer = new Timer(x =>
            {
                task.Invoke();
            }, null, timeToGo, TimeSpan.FromHours(intervalInHour));

            timers.Add(timer);
        }
    }
}
