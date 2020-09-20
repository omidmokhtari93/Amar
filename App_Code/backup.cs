using System;
using System.Activities.Statements;
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
public class backup : WebService
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
        var Files = d.GetFiles().OrderBy(p => p.CreationTime).ToArray();
        var fileName = k.GetFileName(key);
        return (from file in Files where file.Name == fileName select file.Name).FirstOrDefault();
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
        path = path.Replace("\\", "/") + "/" + k.GetFileName(key);
        var cmd = new SqlCommand("BACKUP DATABASE " + k.GetDb(key) + " TO DISK = '" + path + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        RemoveOldBackups(key);
        return new JavaScriptSerializer().Serialize(new { message = "پشتیبان گیری با موفقیت انجام شد", type = "success" });
    }


    [WebMethod]
    public string CheckLastBackups(string key)
    {
        if (k.check(key))
        {
            return k.Message;
        }

        var d = new DirectoryInfo(Server.MapPath(k.GetPath(key)));
        var list = d.GetFiles().OrderByDescending(p => p.CreationTime).ToArray()
            .Select(t => new BackupData() { Name = t.Name, Size = t.Length }).ToList();
        return new JavaScriptSerializer().Serialize(list);
    }

    private void RemoveOldBackups(string key)
    {
        var files = new DirectoryInfo(Server.MapPath(k.GetPath(key)))
            .GetFiles("*").OrderByDescending(x => x.CreationTime).ToArray();
        if (files.Length < 5) return;
        for (var i = 5; i < files.Length; i++)
        {
            File.Delete(files[i].FullName);
        }
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
                    return "../bastebandi/backups";
                case "AjEQh@32":
                    return "../flower_depot/backups";
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
}
