using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for DaftarFanni
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class DaftarFanni : System.Web.Services.WebService
{
    private readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DaftarFanni"].ConnectionString);

    /// <summary>
    /// MACHINES CODES
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public string GetMachines()
    {
        
        con.Open();
        var list = new List<object>();
        var cmd = new SqlCommand("select * from Machines order by Id asc", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            list.Add(new { MachineName = rd["MachineName"].ToString(), Id = rd["Id"] });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string MachineEntry(string machineName)
    {
        con.Open();
        var cmd = new SqlCommand("INSERT INTO [dbo].[Machines]([Created],[Modified],[MachineName]) " +
            "VALUES('" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "' ," +
            " '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "' , N'" + machineName + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return new JavaScriptSerializer().Serialize(new { type = "success", message = "با موفقیت ثبت شد" });
    }

    [WebMethod]
    public string GetMachineById(int machineId)
    {
        con.Open();
        var cmd = new SqlCommand("select MachineName from Machines where id =" + machineId + " ", con);
        var machine = cmd.ExecuteScalar().ToString();
        con.Close();
        return machine;
    }

    [WebMethod]
    public string UpdateMachine(int machineId, string machineName)
    {
        con.Open();
        var cmd = new SqlCommand("update Machines set MachineName = N'" + machineName + "'" +
                                 ", Modified = '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "' " +
                                 " where Id = " + machineId + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return new JavaScriptSerializer().Serialize(new { type = "success", message = "با موفقیت ویرایش شد" });
    }


    //////////UNITS CODES
    //////////UNITS CODES/
    /// /////UNITS CODES//////////
    [WebMethod]
    public string GetFilteredUnits(int machineId)
    {
        con.Open();
        var list = new List<object>();
        var cmd = new SqlCommand("SELECT [Id],[PartName]FROM [dbo].[Parts] where MachineId = " + machineId + " order by Id asc", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            list.Add(new { Id = rd["Id"], UnitName = rd["PartName"] });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public void SaveUnit(string unitName, int machineId)
    {
        con.Open();
        var cmd = new SqlCommand("INSERT INTO [dbo].[Parts]([Created],[Modified],[PartName],[MachineId])VALUES" +
                                 "('" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'," +
                                 " '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'," +
                                 " N'" + unitName + "' , " + machineId + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    [WebMethod]
    public string GetUnitInformation(int unitId)
    {
        con.Open();
        var obj = new object();
        var cmd = new SqlCommand("select * from Parts where id = " + unitId + " ", con);
        var rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            obj = new { PartName = rd["PartName"], MachineId = rd["MachineId"] };
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(obj);
    }

    [WebMethod]
    public void UpdatePart(int unitId, int machineId, string partName)
    {
        con.Open();
        var cmd = new SqlCommand("Update Parts set Modified = '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'" +
                                 ",PartName = N'" + partName + "', MachineId = " + machineId + " where Id = " + unitId + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    /// <summary>
    /// GetLatestSavedFIles in Sabt.aspx page script tag
    /// </summary>
    /// <returns>
    /// return a list of pages for show
    /// </returns>
    [WebMethod]
    public string GetLatestSavedFiles()
    {
        con.Open();
        var list = new List<Pages>();
        var cmd = new SqlCommand("SELECT top 8 dbo.Pages.Id, dbo.Pages.PageNumber, dbo.Pages.Subject, " +
                                 "dbo.Pages.Comment, dbo.Pages.Keywords, dbo.Parts.PartName,Pages.Modified, " +
                                 "dbo.Machines.MachineName, dbo.Pages.MachineId, dbo.Pages.PartId,Pages.FilePath," +
                                 "Pages.List ,Pages.FileSize FROM dbo.Pages INNER JOIN " +
                                 "dbo.Parts ON dbo.Pages.PartId = dbo.Parts.Id INNER JOIN " +
                                 "dbo.Machines ON dbo.Pages.MachineId = dbo.Machines.Id order by Pages.Modified desc", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            list.Add(new Pages()
            {
                Id = Convert.ToInt32(rd["Id"]),
                PageNumber = Convert.ToInt32(rd["PageNumber"]),
                Subject = rd["Subject"].ToString(),
                Comment = rd["Comment"].ToString(),
                MachineId = Convert.ToInt32(rd["MachineId"]),
                Keywords = rd["Keywords"].ToString(),
                MachineName = rd["MachineName"].ToString(),
                PartId = Convert.ToInt32(rd["PartId"]),
                PartName = rd["PartName"].ToString(),
                Modified = rd["Modified"].ToString(),
                FilePath = rd["FilePath"].ToString(),
                Fehrest = Convert.ToBoolean(rd["List"]),
                FileSize = rd["FileSize"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string SavePage()
    {
        try
        {
            con.Open();
            var context = HttpContext.Current.Request;
            var data = new JavaScriptSerializer().Deserialize<Pages>(context.Form["data"]);
            var cmd = new SqlCommand("SELECT count(*)FROM [dbo].[Pages] where " +
                                     "PageNumber = " + data.PageNumber + " and MachineId = " + data.MachineId + " " +
                                     "and PartId = " + data.PartId + " ", con);
            var dup = Convert.ToBoolean(cmd.ExecuteScalar());
            if (dup)
            {
                return new JavaScriptSerializer().Serialize(new { duplicate = true, message = "این شماره صفحه قبلا ثبت شده است" });
            }
            var file = context.Files["file"];
            var fileExtension = Path.GetExtension(context.Files["file"].FileName);
            var fileName = Guid.NewGuid();
            var fname = Path.Combine(Server.MapPath("files/"), fileName + fileExtension);
            var filePath = "files/" + fileName + fileExtension;
            file.SaveAs(fname);
            cmd = new SqlCommand("INSERT INTO [dbo].[Pages]([Created],[Modified],[PageNumber],[Subject]" +
                                     ",[Comment],[Keywords],[MachineId],[PartId],[FilePath],[List],[FileSize])VALUES" +
                                     "('" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'," +
                                     "'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'," + data.PageNumber + "," +
                                     "N'" + data.Subject + "',N'" + data.Comment + "',N'" + data.Keywords + "'," + data.MachineId + "," +
                                     "" + data.PartId + ",'" + filePath + "'," + (data.Fehrest ? 1 : 0) + ", '" + data.FileSize + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            return new JavaScriptSerializer().Serialize(new { duplicate = false, message = "با موفقیت ثبت شد" });
        }
        catch (Exception e)
        {
            return e.ToString();
        }
    }

    [WebMethod]
    public int GetLatestPageNumber(int machineId, int partId)
    {
        con.Open();
        var cmd = new SqlCommand("if(select max(PageNumber) + 1 from pages where " +
                                 "MachineId = " + machineId + " and PartId = " + partId + ") is null" +
                                 " begin select 1 end else begin select max(PageNumber) + 1 " +
                                 "from pages where MachineId = " + machineId + " and PartId = " + partId + " end", con);
        return Convert.ToInt32(cmd.ExecuteScalar());
    }

    /// <summary>
    /// Search Documents
    /// </summary>
    [WebMethod]
    public string SearchInDocuments(int unitId, int machineId, string keywords)
    {
        con.Open();
        var list = new List<Pages>();
        var cmd = new SqlCommand("SELECT dbo.Pages.Id, dbo.Pages.PageNumber, dbo.Pages.Subject, " +
                                 "dbo.Pages.Comment, dbo.Pages.Keywords, dbo.Parts.PartName, Pages.Modified, " +
                                 "dbo.Machines.MachineName, dbo.Pages.MachineId, dbo.Pages.PartId, Pages.FilePath, Pages.List, Pages.FileSize " +
                                 "FROM dbo.Pages INNER JOIN dbo.Parts ON dbo.Pages.PartId = dbo.Parts.Id INNER JOIN " +
                                 "dbo.Machines ON dbo.Pages.MachineId = dbo.Machines.Id " +
                                 "where((Subject like N'%" + keywords + "%' or '" + keywords + "' = '') or " +
                                 "(Comment like N'%" + keywords + "%' or '" + keywords + "' = '') or " +
                                 "(Keywords like N'%" + keywords + "%' or '" + keywords + "' = '')) " +
                                 "and (Pages.MachineId = " + machineId + " or " + machineId + " = -1) " +
                                 "and (Pages.PartId = " + unitId + " or " + unitId + " = -1) order by Pages.Modified desc", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            list.Add(new Pages()
            {
                Id = Convert.ToInt32(rd["Id"]),
                PageNumber = Convert.ToInt32(rd["PageNumber"]),
                Subject = rd["Subject"].ToString(),
                Comment = rd["Comment"].ToString(),
                MachineId = Convert.ToInt32(rd["MachineId"]),
                Keywords = rd["Keywords"].ToString(),
                MachineName = rd["MachineName"].ToString(),
                PartId = Convert.ToInt32(rd["PartId"]),
                PartName = rd["PartName"].ToString(),
                Modified = rd["Modified"].ToString(),
                FilePath = rd["FilePath"].ToString(),
                Fehrest = Convert.ToBoolean(rd["List"]),
                FileSize = rd["FileSize"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public void DeleteDocument(int documentId)
    {
        try
        {
            con.Open();
            var cmd = new SqlCommand("select FilePath from Pages where Id = " + documentId + " ", con);
            var filePath = cmd.ExecuteScalar().ToString();
            if (File.Exists(Server.MapPath(filePath)))
            {
                File.Delete(Server.MapPath(filePath));
            }
            cmd = new SqlCommand("delete from Pages where Id = " + documentId + " ", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }
    }
    /// <summary>
    /// Get Document By Id
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public string GetDocumentById(int documentId)
    {
        con.Open();
        var page = new Pages();
        var cmd = new SqlCommand("SELECT dbo.Pages.Id, dbo.Pages.PageNumber, dbo.Pages.Subject, " +
                                 "dbo.Pages.Comment, dbo.Pages.Keywords, dbo.Parts.PartName,Pages.Modified, " +
                                 "dbo.Machines.MachineName, dbo.Pages.MachineId, dbo.Pages.PartId,Pages.FilePath," +
                                 "Pages.List ,Pages.FileSize FROM dbo.Pages INNER JOIN " +
                                 "dbo.Parts ON dbo.Pages.PartId = dbo.Parts.Id INNER JOIN " +
                                 "dbo.Machines ON dbo.Pages.MachineId = dbo.Machines.Id " +
                                 "where Pages.Id = " + documentId + " ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            page.Id = Convert.ToInt32(rd["Id"]);
            page.PageNumber = Convert.ToInt32(rd["PageNumber"]);
            page.Subject = rd["Subject"].ToString();
            page.Comment = rd["Comment"].ToString();
            page.MachineId = Convert.ToInt32(rd["MachineId"]);
            page.Keywords = rd["Keywords"].ToString();
            page.MachineName = rd["MachineName"].ToString();
            page.PartId = Convert.ToInt32(rd["PartId"]);
            page.PartName = rd["PartName"].ToString();
            page.Modified = rd["Modified"].ToString();
            page.FilePath = rd["FilePath"].ToString();
            page.Fehrest = Convert.ToBoolean(rd["List"]);
            page.FileSize = rd["FileSize"].ToString();
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(page);
    }

    [WebMethod]
    public string EditDocument()
    {
        try
        {
            con.Open();
            var context = HttpContext.Current.Request;
            var data = new JavaScriptSerializer().Deserialize<Pages>(context.Form["data"]);
            var filePath = "";
            SqlCommand cmd;
            if (data.FileSize != null)
            {
                cmd = new SqlCommand("select FilePath from Pages where Id=" + data.Id + " ", con);
                var oldFilePath = cmd.ExecuteScalar().ToString();
                if (File.Exists(Server.MapPath(oldFilePath)))
                {
                    File.Delete(Server.MapPath(oldFilePath));
                }
                var file = context.Files["file"];
                var fileExtension = Path.GetExtension(context.Files["file"].FileName);
                var fileName = Guid.NewGuid();
                var fname = Path.Combine(Server.MapPath("files/"), fileName + fileExtension);
                filePath = "files/" + fileName + fileExtension;
                file.SaveAs(fname);
            }
            cmd = new SqlCommand("UPDATE [dbo].[Pages] " +
                                 "SET[Modified] = '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "' " +
                                 ",[PageNumber] = " + data.PageNumber + " " +
                                 ",[Subject] = N'" + data.Subject + "' " +
                                 ",[Comment] = N'" + data.Comment + "' " +
                                 ",[Keywords] = N'" + data.Keywords + "' " +
                                 ",[MachineId] = " + data.MachineId + " " +
                                 ",[PartId] = " + data.PartId + " " +
                                 (filePath.Length > 0 ? ",[FilePath] = '" + filePath + "'" : "") +
                                 ",[List] = " + (data.Fehrest ? 1 : 0) + " " +
                                 (data.FileSize == null ? "" : ",[FileSize] = '" + data.FileSize + "'") +
                                 " WHERE Id = " + data.Id + " ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            return new JavaScriptSerializer().Serialize(new { duplicate = false, message = "با موفقیت ویرایش شد" });
        }
        catch (Exception e)
        {
            return e.ToString();
        }
    }

    public class Pages
    {
        public int Id { get; set; }
        public int PageNumber { get; set; }
        public string Subject { get; set; }
        public string Comment { get; set; }
        public string Keywords { get; set; }
        public string PartName { get; set; }
        public string MachineName { get; set; }
        public int PartId { get; set; }
        public int MachineId { get; set; }
        public string Modified { get; set; }
        public string FilePath { get; set; }
        public bool Fehrest { get; set; }
        public string FileSize { get; set; }
    }
}
