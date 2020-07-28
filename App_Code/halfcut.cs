using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for halfcut
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class halfcut : System.Web.Services.WebService
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);

    [WebMethod]
    public string GetFormInfo(int flowerId, int formId)
    {
        var form = new Forms();
        var itemslist = new List<FormItems>();
        var formHistory = new List<FormsHistory>();
        var listHalfCutItems = new List<HalfCutItems>();
        con.Open();
        var cmd = new SqlCommand("SELECT dbo.flower_forms_entry.form_number, " +
                                                "dbo.arrange_type.arrange_type as arrangetype, " +
                                                "dbo.flower_dimensions.flow_dimension as dimension, " +
                                                "dbo.flower_forms_entry.sheetcount as sheetcount, " +
                                                "dbo.flower_forms_entry.last_enter_date as last_enter_date, " +
                                                "dbo.flower_forms_entry.mark_type as mark," +
                                                "dbo.flower_forms_entry.comment as comment," +
                                                "dbo.flower_forms_entry.flower_id," +
                                                "dbo.flower_forms_entry.id " +
                                                "FROM dbo.flower_forms_entry INNER JOIN " +
                                                "dbo.arrange_type ON dbo.flower_forms_entry.arrange_type = dbo.arrange_type.arrange_id INNER JOIN " +
                                                "dbo.flower_dimensions ON dbo.flower_forms_entry.dimension = dbo.flower_dimensions.dimension_id " +
                                                " where (id = " + formId + ") ", con);
        var rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            form.ArrangeType = rd["arrangetype"].ToString();
            form.Dimension = rd["dimension"].ToString();
            form.Count = Convert.ToInt32(rd["sheetcount"]);
            form.Mark = rd["mark"].ToString();
            form.Comment = rd["comment"].ToString();
            form.EnterDate = rd["last_enter_date"].ToString();
        }
        con.Close();
        con.Open();
        cmd = new SqlCommand("SELECT dbo.items.item_name, dbo.flower_arrange_items.item_insheet_count," +
                                 "dbo.flower_arrange_items.lent_of_item, dbo.items.item_id " +
                                 "FROM dbo.flower_arrange_items INNER JOIN " +
                                 "dbo.items ON dbo.flower_arrange_items.item_name = dbo.items.item_id " +
                                 "WHERE(dbo.flower_arrange_items.form_id = " + formId + ") " +
                                 "order by items.item_name", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            itemslist.Add(new FormItems()
            {
                Id = Convert.ToInt32(rd["item_id"]),
                Name = rd["item_name"].ToString(),
                ItemInSheet = rd["item_insheet_count"] != DBNull.Value ? Convert.ToDecimal(rd["item_insheet_count"]) : 0,
                LentInSheet = rd["lent_of_item"] != DBNull.Value ? Convert.ToDecimal(rd["lent_of_item"]) : 0,
            });
        }
        form.FormItemses.AddRange(itemslist);
        con.Close();
        con.Open();
        cmd = new SqlCommand("select chng , time from [hcRecords]" +
                             " where flid = " + flowerId + " and foid = " + formId + " order by id desc ", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            formHistory.Add(new FormsHistory()
            {
                History = rd["chng"].ToString(),
                DateTime = rd["time"].ToString()
            });
        }
        form.FormsHistories.AddRange(formHistory);
        con.Close();
        con.Open();
        var halfCutIdList = new List<HalfCutItems>();
        cmd = new SqlCommand("SELECT hid, tedad FROM [dbo].[new_halfcutRiz] inner join " +
                             "new_halfcut on new_halfcutRiz.hid = new_halfcut.id " +
                             "where new_halfcut.flowid = " + flowerId + " and formid = " + formId + " group by hid ,tedad", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            halfCutIdList.Add(new HalfCutItems()
            {
                HalfCutId = Convert.ToInt32(rd["hid"]),
                Tedad = Convert.ToInt32(rd["tedad"])
            });
        }
        con.Close();
        foreach (var hid in halfCutIdList)
        {
            var halfCutItems = new HalfCutItems { HalfCutId = hid.HalfCutId, Tedad = hid.Tedad };
            con.Open();
            cmd = new SqlCommand("select items.item_name, item, count from new_halfcutRiz " +
                                 "inner join items on new_halfcutRiz.item = items.item_id where hid = " + hid.HalfCutId + " order by items.item_name", con);
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                halfCutItems.FormItemses.Add(new FormItems()
                {
                    Id = Convert.ToInt32(rd["item"]),
                    Name = rd["item_name"].ToString(),
                    ItemInSheet = Convert.ToDecimal(rd["count"])
                });
            }
            listHalfCutItems.Add(halfCutItems);
            con.Close();
        }
        form.HalfCutItemses.AddRange(listHalfCutItems);
        con.Close();
        return new JavaScriptSerializer().Serialize(form);
    }

    [WebMethod]
    public string GetUnavailableHalfcutItem(int halfCutId, int formId)
    {
        con.Open();
        var uh = new List<UnavailableHalfCuts>();
        var cmd = new SqlCommand("select items.item_id, items.item_name , j.count from " +
                                 "(select item, cast(flower_arrange_items.item_insheet_count - count as nvarchar) as count " +
                                 "from new_halfcutRiz cross join flower_Arrange_items " +
                                 "where hid = " + halfCutId + " and flower_arrange_items.form_id = " + formId + " " +
                                 "and flower_arrange_items.item_name = new_halfcutRiz.item and " +
                                 "(flower_arrange_items.item_insheet_count - count) <> 0 " +
                                 "union all select item_name as item, 'کامل' as count from flower_arrange_items " +
                                 "where form_id = " + formId + " and flower_arrange_items.item_name " +
                                 "not in (select item from new_halfcutRiz where hid = " + halfCutId + "))j " +
                                 "inner join items on j.item = items.item_id order by item_name", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            uh.Add(new UnavailableHalfCuts()
            {
                ItemId = Convert.ToInt32(rd["item_id"]),
                ItemName = rd["item_name"].ToString(),
                Count = rd["count"].ToString()
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(uh);
    }

    [WebMethod]
    public void SabtHalfCut(HalfCutItems data)
    {
        con.Open();
        var halfcutId = 0;
        var cmd = new SqlCommand();
        var history = "نیم برش به تعداد " + data.Tedad + " برگ دارای ";
        if (!data.OldGol)
        {
            cmd = new SqlCommand("update flower_forms_entry set sheetcount = sheetcount - " + data.Tedad + " " +
                                     "where id = " + data.FormId + " ", con);
            cmd.ExecuteNonQuery();
        };
        if (checkDuplicateHalfCut(data))
        {
            return;
        }
        con.Open();
        cmd = new SqlCommand("insert into new_halfcut ([flowid],[formid],[tedad])" +
                                 "values(" + data.FlowerId + " , " + data.FormId + ", " + data.Tedad + ") " +
                                 "SELECT CAST(scope_identity() AS int)", con);
        halfcutId = Convert.ToInt32(cmd.ExecuteScalar());
        foreach (var item in data.FormItemses)
        {
            cmd = new SqlCommand("insert into new_halfcutRiz ([hid],[item],[count])" +
                                 "values(" + halfcutId + ", " + item.Id + " , " + item.ItemInSheet + ")", con);
            cmd.ExecuteNonQuery();
            history += " " + item.Name + " " + "(" + item.ItemInSheet + ") ";
        }
        history += " ایجاد شد ";
        cmd = new SqlCommand("insert into hcRecords (flid,foid,chng,time)values" +
                             "(" + data.FlowerId + " , " + data.FormId + " , '" + history + "' , '" + GetShamsiTimeAndDate() + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    private bool checkDuplicateHalfCut(HalfCutItems items)
    {
        con.Close();
        con.Open();
        var halfCutIdList = new List<int>();
        var cmd = new SqlCommand("select id from new_halfcut where formid = " + items.FormId + " ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            halfCutIdList.Add(Convert.ToInt32(rd["id"]));
        }
        con.Close();
        con.Open();
        var random = new Random().Next(100000);
        cmd = new SqlCommand("create table #" + random + " (item decimal, count numeric(4, 1))", con);
        cmd.ExecuteNonQuery();
        foreach (var i in items.FormItemses)
        {
            cmd = new SqlCommand("insert into #" + random + " (item , count)values(" + i.Id + " , " + i.ItemInSheet + ") ", con);
            cmd.ExecuteNonQuery();
        }
        foreach (var halfCutid in halfCutIdList)
        {
            cmd = new SqlCommand("select count(*) from((select item, count from #" + random + " except " +
                                 "SELECT [item],[count]FROM [dbo].[new_halfcutRiz] where hid = " + halfCutid + ") " +
                                 "union all(SELECT[item],[count]FROM[dbo].[new_halfcutRiz] where " +
                                 "hid = " + halfCutid + " except select item, count from #" + random + "))j", con);
            if (Convert.ToInt32(cmd.ExecuteScalar()) == 0)
            {
                cmd = new SqlCommand("UPDATE new_halfcut SET tedad = tedad + " + items.Tedad + " where id = " + halfCutid + " ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                return true;
            }
        }
        con.Close();
        return false;
    }

    [WebMethod]
    public void DeleteHalfCut(int halfCutId, int flowerId, int formId)
    {
        con.Open();
        var history = "";
        var cmd = new SqlCommand("select tedad from new_halfcut where id = " + halfCutId + " ", con);
        history += " نیم برش به تعداد " + cmd.ExecuteScalar() + " برگ دارای ";
        cmd = new SqlCommand("select items.item_name , count from new_halfcutRiz " +
                             "inner join items on new_halfcutRiz.item = items.item_id " +
                             " where hid = " + halfCutId + " ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            history += " " + rd["item_name"] + " (" + rd["count"] + ") ";
        }
        history += " حذف شد ";
        con.Close();
        con.Open();
        cmd = new SqlCommand("insert into hcRecords (flid,foid,chng,time)values" +
                             "(" + flowerId + " , " + formId + " , '" + history + "' , '" + GetShamsiTimeAndDate() + "')", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("delete from new_halfcut where id = " + halfCutId + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("delete from new_halfcutRiz where hid = " + halfCutId + " ", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    [WebMethod]
    public string GetHalfCutItems(int halfCutId)
    {
        con.Open();
        var formItems = new List<FormItems>();
        var cmd = new SqlCommand("select items.item_name, item , count from new_halfcutRiz " +
                                 "inner join items on new_halfcutRiz.item = items.item_id where hid = " + halfCutId + " order by items.item_name", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            formItems.Add(new FormItems()
            {
                Id = Convert.ToInt32(rd["item"]),
                Name = rd["item_name"].ToString(),
                ItemInSheet = Convert.ToDecimal(rd["count"])
            });
        }
        con.Close();
        return new JavaScriptSerializer().Serialize(formItems);
    }

    [WebMethod]
    public void EditHalfCut(HalfCutItems items)
    {
        con.Open();
        if (items.FormItemses.Count == 0)
        {
            UpdateHalfCutBarg(items.Tedad, items.HalfCutId);
            con.Open();
            string h = " نیم برش به تعداد " + items.Tedad + " برگ اصلاح شد ";
            var cmd = new SqlCommand("insert into hcRecords (flid,foid,chng,time)values" +
                                            "(" + items.FlowerId + " , " + items.FormId + " , " +
                                            " '" + h + "' " +
                                            ", '" + GetShamsiTimeAndDate() + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            return;
        }
        if (items.Tedad == items.TedadMojood)
        {
            if (!checkDuplicateHalfCut(items)) // if similar halfcut doesn't exists
            {
                UpdateHalfCut(items);
            }
            else
            {
                UpdateHalfCutBarg(items.Tedad, items.HalfCutId);
            }
        }
        else
        {
            if (checkDuplicateHalfCut(items))
            {
                UpdateHalfCutBarg(items.Tedad, items.HalfCutId);
            }
            else
            {
                InsertHalfCut(items);
            }
        }
        con.Close();
        string history = " نیم برش به تعداد " + items.Tedad + " برگ دارای ";
        foreach (var i in items.FormItemses)
        {
            history += " " + i.Name + " (" + i.ItemInSheet + ") ";
        }
        history += " ویرایش شد ";
        con.Open();
        var historyCmd = new SqlCommand("insert into hcRecords (flid,foid,chng,time)values" +
                             "(" + items.FlowerId + " , " + items.FormId + " , '" + history + "' , '" + GetShamsiTimeAndDate() + "')", con);
        historyCmd.ExecuteNonQuery();
        con.Close();
    }

    public void UpdateHalfCut(HalfCutItems items)
    {
        con.Close();
        con.Open();
        var random = new Random().Next(100000);
        var cmd = new SqlCommand("create table #" + random + " (item int , count numeric(4,1))", con);
        cmd.ExecuteNonQuery();
        foreach (var item in items.FormItemses)
        {
            cmd = new SqlCommand("insert into #" + random + " (item , count)values(" + item.Id + " , " + item.ItemInSheet + ") ", con);
            cmd.ExecuteNonQuery();
        }
        cmd = new SqlCommand("update new_halfcutRiz set count = i.count " +
                             "from(select * from #" + random + ")i where i.item = " +
                             "new_halfcutRiz.item and new_halfcutRiz.hid = " + items.HalfCutId + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("delete from new_halfcutRiz where hid = " + items.HalfCutId + " " +
                             "and item not in (select item from #" + random + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void InsertHalfCut(HalfCutItems items)
    {
        con.Close();
        con.Open();
        var cmd = new SqlCommand("insert into new_halfcut ([flowid],[formid],[tedad])" +
                                 "values(" + items.FlowerId + " , " + items.FormId + ", " + items.Tedad + ") " +
                                 "SELECT CAST(scope_identity() AS int)", con);
        var halfcutId = Convert.ToInt32(cmd.ExecuteScalar());
        foreach (var item in items.FormItemses)
        {
            cmd = new SqlCommand("insert into new_halfcutRiz ([hid],[item],[count])" +
                                 "values(" + halfcutId + ", " + item.Id + " , " + item.ItemInSheet + ")", con);
            cmd.ExecuteNonQuery();
        }
        UpdateHalfCutBarg(items.Tedad, items.HalfCutId);
        con.Close();
    }

    public void UpdateHalfCutBarg(int tedad, int halfCutId)
    {
        con.Close();
        con.Open();
        var cmd = new SqlCommand("update new_halfcut set tedad = tedad - " + tedad + " where id = " + halfCutId + " ", con);
        cmd.ExecuteNonQuery();
        DeleteZeroHalfCuts(halfCutId);
        con.Close();
    }

    [WebMethod]
    public void ChangeBoreshKamel(int flowerId, int formId, int tedad, string formName, bool increase)
    {
        con.Open();
        var cmd = new SqlCommand("INSERT INTO [flower_depot].[dbo].[arrange_sheet_count] " +
                                                  "([flower_id]" +
                                                  ",[arrange_id] " +
                                                  ",[form_number] " +
                                                  ",[change_size] " +
                                                  ",[date_and_time]) " +
                                                  "VALUES " +
                                                  "(" + flowerId + " " +
                                                  "," + formId + " " +
                                                  ",'" + formName + "' " +
                                                  ", '" + tedad + " " + (increase ? "+" : "-") + "' " +
                                                  ",'" + GetShamsiTimeAndDate() + "')", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_forms_entry] " +
               "SET [sheetcount] = [sheetcount] " + (increase ? "+" : "-") + " " + tedad +
               " WHERE id = " + formId + " ", con);
        cmd.ExecuteNonQuery();
    }

    public string GetShamsiTimeAndDate()
    {
        var pc = new PersianCalendar();
        var PDate = pc.GetYear(DateTime.Now) + "/" + pc.GetMonth(DateTime.Now) + "/" + pc.GetDayOfMonth(DateTime.Now);
        return DateTime.Now.ToString("h:mm") + " - " + PDate;
    }

    [WebMethod]
    public void EditTedadHalfCut(int tedad, int hid)
    {
        con.Open();
        var cmd = new SqlCommand("update new_halfcut set tedad = tedad + " + tedad + " where id = " + hid + " ", con);
        cmd.ExecuteNonQuery();
        DeleteZeroHalfCuts(hid);
        con.Close();
    }

    public void DeleteZeroHalfCuts(int hid)
    {
        var cmd = new SqlCommand("DELETE nhr FROM new_halfcutRiz nhr INNER JOIN " +
                             "new_halfcut nh ON nhr.hid = nh.id WHERE nh.id = " + hid + " and nh.tedad = 0", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM new_halfcut WHERE id = " + hid + " and tedad = 0", con);
        cmd.ExecuteNonQuery();
    }
}

public class Forms
{
    public int Id { get; set; }
    public int FormId { get; set; }
    public string FormName { get; set; }
    public int ArrangeTypeId { get; set; }
    public string ArrangeType { get; set; }
    public int DimensionId { get; set; }
    public string Dimension { get; set; }
    public int Count { get; set; }
    public string Mark { get; set; }
    public string EnterDate { get; set; }
    public string Comment { get; set; }
    public List<FormItems> FormItemses { get; set; }
    public List<FormsHistory> FormsHistories { get; set; }
    public List<HalfCutItems> HalfCutItemses { get; set; }

    public Forms()
    {
        FormItemses = new List<FormItems>();
        FormsHistories = new List<FormsHistory>();
        HalfCutItemses = new List<HalfCutItems>();
    }
}

public class FormItems
{
    public int Id { get; set; }
    public string Name { get; set; }
    public decimal ItemInSheet { get; set; }
    public decimal LentInSheet { get; set; }
}

public class FormsHistory
{
    public string History { get; set; }
    public string DateTime { get; set; }
}

public class HalfCutItems
{
    public int HalfCutId { get; set; }
    public int Tedad { get; set; }
    public int TedadMojood { get; set; }
    public int FlowerId { get; set; }
    public int FormId { get; set; }
    public bool OldGol { get; set; }
    public List<FormItems> FormItemses { get; set; }

    public HalfCutItems()
    {
        FormItemses = new List<FormItems>();
    }
}

public class UnavailableHalfCuts
{
    public int ItemId { get; set; }
    public string ItemName { get; set; }
    public string Count { get; set; }
}
