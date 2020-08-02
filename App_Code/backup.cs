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
    private readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    public Key k = new Key();

    [WebMethod]
    public string CheckTodayBackups(string key)
    {
        if (k.check(key))
        {
            return k.Message;
        }

        var d = new DirectoryInfo(Server.MapPath(k.GetPath(key)));
        var Files = d.GetFiles().OrderByDescending(p => p.CreationTime).ToArray();
        var fileName = k.GetFileName(key);
        foreach (var file in Files)
        {
            if (file.Name == fileName)
            {
                return file.Name;
            }
        }
        return null;
    }

    [WebMethod]
    public string CreateBackup(string key)
    {
        if (k.check(key))
        {
            return k.Message;
        }

        if (CheckTodayBackups(key) != null)
        {
            return new JavaScriptSerializer().Serialize(new { message = "پشتیبان گیری امروز انجام شده است", type = "error" });
        }
        con.Open();
        var path = Server.MapPath(k.GetPath(key));
        var fileName = k.GetFileName(key);
        path = path.Replace("\\", "/") + "/" + fileName;
        var cmd = new SqlCommand("BACKUP DATABASE " + k.GetDb(key) + " TO DISK = '" + path + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return new JavaScriptSerializer().Serialize(new { message = "پشتیبان گیری با موفقیت انجام شد", type = "success" });
    }


    [WebMethod]
    public string CheckLastBackups(string key)
    {
        if (k.check(key))
        {
            return k.Message;
        }
        var list = new List<BackupData>();
        var d = new DirectoryInfo(Server.MapPath(k.GetPath(key)));
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


    public class Key
    {
        public string Message = new JavaScriptSerializer().Serialize(new { message = "خطا در پشتیبان گیری", type = "error" });
        public bool check(string key)
        {
            return !(key == "B2Kj32sO85" || key == "AjEQh@32");
        }

        public string GetFileName(string key)
        {
            switch (key)
            {
                case "B2Kj32sO85":
                    return "BASTEBANDI_" + DateTime.Now.ToString("dd_MM_yyyy");
                case "AjEQh@32":
                    return "FLOWER_DEPOT_" + DateTime.Now.ToString("dd_MM_yyyy");
                default:
                    return Message;
            }
        }

        public string GetPath(string key)
        {
            switch (key)
            {
                case "B2Kj32sO85":
                    return "/bastebandi/backups";
                case "AjEQh@32":
                    return "/flower_depot/backups";
                default:
                    return Message;
            }
        }

        public string GetDb(string key)
        {
            switch (key)
            {
                case "B2Kj32sO85":
                    return "bastebandi";
                case "AjEQh@32":
                    return "flower_depot";
                default:
                    return null;
            }
        }
    }

    public class BackupData
    {
        public string Name { get; set; }
        public long Size { get; set; }
    }

    public void taskScheduler()
    {
        TaskScheduler.Instance.ScheduleTask(15, 2, 24,
            () => { });
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
