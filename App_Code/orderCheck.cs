using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Globalization;

/// <summary>
/// Summary description for orderCheck
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class orderCheck : System.Web.Services.WebService
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["bastebandi"].ConnectionString);
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);
    [WebMethod]
    public string KhamKala(int riziid)
    {
        cnn.Open();
        var s = new SqlCommand("SELECT [idi],[ids],[idg],[idd],[Tedad],[rang]FROM [dbo].[HKhoroojRiz] where id = " + riziid + " ", cnn);
        var o = new Kala();
        var r = s.ExecuteReader();
        while (r.Read())
        {
            o.ItemId = Convert.ToInt32(r["idi"]);
            o.ServiceId = Convert.ToInt32(r["ids"]);
            o.Gol = Convert.ToInt32(r["idg"]);
            o.Rang = Convert.ToInt32(r["rang"]);
            o.Darage = Convert.ToInt32(r["idd"]);
            o.Karton = Convert.ToInt32(r["Tedad"]);
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(o);
    }

    [WebMethod]
    public void UpdateRizKala(Kala obj)
    {
        if (obj.ItemId == 0)
        {
            cnn.Open();
            var update = new SqlCommand("UPDATE [dbo].[HKhoroojRiz] " +
                                        "SET[idi] = 0 " +
                                        ",[ids] = i.sid " +
                                        ",[idg] = i.gid " +
                                        ",[idd] = i.did " +
                                        ",[Tedad] = i.karton " +
                                        ",[TedadK] = i.tedadK " +
                                        ",[rang] = i.rid " +
                                        "from (SELECT  " + obj.ServiceId + " as sid, " + obj.Gol + " as gid," +
                                        "" + obj.Darage + " as did ,SUM(ted) AS tedadK , " + obj.Karton + " as karton, " +
                                        "" + obj.Rang + " as rid FROM dbo.RizSer WHERE(idS = " + obj.ServiceId + "))i" +
                                        " WHERE id = " + obj.Hid + " ", cnn);
            update.ExecuteNonQuery();
        }
        else
        {
            cnn.Open();
            var update = new SqlCommand("UPDATE [dbo].[HKhoroojRiz] " +
                                        "SET[idi] = i.iid " +
                                        ",[ids] = 0 " +
                                        ",[idg] = i.gid " +
                                        ",[idd] = i.did " +
                                        ",[Tedad] = i.karton " +
                                        ",[TedadK] = i.tdk " +
                                        ",[rang] = i.rid " +
                                        "from (SELECT " + obj.ItemId + " as iid, " + obj.Gol + " as gid," +
                                        "" + obj.Darage + " as did, TDK  as  tdk, " + obj.Karton + " as karton, " +
                                        "" + obj.Rang + " as rid FROM Item WHERE(ID = " + obj.ItemId + "))i" +
                                        " WHERE id = " + obj.Hid + " ", cnn);
            update.ExecuteNonQuery();
        }
        cnn.Close();
    }
    [WebMethod]
    public string getorder()
    {
        cnn.Open();
        SqlCommand checknew = new SqlCommand("select count(id) as unread from orders where readd = 0", cnn);
        if (Convert.ToInt32(checknew.ExecuteScalar()) > 0)
        {
            SqlCommand updateunread = new SqlCommand("update orders set readd = 1 where readd = 0", cnn);
            updateunread.ExecuteScalar();
            cnn.Close();
            return "1";
        }
        cnn.Close();
        return "0";
    }

    [WebMethod]
    public string GetHavalehInfo(int havalehId)
    {
        cnn.Open();
        var list = new List<string[]>();
        var selHAvaleInfo = new SqlCommand("SELECT  sh, left (dat,4)+ '/' + SUBSTRING(dat ,5,2) + '/' + right(dat,2) as dat," +
                                           " mnan, madd, rnam, rno FROM HKhorooj where ID = " + havalehId + " ", cnn);
        var r = selHAvaleInfo.ExecuteReader();
        while (r.Read())
        {
            list.Add(new[]{ r["sh"].ToString() , r["dat"].ToString(), r["mnan"].ToString(),
                r["madd"].ToString(), r["rnam"].ToString(),r["rno"].ToString() });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetKalaRiz(int havalehId)
    {
        var list = new List<string[]>();
        var listkala = new List<string[]>();
        cnn.Open();
        var getKala = new SqlCommand("select id ,kala , dar  , rizid , TedadK , tedadkol , Tedadd ,Tedad  from ( " +
                                     "select id, orderType + ' - ' + Golname + ' ' + colo as kala, Golname, dar, typee, rizid, Tedad, " +
                                     "case when l30 = 1 then cast(TedadK as nvarchar(10)) + N' سرویس' else cast(TedadK as nvarchar(10)) end as TedadK, " +
                                     "case when l30 = 1 then cast(tedadkol as nvarchar(10)) + N' سرویس' else cast(tedadkol as nvarchar(10)) end as tedadkol, " +
                                     "cast(Tedad as nvarchar(10)) + ' ' + typee as Tedadd " +
                                     "from(SELECT HKhoroojRiz.id, Item.low30 as l30, case when dbo.Item.nam = '----' then Service.nam " +
                                     "when Service.nam = '----' then dbo.Item.nam end as orderType, " +
                                     "case when dbo.Item.nam = '----' then N'سرویس' " +
                                     "when Service.nam = '----' then N'کارتن' end as typee, " +
                                     "dbo.Gol.nam AS Golname, dbo.Darajeh.dar, dbo.rang.colo, " +
                                     "dbo.HKhoroojRiz.TedadK, dbo.HKhoroojRiz.Tedad, " +
                                     "dbo.HKhoroojRiz.TedadK * dbo.HKhoroojRiz.Tedad AS tedadkol, " +
                                     "dbo.HKhoroojRiz.id as rizid FROM dbo.HKhorooj INNER JOIN " +
                                     "dbo.HKhoroojRiz ON dbo.HKhorooj.ID = dbo.HKhoroojRiz.idkh INNER JOIN " +
                                     "dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                     "dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID INNER JOIN " +
                                     "dbo.Gol ON dbo.HKhoroojRiz.idg = dbo.Gol.ID INNER JOIN " +
                                     "dbo.Darajeh ON dbo.HKhoroojRiz.idd = dbo.Darajeh.ID INNER JOIN " +
                                     "dbo.rang ON dbo.HKhoroojRiz.rang = dbo.rang.ID " +
                                     "WHERE(dbo.HKhorooj.ID = " + havalehId + "))i)h order by id", cnn);
        var r = getKala.ExecuteReader();
        while (r.Read())
        {
            listkala.Add(new[]
            {
                r["kala"].ToString(), r["dar"].ToString(), r["Tedadd"].ToString(), r["TedadK"].ToString(),
                r["tedadkol"].ToString(),r["Tedad"].ToString(),r["rizid"].ToString(),
            });
        }
        list.AddRange(listkala);
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string SabtKala(Kala obj)
    {
        cnn.Open();
        if (obj.ItemId == 0)
        {
            var insertService = new SqlCommand(
                "INSERT INTO [dbo].[HKhoroojRiz]([idkh],[idi],[ids],[idg],[idd],[TedadK],[Tedad],[rang],[serok],[vazn]) " +
                "SELECT " + obj.Hid + " , 0 , " + obj.ServiceId + " , " + obj.Gol + "," +
                "" + obj.Darage + " ,SUM(ted) AS tedadK , " + obj.Karton + " , " +
                "" + obj.Rang + " , 0 , 0 FROM dbo.RizSer WHERE(idS = " + obj.ServiceId + ") ", cnn);
            insertService.ExecuteNonQuery();
            cnn.Close();
            return "";
        }
        var insertFalleh = new SqlCommand(
            "INSERT INTO [dbo].[HKhoroojRiz]([idkh],[idi],[ids],[idg],[idd],[TedadK],[Tedad],[rang],[serok],[vazn]) " +
            "SELECT " + obj.Hid + " , " + obj.ItemId + " , 0 , " + obj.Gol + "," +
            "" + obj.Darage + " , TDK , " + obj.Karton + " , " +
            "" + obj.Rang + " , 0 , 0 FROM Item WHERE(ID = " + obj.ItemId + ") ", cnn);
        insertFalleh.ExecuteNonQuery();
        cnn.Close();
        return "";
    }
    [WebMethod]
    public string GetVaznTotal(int havalehId)
    {
        cnn.Open();
        var selvazn = new SqlCommand("select SUM(vaznKol) as vaznkol from ( " +
                                  "(SELECT SUM(dbo.Service.vazn * dbo.HKhoroojRiz.Tedad) AS vaznKol " +
                                  "FROM dbo.HKhoroojRiz INNER JOIN dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID " +
                                  "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.HKhoroojRiz.ids <> 0))union all " +
                                  "(SELECT SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.vazn) AS vaznKol " +
                                  "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID " +
                                  "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.HKhoroojRiz.idi <> 0)))i", cnn);
        var vazn = selvazn.ExecuteScalar().ToString();
        vazn = vazn.Replace(".", " / ");
        var totalItem = new SqlCommand("select SUM(total) as total from ((select sum(total) as total , Item.nam from ( " +
                                       "(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad) " +
                                       "WHEN Item.darb = 1 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad)  END AS total, dbo.RizSer.idI AS item " +
                                       "FROM dbo.HKhoroojRiz INNER JOIN dbo.RizSer ON dbo.HKhoroojRiz.ids = dbo.RizSer.idS INNER JOIN " +
                                       "dbo.Item ON dbo.RizSer.idI = dbo.Item.ID WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") GROUP BY dbo.RizSer.idI, dbo.Item.darb) " +
                                       "union all(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * HKhoroojRiz.TedadK) " +
                                       "WHEN Item.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * HKhoroojRiz.TedadK) * 2 END AS total, dbo.Item.ID AS item " +
                                       "FROM dbo.Item INNER JOIN dbo.HKhoroojRiz ON dbo.Item.ID = dbo.HKhoroojRiz.idi " +
                                       "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.Item.ser = 0) AND(dbo.Item.ID <> 0) GROUP BY dbo.Item.darb, dbo.Item.ID) " +
                                       "union all(SELECT CASE WHEN Item_1.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) " +
                                       "WHEN Item_1.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) * 2 END AS total, Item_1.ID AS item " +
                                       "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                       "dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS INNER JOIN dbo.Item AS Item_1 ON dbo.RizSer.idI = Item_1.ID " +
                                       "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") GROUP BY Item_1.ID, Item_1.darb))i " +
                                       "INNER JOIN Item ON i.item = Item.ID group by Item.nam)union all " +
                                       "(SELECT HKhoroojRizRiz.Tedad as total,Item.nam from HKhoroojRizRiz " +
                                       "inner join Item on HKhoroojRizRiz.idi = Item.ID where HKhoroojRizRiz.idkh = " + havalehId + " ))j", cnn);
        var tot = totalItem.ExecuteScalar().ToString();
        var list = new List<string[]> { new[] { vazn, tot } };
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetVazn(int havalehId)
    {
        cnn.Open();
        var selvazn = new SqlCommand("select SUM(vaznKol) as vaznkol from ( " +
                                     "(SELECT SUM(dbo.Service.vazn * dbo.HKhoroojRiz.Tedad) AS vaznKol " +
                                     "FROM dbo.HKhoroojRiz INNER JOIN dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID " +
                                     "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.HKhoroojRiz.ids <> 0))union all " +
                                     "(SELECT SUM(dbo.HKhoroojRiz.Tedad * dbo.Item.vazn) AS vaznKol " +
                                     "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID " +
                                     "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.HKhoroojRiz.idi <> 0)))i", cnn);
        var vazn = selvazn.ExecuteScalar().ToString();
        cnn.Close();
        return new JavaScriptSerializer().Serialize(vazn);
    }
    [WebMethod]
    public string GetHavalehTotal(int havalehId)
    {
        var total = " مجموع : ";
        cnn.Open();
        var getTotal = new SqlCommand("SELECT tedad,total from(select SUM(tedad) as tedad , " +
                                      "case when low30 = '----' and itemm = '----' then  N' سرویس ' + service " +
                                      "when low30 = '----' and service = '----' then N' کارتن ' + itemm " +
                                      "when itemm = '----' and service = '----' then N' کارتن ' + low30 end as total from " +
                                      "(select sum(Tedad) as tedad,case when low30 is null then '----' else low30 end as low30, " +
                                      "case when itemm is null then '----' when itemm = '----' then '----'  else N'فله' end as itemm, service " +
                                      "from(SELECT case when Item.low30 = 1 then Item.nam  end as low30, " +
                                      "case when Item.low30 = 0 then Item.nam end as itemm, " +
                                      "Service.nam as service, dbo.HKhoroojRiz.Tedad " +
                                      "FROM dbo.HKhorooj INNER JOIN  dbo.HKhoroojRiz " +
                                      "ON dbo.HKhorooj.ID = dbo.HKhoroojRiz.idkh INNER JOIN " +
                                      "dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                      "dbo.Service ON dbo.HKhoroojRiz.ids = dbo.Service.ID " +
                                      "WHERE(dbo.HKhorooj.ID = " + havalehId + "))i group by low30, itemm, service)j " +
                                      "group by itemm, service, low30)K", cnn);
        var read = getTotal.ExecuteReader();
        while (read.Read())
        {
            total += " (" + read["tedad"] + " " + read["total"] + ")";
        }
        total += "ارسال گردید/.";
        cnn.Close();
        cnn.Open();
        var readmem = new SqlCommand("select mem from HKhorooj where id = " + havalehId + "", cnn);
        total += "(" + readmem.ExecuteScalar() + ")";
        cnn.Close();
        return total;
    }

    [WebMethod]
    public string TotalKala(int havalehId)
    {
        cnn.Open();
        var list = new List<string[]>();
        var listTotal = new List<string[]>();
        var getTotal = new SqlCommand("select SUM(total) as total , nam from ((select sum(total) as total , Item.nam from ( " +
                                      "(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad) " +
                                      "WHEN Item.darb = 1 THEN SUM(dbo.RizSer.ted * dbo.HKhoroojRiz.Tedad)  END AS total, dbo.RizSer.idI AS item " +
                                      "FROM dbo.HKhoroojRiz INNER JOIN dbo.RizSer ON dbo.HKhoroojRiz.ids = dbo.RizSer.idS INNER JOIN " +
                                      "dbo.Item ON dbo.RizSer.idI = dbo.Item.ID WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") GROUP BY dbo.RizSer.idI, dbo.Item.darb) " +
                                      "union all(SELECT CASE WHEN Item.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * HKhoroojRiz.TedadK) " +
                                      "WHEN Item.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * HKhoroojRiz.TedadK) * 2 END AS total, dbo.Item.ID AS item " +
                                      "FROM dbo.Item INNER JOIN dbo.HKhoroojRiz ON dbo.Item.ID = dbo.HKhoroojRiz.idi " +
                                      "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") AND(dbo.Item.ser = 0) AND(dbo.Item.ID <> 0) GROUP BY dbo.Item.darb, dbo.Item.ID) " +
                                      "union all(SELECT CASE WHEN Item_1.darb = 0 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) " +
                                      "WHEN Item_1.darb = 1 THEN SUM(dbo.HKhoroojRiz.Tedad * dbo.HKhoroojRiz.TedadK * dbo.RizSer.ted) * 2 END AS total, Item_1.ID AS item " +
                                      "FROM dbo.HKhoroojRiz INNER JOIN dbo.Item ON dbo.HKhoroojRiz.idi = dbo.Item.ID INNER JOIN " +
                                      "dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS INNER JOIN dbo.Item AS Item_1 ON dbo.RizSer.idI = Item_1.ID " +
                                      "WHERE(dbo.HKhoroojRiz.idkh = " + havalehId + ") GROUP BY Item_1.ID, Item_1.darb))i " +
                                      "INNER JOIN Item ON i.item = Item.ID group by Item.nam)union all " +
                                      "(SELECT HKhoroojRizRiz.Tedad as total,Item.nam from HKhoroojRizRiz " +
                                      "inner join Item on HKhoroojRizRiz.idi = Item.ID where HKhoroojRizRiz.idkh = " + havalehId + "))j group by nam", cnn);
        var r = getTotal.ExecuteReader();
        while (r.Read())
        {
            listTotal.Add(new[] { r["nam"].ToString(), r["total"].ToString() });
        }
        list.AddRange(listTotal);
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public void UpdateKarton(int kartonn, int rizidd, bool check)
    {
        if (check)
        {
            cnn.Open();
            var updateRizTedad = new SqlCommand("UPDATE [dbo].[HKhoroojRizRiz] SET Tedad = " + kartonn + " WHERE id = " + rizidd + "", cnn);
            updateRizTedad.ExecuteNonQuery();
            cnn.Close();
            return;
        }
        cnn.Open();
        var updatekar = new SqlCommand("update HKhoroojRiz set Tedad = " + kartonn + " where id = " + rizidd + "", cnn);
        updatekar.ExecuteNonQuery();
        cnn.Close();
    }

    [WebMethod]
    public void DeleteRiz(int rizidd, bool check)
    {
        if (check)
        {
            cnn.Open();
            var deleterizriz = new SqlCommand("DELETE FROM [dbo].[HKhoroojRizRiz] WHERE id =" + rizidd + " ", cnn);
            deleterizriz.ExecuteNonQuery();
            cnn.Close();
            return;
        }
        cnn.Open();
        var delete = new SqlCommand("delete HKhoroojRiz where id =" + rizidd + " ", cnn);
        delete.ExecuteNonQuery();
        cnn.Close();
    }

    [WebMethod]
    public string GetDarage()
    {
        cnn.Open();
        var list = new List<string[]>();
        var darage = new SqlCommand("SELECT [ID],[dar]FROM [dbo].[Darajeh]", cnn);
        var r = darage.ExecuteReader();
        while (r.Read())
        {
            list.Add(new[] { r["ID"].ToString(), r["dar"].ToString() });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public void UpdateDarage(int rizidd, int darr, bool check)
    {
        if (check)
        {
            cnn.Open();
            var upRizdarage = new SqlCommand("UPDATE [dbo].[HKhoroojRizRiz] SET [idd] = " + darr + " WHERE id = " + rizidd + " ", cnn);
            upRizdarage.ExecuteNonQuery();
            cnn.Close();
            return;
        }
        cnn.Open();
        var updarage = new SqlCommand("update HKhoroojRiz set idd = " + darr + " where id = " + rizidd + "", cnn);
        updarage.ExecuteNonQuery();
        cnn.Close();
    }

    [WebMethod]
    public string GetMrBannaOrderTables(int orderId)
    {
        var datetimeformat = DateTime.Now;
        var p = new PersianCalendar();
        var miladi = datetimeformat;
        datetimeformat = p.AddDays(miladi, -1);
        var date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
        cnn.Open();
        var list = new List<Order>();
        var sel = new SqlCommand("SELECT A.flid, A.kala, A.id, A.flow, A.item_id, A.service_id, A.box, A.brand, A.dar, A.count, A.tedad, B.countpor ,C.total " +
                                 " FROM(SELECT TOP(100) PERCENT fl.id AS flid, CASE WHEN bastebandi.dbo.order_details.item_id = 0 THEN bastebandi.dbo.Service.nam ELSE bastebandi.dbo.Item.nam END AS kala, bastebandi.dbo.order_details.id," +
                                 " CASE WHEN bastebandi.dbo.order_details.flower = -1 THEN N'سفید' WHEN bastebandi.dbo.order_details.flower = -2 THEN N'هتلی' ELSE fl.gol END AS flow, bastebandi.dbo.order_details.item_id, bastebandi.dbo.order_details.service_id, " +
                                 " bastebandi.dbo.order_details.box, bastebandi.dbo.order_details.brand, bastebandi.dbo.Darajeh.dar, bastebandi.dbo.order_details.count, CASE WHEN bastebandi.dbo.order_details.box = 0 THEN CAST(bastebandi.dbo.order_details.count AS nvarchar(5)) " +
                                 " + N'عدد' ELSE CAST(bastebandi.dbo.order_details.count AS nvarchar(5)) + N'کارتن' END AS tedad FROM bastebandi.dbo.order_details LEFT OUTER JOIN " +
                                 " (SELECT flower_depot.dbo.flower_entry.flower_name + ' / ' + flower_depot.dbo.flower_colors.flow_color + ' / ' + flower_depot.dbo.flower_colortypes.flow_colortype + ' / ' + flower_depot.dbo.flower_formats.flow_format" +
                                 "  AS gol, flower_depot.dbo.flower_entry.id FROM flower_depot.dbo.flower_entry INNER JOIN " +
                                 " flower_depot.dbo.flower_colors ON flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 " flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 " flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = flower_depot.dbo.flower_formats.flowformat_id) AS fl ON bastebandi.dbo.order_details.flower = fl.id INNER JOIN " +
                                 " bastebandi.dbo.Item ON bastebandi.dbo.order_details.item_id = bastebandi.dbo.Item.ID INNER JOIN bastebandi.dbo.Service ON bastebandi.dbo.order_details.service_id = bastebandi.dbo.Service.ID INNER JOIN " +
                                 " bastebandi.dbo.Darajeh ON bastebandi.dbo.order_details.brand = bastebandi.dbo.Darajeh.ID " +
                                 " WHERE(bastebandi.dbo.order_details.order_id =" + orderId + ") ORDER BY bastebandi.dbo.order_details.id DESC) AS A INNER JOIN(SELECT countpor, item_id " +
                                 " FROM(SELECT taghdis_amar.dbo.porcelain_storage.sort_count + taghdis_amar.dbo.porcelain_storage.decor_count AS countpor, order_details_7.item_id FROM taghdis_amar.dbo.porcelain_storage INNER JOIN " +
                                 " bastebandi.dbo.cItems ON taghdis_amar.dbo.porcelain_storage.item_id = bastebandi.dbo.cItems.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_7 ON order_details_7.item_id = bastebandi.dbo.cItems.khitem " +
                                 " WHERE(taghdis_amar.dbo.porcelain_storage.grade = 1) AND(order_details_7.brand = 1) AND(order_details_7.order_id = " + orderId + ") OR " +
                                 " (taghdis_amar.dbo.porcelain_storage.grade = 2) AND(order_details_7.brand = 1) AND(order_details_7.order_id= " + orderId + ") " +
                                 " UNION ALL SELECT porcelain_storage_5.sort_count + porcelain_storage_5.decor_count AS Expr1, order_details_6.item_id " +
                                 " FROM taghdis_amar.dbo.porcelain_storage AS porcelain_storage_5 INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems_5 ON porcelain_storage_5.item_id = cItems_5.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_6 ON order_details_6.item_id = cItems_5.khitem " +
                                 " WHERE(porcelain_storage_5.grade = 2) AND(order_details_6.brand = 2) AND(order_details_6.order_id = " + orderId + ") OR " +
                                 " (porcelain_storage_5.grade = 3) AND(order_details_6.brand = 2) AND(order_details_6.order_id = " + orderId + ") " +
                                 " UNION ALL SELECT porcelain_storage_4.sort_count + porcelain_storage_4.decor_count AS Expr1, order_details_5.item_id " +
                                 " FROM taghdis_amar.dbo.porcelain_storage AS porcelain_storage_4 INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems_4 ON porcelain_storage_4.item_id = cItems_4.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_5 ON order_details_5.item_id = cItems_4.khitem " +
                                 " WHERE(porcelain_storage_4.grade = 3) AND(order_details_5.brand = 3) AND(order_details_5.order_id =" + orderId + ") " +
                                 " UNION ALL SELECT 0 AS Expr1, item_id FROM bastebandi.dbo.order_details AS order_details_4 " +
                                 " WHERE(item_id NOT IN(SELECT item_id FROM(SELECT porcelain_storage_3.sort_count AS count, order_details_3.item_id " +
                                 " FROM taghdis_amar.dbo.porcelain_storage AS porcelain_storage_3 INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems_3 ON porcelain_storage_3.item_id = cItems_3.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_3 ON order_details_3.item_id = cItems_3.khitem " +
                                 " WHERE(porcelain_storage_3.grade = 1) AND(order_details_3.brand = 1) AND(order_details_3.order_id =" + orderId + ") OR " +
                                 " (porcelain_storage_3.grade = 2) AND(order_details_3.brand = 1) AND(order_details_3.order_id = " + orderId + ") " +
                                 " UNION ALL SELECT porcelain_storage_2.sort_count AS Expr1, order_details_2.item_id " +
                                 " FROM taghdis_amar.dbo.porcelain_storage AS porcelain_storage_2 INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems_2 ON porcelain_storage_2.item_id = cItems_2.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_2 ON order_details_2.item_id = cItems_2.khitem " +
                                 " WHERE(porcelain_storage_2.grade = 2) AND(order_details_2.brand = 2) AND(order_details_2.order_id =" + orderId + ") OR " +
                                 " (porcelain_storage_2.grade = 3) AND(order_details_2.brand = 2) AND(order_details_2.order_id =" + orderId + ") " +
                                 " UNION ALL SELECT porcelain_storage_1.sort_count AS Expr1, order_details_1.item_id " +
                                 " FROM taghdis_amar.dbo.porcelain_storage AS porcelain_storage_1 INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems_1 ON porcelain_storage_1.item_id = cItems_1.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details_1 ON order_details_1.item_id = cItems_1.khitem " +
                                 " WHERE(porcelain_storage_1.grade = 3) AND(order_details_1.brand = 3) AND(order_details_1.order_id =" + orderId + ")) AS i)) AND(order_id =" + orderId + ")) AS i) AS B ON " +
                                 " A.item_id = B.item_id inner join(select sum(Total) / 2 as total, order_details.item_id from(SELECT item_id, total + tot_recover as Total" +
                                 " FROM taghdis_amar.dbo.glaze1_total where tarikh = '" + date + "' union all " +
                                 " SELECT item_id, total + tot_recover as Total " +
                                 " FROM taghdis_amar.dbo.glaze2_total where tarikh = '" + date + "')i INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems ON i.item_id = cItems.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details ON order_details.item_id = cItems.bitem " +
                                 " WHERE order_details.order_id =" + orderId + " " +
                                 " group by order_details.item_id union all " +
                                 " select 0 as total, order_details.item_id " +
                                 " from bastebandi.dbo.order_details " +
                                 " where order_details.item_id not in (select order_details.item_id from(SELECT item_id " +
                                 " FROM taghdis_amar.dbo.glaze1_total " +
                                 " where tarikh = '" + date + "' union all SELECT item_id " +
                                 " FROM taghdis_amar.dbo.glaze2_total where tarikh = '" + date + "')i INNER JOIN " +
                                 " bastebandi.dbo.cItems AS cItems ON i.item_id = cItems.khitem INNER JOIN " +
                                 " bastebandi.dbo.order_details AS order_details ON order_details.item_id = cItems.bitem " +
                                 " WHERE order_details.order_id =" + orderId + " " +
                                 " group by order_details.item_id)) as C on A.item_id = C.item_id  " +
                                 " group by A.flid, A.kala, A.id, A.flow, A.item_id, A.service_id, A.box, A.brand, A.dar, A.count, A.tedad, B.countpor,C.total", cnn);

        var r = sel.ExecuteReader();
        while (r.Read())
        {
            list.Add(new Order()
            {
                RizId = Convert.ToInt32(r["id"]),
                Item = r["kala"].ToString(),
                Flower = r["flow"].ToString(),
                Tedad = r["tedad"].ToString(),
                ItemId = Convert.ToInt32(r["item_id"]),
                FlowId = Convert.ToInt32(r["flid"]),
                ServiceId = Convert.ToInt32(r["service_id"]),
                Box = Convert.ToBoolean(r["box"]),
                DarageId = Convert.ToInt32(r["brand"]),
                Darage = r["dar"].ToString(),
                Count = r["count"].ToString(),
                WhitePor = r["countpor"].ToString(),
                Total = r["total"].ToString()
            });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetOrderTables(int orderId)
    {
        cnn.Open();
        var list = new List<Order>();
        var orderTable = new SqlCommand("SELECT CASE WHEN order_details.item_id = 0 THEN dbo.Service.nam " +
                                        "ELSE dbo.Item.nam END AS kala, order_details.id,case when order_details.flower = -1 then N'سفید' " +
                                        "when order_details.flower = -2 then N'هتلی' else fl.gol end as flow, order_details.item_id, order_details.service_id" +
                                        ",order_details.box ,order_details.brand,Darajeh.dar,order_details.count, " +
                                        "CASE WHEN dbo.order_details.box = 0 THEN CAST(dbo.order_details.count as nvarchar(5)) + N'عدد' " +
                                        "ELSE CAST(dbo.order_details.count as nvarchar(5)) + N'کارتن' END AS tedad FROM dbo.order_details LEFT JOIN " +
                                        "(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                        "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                        "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                        "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                        "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                        "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = flower_depot.dbo.flower_formats.flowformat_id) as fl " +
                                        "ON dbo.order_details.flower = fl.id INNER JOIN dbo.Item ON dbo.order_details.item_id = dbo.Item.ID INNER JOIN dbo.Service " +
                                        "ON dbo.order_details.service_id = dbo.Service.ID inner join dbo.Darajeh on dbo.order_details.brand = dbo.Darajeh.ID" +
                                        " where order_id = " + orderId + " order by order_details.id desc", cnn);
        var r = orderTable.ExecuteReader();
        while (r.Read())
        {
            list.Add(new Order()
            {
                RizId = Convert.ToInt32(r["id"]),
                Item = r["kala"].ToString(),
                Flower = r["flow"].ToString(),
                Tedad = r["tedad"].ToString()
                ,
                ItemId = Convert.ToInt32(r["item_id"]),
                ServiceId = Convert.ToInt32(r["service_id"]),
                Box = Convert.ToBoolean(r["box"]),
                DarageId = Convert.ToInt32(r["brand"]),
                Darage = r["dar"].ToString(),
                Count = r["count"].ToString()
            });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public void SaveOrderDetails(OrderDetail od)
    {
        if (od.RizOrderId == 0)
        {
            cnn.Open();
            var fs = od.Service == 0 ? 0 : 1;
            var orderType = od.Service == 0 ? 0 : 1;
            var insertdetailes = new SqlCommand("INSERT INTO [dbo].[order_details]([order_id],[order_type]," +
                                                "[item_id],[service_id],[fs],[flower],[count],[box],[brand]) " +
                                                "VALUES (" + od.OrderId + " , " + orderType + " , " + od.Falleh + "," +
                                                "" + od.Service + " ," + fs + "," + od.Flower + "," + od.Tedad + "," + od.Type + "," + od.Darage + ")", cnn);
            insertdetailes.ExecuteNonQuery();
            cnn.Close();
        }
        else
        {
            cnn.Open();
            var fs = od.Service == 0 ? 0 : 1;
            var orderType = od.Service == 0 ? 0 : 1;
            var up = new SqlCommand("UPDATE [dbo].[order_details] " +
                                    "SET [order_type] = " + orderType + " " +
                                    ",[item_id] = " + od.Falleh + " " +
                                    ",[service_id] = " + od.Service + " " +
                                    ",[fs] = " + fs + " " +
                                    ",[brand] = " + od.Darage + " " +
                                    ",[flower] = " + od.Flower + " " +
                                    ",[count] = " + od.Tedad + " " +
                                    ",[box] = " + od.Type + " " +
                                    "WHERE id = " + od.RizOrderId + " ", cnn);
            up.ExecuteNonQuery();
            cnn.Close();
        }
    }

    [WebMethod]
    public void DeleteOrderDet(int odid)
    {
        cnn.Open();
        var delorder = new SqlCommand("delete from order_details where id = " + odid + " ", cnn);
        delorder.ExecuteNonQuery();
        cnn.Close();
    }

    [WebMethod]
    public string OrderDetailsTotal(int oid)
    {
        cnn.Open();
        var li = new List<OrderTotal>();
        var sel = new SqlCommand("select Item.nam,i.fs, case when i.flower = -1 then N'سفید' when i.flower = -2 then N'هتلی' else j.gol end as flow, sum(tedad) as tedad from( " +
                                 "(SELECT order_details.flower,order_details.fs, dbo.Item.ID as nam, dbo.Item.TDK * order_details.[count] as tedad FROM dbo.order_details " +
                                 "INNER JOIN dbo.Item ON dbo.order_details.item_id = dbo.Item.ID WHERE(dbo.order_details.order_id = " + oid + ") AND " +
                                 "(dbo.order_details.item_id <> 0) AND(dbo.Item.ser = 0) and order_details.box = 1) " +
                                 "union all(SELECT order_details.flower,order_details.fs, dbo.Item.ID as nam, order_details.[count] as tedad FROM dbo.order_details " +
                                 "INNER JOIN dbo.Item ON dbo.order_details.item_id = dbo.Item.ID WHERE(dbo.order_details.order_id = " + oid + ") AND " +
                                 "(dbo.order_details.item_id <> 0) AND(dbo.Item.ser = 0) and order_details.box = 0) " +
                                 "union all((SELECT order_details.flower,order_details.fs, dbo.RizSer.idI as nam, (dbo.RizSer.ted * dbo.Item.TDK) * order_details.[count] AS tedad " +
                                 "FROM dbo.RizSer INNER JOIN dbo.Item ON dbo.RizSer.idS = dbo.Item.idser INNER JOIN dbo.order_details ON " +
                                 "dbo.Item.ID = dbo.order_details.item_id WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.item_id <> 0) " +
                                 "AND(dbo.Item.ser = 1) AND(dbo.order_details.box = 1))) union all(SELECT dbo.order_details.flower,order_details.fs, dbo.RizSer.idI AS nam, " +
                                 "dbo.RizSer.ted* dbo.order_details.count AS tedad FROM dbo.order_details INNER JOIN " +
                                 "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS LEFT OUTER JOIN dbo.Item ON dbo.order_details.service_id = dbo.Item.idser " +
                                 "WHERE (dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) AND(dbo.order_details.item_id = 0) AND(dbo.Item.low30 IS NULL)) " +
                                 "union all(SELECT dbo.order_details.flower,order_details.fs, dbo.RizSer.idI AS nam, dbo.order_details.count* dbo.Item.TDK* dbo.RizSer.ted AS tedad " +
                                 "FROM dbo.order_details INNER JOIN dbo.Item ON dbo.order_details.service_id = dbo.Item.idser INNER JOIN " +
                                 "dbo.RizSer ON dbo.Item.idser = dbo.RizSer.idS WHERE (dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.box = 1) " +
                                 "AND(dbo.order_details.service_id <> 0)))i left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN  flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id) as j on i.flower = j.id INNER JOIN dbo.Item ON i.nam = dbo.Item.ID group by  i.flower,i.fs , j.gol, Item.nam", cnn);
        var r = sel.ExecuteReader();
        while (r.Read())
        {
            li.Add(new OrderTotal()
            {
                ItemName = r["nam"].ToString(),
                Flower = r["flow"].ToString(),
                Tedad = r["tedad"].ToString(),
                FallehService = Convert.ToBoolean(r["fs"])
            });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(li);
    }

    [WebMethod]
    public void SabtRizkala(RizKala obj)
    {
        cnn.Open();
        var ins = new SqlCommand("INSERT INTO [dbo].[HKhoroojRizRiz]([idkh],[idi],[ids],[idg],[idd],[idr],[Tedad])VALUES" +
                                 "(" + obj.IdKhorooj + "," + obj.Item + "," + obj.Service + "," + obj.Gol + "," + obj.Darage + "," + obj.Rang + "," + obj.Tedad + ")", cnn);
        ins.ExecuteNonQuery();
        cnn.Close();
    }

    [WebMethod]
    public string GetRizRizKala(int idkh)
    {
        cnn.Open();
        var list = new List<RizKala>();
        var sel = new SqlCommand("select id , kala + ' ' + gol + ' - ' + color as kala, darage ,idd, cast(Tedad as nvarchar) + N' عدد' as Tedad from" +
                                  "(SELECT case when HKhoroojRizRiz.idi = 0 " +
                                  "then Service.nam when HKhoroojRizRiz.ids = 0 then Item.nam end as kala , HKhoroojRizRiz.id , " +
                                  "dbo.Gol.nam AS gol, dbo.Darajeh.dar as darage, dbo.rang.colo as color, dbo.HKhoroojRizRiz.Tedad ,dbo.HKhoroojRizRiz.idd " +
                                  "FROM dbo.HKhoroojRizRiz INNER JOIN dbo.Item ON dbo.HKhoroojRizRiz.idi = dbo.Item.ID INNER JOIN " +
                                  "dbo.Service ON dbo.HKhoroojRizRiz.ids = dbo.Service.ID INNER JOIN dbo.Gol ON dbo.HKhoroojRizRiz.idg = dbo.Gol.ID INNER JOIN " +
                                  "dbo.Darajeh ON dbo.HKhoroojRizRiz.idd = dbo.Darajeh.ID INNER JOIN dbo.rang ON dbo.HKhoroojRizRiz.idr = " +
                                  "dbo.rang.ID  where HKhoroojRizRiz.idkh = " + idkh + ")i", cnn);
        var r = sel.ExecuteReader();
        while (r.Read())
        {
            list.Add(new RizKala()
            {
                Id = r["id"].ToString(),
                KalaName = r["kala"].ToString(),
                Darage = r["darage"].ToString(),
                Tedad = r["Tedad"].ToString(),
                DarageId = r["idd"].ToString()
            });
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string MojoodiGol(int oid)
    {
        cnn.Open();
        var arr = new List<string>();
        var flows = new SqlCommand("SELECT flower FROM bastebandi.dbo.order_details where order_id = " + oid + " group by flower", cnn);
        var r = flows.ExecuteReader();
        while (r.Read())
        {
            arr.Add(r["flower"].ToString());
        }
        cnn.Close();
        var gollist = new List<Flowers>();
        foreach (var golid in arr)
        {
            calculateAmraGol(Convert.ToInt32(golid));
            var golitem = new Flowers();
            cnn.Open();
            var selItem = new SqlCommand("SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                         "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                         "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                         "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                         "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                         "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                         "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                         "flower_depot.dbo.flower_formats.flowformat_id where flower_entry.id = " + golid + " ", cnn);
            var rgol = selItem.ExecuteReader();
            while (rgol.Read())
            {
                golitem.FlowName = rgol["gol"].ToString();
            }
            cnn.Close();
            cnn.Open();
            var selItems = new SqlCommand("SELECT it.item_name ,flower_depot.dbo.cutted_and_remain.total FROM flower_depot.dbo.cutted_and_remain " +
                                          "inner join flower_depot.dbo.items as it on flower_depot.dbo.cutted_and_remain.item_name = it.item_id " +
                                          "where flower_depot.dbo.cutted_and_remain.flower_id = " + golid + " order by it.item_name ", cnn);
            var rItem = selItems.ExecuteReader();
            while (rItem.Read())
            {
                golitem.Item.Add(rItem["item_name"].ToString());
                golitem.Tedad.Add(rItem["total"].ToString());
            }
            cnn.Close();
            gollist.Add(golitem);
        }
        cnn.Close();
        return new JavaScriptSerializer().Serialize(gollist);
    }

    private void calculateAmraGol(int golId)
    {
        var rnd = new Random();
        var uniqId = rnd.Next(100000);
        con.Open();
        var createTemp = new SqlCommand("create table #" + uniqId + " (item_name int,arrange int,total int)", con);
        createTemp.ExecuteNonQuery();
        var insertFromItems = new SqlCommand("insert into #" + uniqId + " (item_name,arrange,total) " +
                                             "(SELECT dbo.flower_arrange_items.item_name,flower_forms_entry.arrange_type , " +
                                             "dbo.flower_arrange_items.item_insheet_count * dbo.flower_forms_entry.sheetcount AS total " +
                                             "FROM dbo.flower_arrange_items INNER JOIN " +
                                             "dbo.flower_forms_entry ON " +
                                             "dbo.flower_arrange_items.flower_id = dbo.flower_forms_entry.flower_id " +
                                             "AND dbo.flower_arrange_items.form_id = dbo.flower_forms_entry.id " +
                                             "where flower_arrange_items.flower_id = " + golId + ") ", con);
        insertFromItems.ExecuteNonQuery();
        var rc = new SqlCommand("select count(flower_id) from half_cut where flower_id = " + golId + "", con);
        var rowsCount = Convert.ToInt32(rc.ExecuteScalar());
        if (rowsCount == 0)
        {
            goto calculate;
        }
        for (var i = 0; i <= 20; i++)
        {
            var insertItems =
                new SqlCommand(
                    "insert into #" + uniqId + " (item_name,arrange,total) " +
                    "SELECT dbo.half_cut.item" + i + ", dbo.flower_forms_entry.arrange_type," +
                    " dbo.half_cut.count" + i + " * dbo.half_cut.sheet_count AS itemCount " +
                    "FROM dbo.half_cut INNER JOIN dbo.flower_forms_entry ON dbo.half_cut.form_id = dbo.flower_forms_entry.id " +
                    "WHERE(dbo.half_cut.flower_id = " + golId + ")", con);
            insertItems.ExecuteNonQuery();

        }
        var commandd = new SqlCommand("delete from #" + uniqId + " where item_name = 0", con);
        commandd.ExecuteNonQuery();

    calculate:
        var updateOrinsert = new SqlCommand("update cutted_and_remain set falleh = j.falleh, service = j.service " +
                                            "from(SELECT  item_name, [1] as [service], [2] as [falleh] from " +
                                            "(select item_name, arrange, total from #" + uniqId + ")i " +
                                            "pivot(sum(total) for arrange in ([1],[2])) as p)j " +
                                            "where flower_id = " + golId + " and(j.item_name = cutted_and_remain.item_name) " +
                                            " " +
                                            "insert into cutted_and_remain(flower_id, item_name, service, falleh) " +
                                            "SELECT " + golId +
                                            ", item_name , [1] as [service], [2] as [falleh] " +
                                            "from (select item_name, arrange , total from #" + uniqId + ")i " +
                                            "pivot(sum(total) for arrange in ([1],[2])) as p " +
                                            "where item_name not in (select item_name from cutted_and_remain where flower_id =" + golId + ")", con);
        updateOrinsert.ExecuteNonQuery();
        var command = new SqlCommand("update cutted_and_remain set falleh = 0 where falleh is null and flower_id = " + golId + " " +
                                     "update cutted_and_remain set service = 0 where service is null and flower_id = " + golId + " " +
                                     "update cutted_and_remain set total = 0 where total is null and flower_id = " + golId + " " +
                                     "update cutted_and_remain set total = falleh + service + cutted  where flower_id = " + golId + " ", con);
        command.ExecuteNonQuery();
        con.Close();
    }

    [WebMethod]
    public string MojoodiSefaresh(int oid)
    {
        cnn.Open();
        var mojoodiFalleAndService = new List<OrderTotal>();
        var mojoodiFalle = new List<OrderTotal>();
        var mojoodiSefaresh = new SqlCommand("/****** Script for falle and service in basdepo  ******/ " +
                                            "" +
                                            "(select  Item.nam, fl.gol, j.Tedad from(select idi as item, idg as gol, " +
                                            "Tedad from basdepo where idi in " +
                                            "(select item from((SELECT item_id as item, flower FROM order_details " +
                                            "where order_id = " + oid + " and order_details.item_id <> 0) " +
                                            "union all(SELECT dbo.RizSer.idI as item, dbo.order_details.flower " +
                                            "FROM dbo.order_details INNER JOIN " +
                                            "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS " +
                                            "WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) " +
                                            "GROUP BY dbo.order_details.flower, dbo.RizSer.idI))i " +
                                            "group by i.item, i.flower) and idg in " +
                                            "(select flower from((SELECT item_id as item, flower FROM order_details " +
                                            "where order_id = " + oid + " and order_details.item_id <> 0) " +
                                            "union all(SELECT dbo.RizSer.idI as item, dbo.order_details.flower " +
                                            "FROM dbo.order_details INNER JOIN " +
                                            "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS " +
                                            "WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) " +
                                            "GROUP BY dbo.order_details.flower, dbo.RizSer.idI))i " +
                                            "group by i.item , i.flower))j left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                            "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                            "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                            "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                            "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                            "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                            "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                            "flower_depot.dbo.flower_formats.flowformat_id) as fl on j.gol = fl.id " +
                                            "inner join Item on j.item = Item.ID)union all " +
                                            "(select Service.nam , fl.gol , j.Tedad from " +
                                            "(select idi, idg, Tedad from basdepo where ids in " +
                                            "(select service_id from order_details " +
                                            "where order_id = " + oid + " and service_id <> 0 group by service_id, flower) " +
                                            "and idg in (select flower from order_details " +
                                            "where order_id = " + oid + " and service_id<> 0 group by service_id, flower))j " +
                                            "left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                            "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                            "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                            "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                            "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                            "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                            "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                            "flower_depot.dbo.flower_formats.flowformat_id) as fl on j.idg = fl.id " +
                                            "inner join Service on j.idi = Service.ID) " +
                                            "" +
                                            "" +
                                            "/****** Script for falle in depo  ******/ " +
                                            "" +
                                            "select Item.nam, fl.gol, j.tedad from " +
                                            "(select item, gol , tedad from depo where item in " +
                                            "(select item from((SELECT item_id as item, flower FROM order_details " +
                                            "where order_id = " + oid + " and order_details.item_id <> 0) " +
                                            "union all(SELECT dbo.RizSer.idI  as item,dbo.order_details.flower " +
                                            "FROM dbo.order_details INNER JOIN " +
                                            "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS " +
                                            "WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) " +
                                            "GROUP BY dbo.order_details.flower, dbo.RizSer.idI))i " +
                                            "group by i.item , i.flower) and gol in " +
                                            "(select flower from((SELECT item_id as item, flower FROM order_details " +
                                            "where order_id = " + oid + " and order_details.item_id <> 0) " +
                                            "union all(SELECT dbo.RizSer.idI  as item,dbo.order_details.flower " +
                                            "FROM dbo.order_details INNER JOIN " +
                                            "dbo.RizSer ON dbo.order_details.service_id = dbo.RizSer.idS " +
                                            "WHERE(dbo.order_details.order_id = " + oid + ") AND(dbo.order_details.service_id <> 0) " +
                                            "GROUP BY dbo.order_details.flower, dbo.RizSer.idI))i " +
                                            "group by i.item , i.flower))j left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                            "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                            "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                            "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                            "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                            "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                            "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                            "flower_depot.dbo.flower_formats.flowformat_id) as fl on j.gol = fl.id " +
                                            "inner join Item on j.item = Item.ID ", cnn);
        var r = mojoodiSefaresh.ExecuteReader();
        while (r.Read())
        {
            mojoodiFalleAndService.Add(new OrderTotal()
            {
                ItemName = r["nam"].ToString(),
                Flower = r["gol"].ToString(),
                Tedad = r["Tedad"].ToString()
            });
        }
        r.NextResult();
        while (r.Read())
        {
            mojoodiFalle.Add(new OrderTotal()
            {
                ItemName = r["nam"].ToString(),
                Flower = r["gol"].ToString(),
                Tedad = r["tedad"].ToString()
            });
        }
        var obj = new
        {
            MojoodiFalleh = mojoodiFalle,
            MojoodiFS = mojoodiFalleAndService
        };
        cnn.Close();
        return new JavaScriptSerializer().Serialize(obj);
    }
    public class RizKala
    {
        public string Id { get; set; }
        public string IdKhorooj { get; set; }
        public string KalaName { get; set; }
        public string Gol { get; set; }
        public string Item { get; set; }
        public string Service { get; set; }
        public string Darage { get; set; }
        public string DarageId { get; set; }
        public string Rang { get; set; }
        public string Tedad { get; set; }
    }
    public class OrderTotal
    {
        public string ItemName { get; set; }
        public string Flower { get; set; }
        public string Tedad { get; set; }
        public bool FallehService { get; set; }
    }
    public class Order
    {
        public int RizId { get; set; }
        public string Item { get; set; }
        public int ItemId { get; set; }
        public int ServiceId { get; set; }
        public string Flower { get; set; }
        public int FlowId { get; set; }
        public string Tedad { get; set; }
        public string Count { get; set; }
        public bool Box { get; set; }
        public int DarageId { get; set; }
        public string Darage { get; set; }
        public string WhitePor { get; set; }
        public string Total { get; set; }


    }
    public class OrderDetail
    {
        public int RizOrderId { get; set; }
        public int OrderId { get; set; }
        public int Flower { get; set; }
        public int Falleh { get; set; }
        public int Service { get; set; }
        public int Tedad { get; set; }
        public int Type { get; set; }
        public int Darage { get; set; }
    }
    public class Kala
    {
        public int Hid { get; set; }
        public int ItemId { get; set; }
        public int ServiceId { get; set; }
        public int Gol { get; set; }
        public int Rang { get; set; }
        public int Darage { get; set; }
        public int Karton { get; set; }
        public bool Abgoriz { get; set; }
        public bool AntiBacterial { get; set; }
    }

    public class Flowers
    {
        public string FlowName { get; set; }
        public List<string> Item { get; set; }
        public List<string> Tedad { get; set; }

        public Flowers()
        {
            Item = new List<string>();
            Tedad = new List<string>();
        }
    }
}



