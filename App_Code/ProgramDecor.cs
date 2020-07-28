using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for ProgramDecor
/// </summary>
/// [WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class ProgramDecor: System.Web.Services.WebService
{
    SqlConnection _cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);

    [WebMethod]
    public string GetGrade(int glaze, int form, string sdate, string edate)
    {
        string glazename = "";
        SqlCommand cmdglaze;
        _cnn.Open();
        switch (glaze)
        {
            case 1:
                if (form == 0)
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.gradeB) AS B, SUM(dbo.grade_faz1.gradeC) AS C " +
                        " FROM dbo.grade_faz1 INNER JOIN " +
                        " dbo.item ON dbo.grade_faz1.item_id = dbo.item.id " +
                        " WHERE(dbo.grade_faz1.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " GROUP BY dbo.item.item_name" +
                        " order by item.item_name ", _cnn);
                }
                else
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(dbo.grade_faz1.gradea) AS A, SUM(dbo.grade_faz1.gradeB) AS B, SUM(dbo.grade_faz1.gradeC) AS C " +
                        " FROM dbo.grade_faz1 INNER JOIN " +
                        " dbo.item ON dbo.grade_faz1.item_id = dbo.item.id " +
                        " WHERE(dbo.grade_faz1.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') and dbo.item.kind=" + form + " " +
                        " GROUP BY dbo.item.item_name" +
                        " order by item.item_name ", _cnn);
                }
                break;
            case 2:
                if (form == 0)
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.gradeB) AS B, SUM(dbo.grade_faz2.gradeC) AS C " +
                        " FROM dbo.grade_faz2 INNER JOIN " +
                        " dbo.item ON dbo.grade_faz2.item_id = dbo.item.id " +
                        " WHERE(dbo.grade_faz2.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " GROUP BY dbo.item.item_name" +
                        " order by item.item_name ", _cnn);
                }
                else
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(dbo.grade_faz2.gradea) AS A, SUM(dbo.grade_faz2.gradeB) AS B, SUM(dbo.grade_faz2.gradeC) AS C " +
                        " FROM dbo.grade_faz2 INNER JOIN " +
                        " dbo.item ON dbo.grade_faz2.item_id = dbo.item.id " +
                        " WHERE(dbo.grade_faz2.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') and dbo.item.kind=" + form + " " +
                        " GROUP BY dbo.item.item_name" +
                        " order by item.item_name ", _cnn);
                }
                break;
            default:
                if (form == 0)
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(t.A) AS A,Sum(t.B) as B,Sum(t.C) as C FROM( " +
                        " SELECT item_id, SUM(gradea) AS A, SUM(gradeB) AS B, SUM(gradeC) AS C " +
                        " FROM dbo.grade_faz1 WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " group by item_id " +
                        " union all " +
                        " SELECT         item_id, SUM(gradea) AS A, SUM(gradeB) AS B, SUM(gradeC) AS C " +
                        " FROM            dbo.grade_faz2 " +
                        " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " group by item_id " +
                        " ) AS t INNER JOIN " +
                        " dbo.item ON t.item_id = dbo.item.id " +
                        " GROUP BY dbo.item.item_name", _cnn);
                }
                else
                {
                    cmdglaze = new SqlCommand(
                        " SELECT dbo.item.item_name, SUM(t.A) AS A,Sum(t.B) as B,Sum(t.C) as C FROM( " +
                        " SELECT item_id, SUM(gradea) AS A, SUM(gradeB) AS B, SUM(gradeC) AS C " +
                        " FROM dbo.grade_faz1 WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " group by item_id " +
                        " union all " +
                        " SELECT         item_id, SUM(gradea) AS A, SUM(gradeB) AS B, SUM(gradeC) AS C " +
                        " FROM            dbo.grade_faz2 " +
                        " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " group by item_id " +
                        " ) AS t INNER JOIN " +
                        " dbo.item ON t.item_id = dbo.item.id " +
                        " where dbo.item.kind=" + form + " " +
                        " GROUP BY dbo.item.item_name,dbo.item.kind", _cnn);
                }
                break;


        }



        var rd = cmdglaze.ExecuteReader();
        var list = new List<GradeItem>();
        while (rd.Read())
        {
            list.Add(new GradeItem()
            {
                A = rd["A"].ToString(),
                B = rd["B"].ToString(),
                C = rd["C"].ToString(),
                ItemName = rd["item_name"].ToString()

            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }

    [WebMethod]
    public string GetDepoGrade(int form)
    {
        _cnn.Open();
        SqlCommand cmddepo;
        if (form == 0)
        {
            cmddepo = new SqlCommand(
                " WITH porcelain AS  (SELECT dbo.item.item_name, porcelain_storage.item_id, SUM(dbo.porcelain_storage.sort_count) AS sort_count, " +
                " dbo.porcelain_storage.grade FROM dbo.porcelain_storage INNER JOIN dbo.item ON dbo.porcelain_storage.item_id = dbo.item.id  GROUP BY " +
                " dbo.item.item_name, dbo.porcelain_storage.grade, dbo.porcelain_storage.item_id union all " +
                " select item.item_name, item.id, null, null from item where id not in (select item_id from dbo.porcelain_storage) " +
                " GROUP BY dbo.item.item_name, item.id)" +
                " SELECT item_name, sum([1]) AS A1, sum([2]) AS A, sum([3]) AS '1/5',sum([4]) AS C, sum([5]) AS C1 FROM porcelain PIVOT(sum(sort_count) " +
                " FOR grade IN ([1],[2],[3],[4],[5]) ) AS pvt GROUP BY item_name ,item_id", _cnn);
        }
        else
        {
            cmddepo = new SqlCommand(
                " WITH porcelain AS  (SELECT dbo.item.item_name, porcelain_storage.item_id, SUM(dbo.porcelain_storage.sort_count) AS sort_count, " +
                " dbo.porcelain_storage.grade FROM dbo.porcelain_storage INNER JOIN dbo.item ON dbo.porcelain_storage.item_id = dbo.item.id where dbo.item.kind=" + form + " GROUP BY " +
                " dbo.item.item_name, dbo.porcelain_storage.grade, dbo.porcelain_storage.item_id union all " +
                " select item.item_name, item.id, null, null from item  where item.kind=" + form + " and id not in (select item_id from dbo.porcelain_storage) " +
                " GROUP BY dbo.item.item_name, item.id)" +
                " SELECT item_name, sum([1]) AS A1, sum([2]) AS A, sum([3]) AS '1/5',sum([4]) AS C, sum([5]) AS C1 FROM porcelain PIVOT(sum(sort_count) " +
                " FOR grade IN ([1],[2],[3],[4],[5]) ) AS pvt GROUP BY item_name ,item_id", _cnn);
        }
        var rd = cmddepo.ExecuteReader();
        var list = new List<GradeItem>();
        while (rd.Read())
        {
            list.Add(new GradeItem()
            {
                A1 = rd["A1"] == DBNull.Value ? "" : rd["A1"].ToString(),
                A = rd["A"] == DBNull.Value ? "" : rd["A"].ToString(),
                B = rd["1/5"] == DBNull.Value ? "" : rd["1/5"].ToString(),
                C = rd["C"] == DBNull.Value ? "" : rd["C"].ToString(),
                C1 = rd["C1"] == DBNull.Value ? "" : rd["C1"].ToString(),
                ItemName = rd["item_name"] == DBNull.Value ? "" : rd["item_name"].ToString()

            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetGlaze(int glaze,int form, string sdate, string edate)
    {
        string glazename = "";
        SqlCommand cmdglaze ;
        _cnn.Open();
        switch (glaze)
        {
            case 1:
                if (form == 0)
                {
                    cmdglaze = new SqlCommand(
                        "SELECT SUM(dbo.glaze1_total.total)+sum(glaze1_total.tot_recover) AS total, dbo.item.item_name " +
                        " FROM dbo.glaze1_total INNER JOIN " +
                        " dbo.item ON dbo.glaze1_total.item_id = dbo.item.id " +
                        " WHERE(dbo.glaze1_total.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " GROUP BY dbo.glaze1_total.item_id, dbo.item.item_name " +
                        " order by item.item_name", _cnn);
                }
                else
                {
                    cmdglaze = new SqlCommand(
                        "SELECT SUM(dbo.glaze1_total.total)+sum(glaze1_total.tot_recover) AS total, dbo.item.item_name " +
                        " FROM dbo.glaze1_total INNER JOIN " +
                        " dbo.item ON dbo.glaze1_total.item_id = dbo.item.id " +
                        " WHERE(dbo.glaze1_total.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') and dbo.item.kind="+form+" " +
                        " GROUP BY dbo.glaze1_total.item_id, dbo.item.item_name " +
                        " order by item.item_name", _cnn);
                }
                break;
            case 2:
                if (form == 0)
                {
                    cmdglaze = new SqlCommand(
                        "SELECT SUM(dbo.glaze2_total.total)+sum(glaze2_total.tot_recover) AS total, dbo.item.item_name " +
                        " FROM dbo.glaze2_total INNER JOIN " +
                        " dbo.item ON dbo.glaze2_total.item_id = dbo.item.id " +
                        " WHERE(dbo.glaze2_total.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                        " GROUP BY dbo.glaze2_total.item_id, dbo.item.item_name " +
                        " order by item.item_name", _cnn);
                }
                else
                {
                    cmdglaze = new SqlCommand(
                        "SELECT SUM(dbo.glaze2_total.total)+sum(glaze2_total.tot_recover) AS total, dbo.item.item_name " +
                        " FROM dbo.glaze2_total INNER JOIN " +
                        " dbo.item ON dbo.glaze2_total.item_id = dbo.item.id " +
                        " WHERE(dbo.glaze2_total.tarikh BETWEEN '" + sdate + "' AND '" + edate + "') and dbo.item.kind=" + form + "" +
                        " GROUP BY dbo.glaze2_total.item_id, dbo.item.item_name " +
                        " order by item.item_name", _cnn);
                }
                break;
           default:
               if (form == 0)
               {
                   cmdglaze = new SqlCommand(
                       " SELECT        dbo.item.item_name, SUM(t.total) AS total FROM(SELECT SUM(total)+sum(tot_recover) AS total, item_id " +
                       " FROM dbo.glaze1_total " +
                       " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                       " GROUP BY item_id " +
                       " UNION ALL " +
                       " SELECT SUM(total)+sum(tot_recover) AS total , item_id " +
                       " FROM dbo.glaze2_total " +
                       " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "') " +
                       " GROUP BY item_id) AS t INNER JOIN " +
                       " dbo.item ON t.item_id = dbo.item.id " +
                       " GROUP BY dbo.item.item_name", _cnn);
               }
               else
               {
                   cmdglaze = new SqlCommand(
                       " SELECT        dbo.item.item_name, SUM(t.total) AS total FROM(SELECT SUM(total)+sum(tot_recover) AS total, item_id " +
                       " FROM dbo.glaze1_total " +
                       " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "')  " +
                       " GROUP BY item_id " +
                       " UNION ALL " +
                       " SELECT SUM(total)+sum(tot_recover) AS total , item_id " +
                       " FROM dbo.glaze2_total " +
                       " WHERE(tarikh BETWEEN '" + sdate + "' AND '" + edate + "')  " +
                       " GROUP BY item_id) AS t INNER JOIN " +
                       " dbo.item ON t.item_id = dbo.item.id " +
                       " where dbo.item.kind="+form+" " +
                       " GROUP BY dbo.item.item_name,dbo.item.kind", _cnn);
               }
               break;


        }

        
        
            var rd = cmdglaze.ExecuteReader();
            var list=new List<GlazeItem>();
            while (rd.Read())
            {
                list.Add(new GlazeItem()
                {
                    Total = Convert.ToInt32(rd["total"]),
                    ItemName = rd["item_name"].ToString()
            
                });
            }
            _cnn.Close();
            return new JavaScriptSerializer().Serialize(list);
        
    }
    [WebMethod]
    public string GetPersonel(string tarikh)
    {
        _cnn.Open();
        var sel = new SqlCommand("SELECT   fl.gol,taghdis_amar.dbo.Decor_Personel.flower_id,taghdis_amar.dbo.Decor_Personel.grade as Gid,taghdis_amar.dbo.grade_level.grade," +
                                 " taghdis_amar.dbo.personel.per_name, taghdis_amar.dbo.Decor_Personel.per_id, taghdis_amar.dbo.Decor_Personel.item_id, " +
                                 " taghdis_amar.dbo.item.item_name, taghdis_amar.dbo.Decor_Personel.count, taghdis_amar.dbo.Decor_Personel.id " +
                                 " FROM taghdis_amar.dbo.Decor_Personel INNER JOIN " +
                                 " taghdis_amar.dbo.personel ON  taghdis_amar.dbo.Decor_Personel.per_id = taghdis_amar.dbo.personel.per_id INNER JOIN " +
                                 " taghdis_amar.dbo.item ON  taghdis_amar.dbo.Decor_Personel.item_id = taghdis_amar.dbo.item.id INNER JOIN " +
                                 " taghdis_amar.dbo.grade_level ON  taghdis_amar.dbo.Decor_Personel.grade = taghdis_amar.dbo.grade_level.id " +
                                 " left join(SELECT flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / ' " +
                                 " + flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 " FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 " flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 " flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 " flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 " flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 " flower_depot.dbo.flower_formats.flowformat_id) as fl on Decor_Personel.flower_id = fl.id  " +
                                 " WHERE(taghdis_amar.dbo.Decor_Personel.tarikh = '" + tarikh + "') order by taghdis_amar.dbo.Decor_Personel.id desc", _cnn);
        var r = sel.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                ItemName = r["item_name"].ToString(),
                ItemId = Convert.ToInt32(r["item_id"]),
                GolName = r["gol"].ToString(),
                GolId = Convert.ToInt32(r["flower_id"]),
                DarageId = Convert.ToInt32(r["Gid"]),
                Darag = r["grade"].ToString(),
                PerName = r["per_name"].ToString(),
                PerId = Convert.ToInt32(r["per_id"]),

                Tedad = r["count"].ToString()

            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetRecordDecorTime(string tarikh)
    {
        _cnn.Open();
        var sel = new SqlCommand("SELECT  dbo.Decor_time.id,dbo.Decor_time.rectime,dbo.personel.per_name,dbo.Decor_time.perid " +
                                 " FROM  dbo.Decor_time INNER JOIN  dbo.personel ON dbo.Decor_time.perid COLLATE SQL_Latin1_General_CP1_CI_AS = dbo.personel.per_id   " +
                                 " WHERE(dbo.Decor_time.tarikh = '" + tarikh + "') order by dbo.Decor_time.id desc", _cnn);
        var r = sel.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                PerName = r["per_name"].ToString(),
                PerId = Convert.ToInt32(r["perid"]),
                Tedad = r["rectime"].ToString()

            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetSton(string tarikh)
    {
       
        _cnn.Open();
       
           var selectitem = new SqlCommand(
               "if(SELECT COUNT(dbo.grade_per.item_id) AS tedad FROM dbo.item INNER JOIN   dbo.grade_per ON dbo.item.id = dbo.grade_per.item_id  WHERE    " +
               "    (dbo.item.kind = 18) AND (dbo.grade_per.tarikh =  '" + tarikh +"')) >0 begin SELECT grade_per.tarikh, grade_per.faz, grade_per.shift, grade_per.per_id, grade_per.gradea, grade_per.ahan, grade_per.khlabeh, grade_per.kharegi," +
               " grade_per.noglaze, grade_per.pin, grade_per.khglaze, grade_per.kafsefid, grade_per.deformation, grade_per.tarak, grade_per.dorangi, grade_per.sarsozani," +
               " grade_per.oftadegi, grade_per.payeh, grade_per.khbadaneh, grade_per.tarpayeh, grade_per.labpar, grade_per.rizesh,grade_per.shagh, grade_per.hobab, " +
               "grade_per.rageh, grade_per.khash, item.item_name,ston_color.color, grade_per.item_id, grade_per.id, grade_per.tardasteh, grade_per.test,grade_per.abrbad,grade_per.kamrangi  FROM grade_per " +
               "INNER JOIN item ON grade_per.item_id = item.id INNER JOIN ston_color ON ston_color.id=grade_per.color WHERE (grade_per.tarikh = '" + tarikh +
               "') AND (item.kind=18) ORDER BY grade_per.id end ", _cnn);

       
        var r = selectitem.ExecuteReader();
        string x = r.ToString();
        
            var list = new List<DepoItems>();
            while (r.Read())
            {
                list.Add(new DepoItems()
                {
                    Id = Convert.ToInt32(r["id"]),
                    ItemName = r["item_name"].ToString(),
                    Color=r["color"].ToString(),
                    ItemId = Convert.ToInt32(r["item_id"]),
                    Tarikh = r["tarikh"].ToString(),
                    Faz = Convert.ToInt32(r["faz"]),
                    Shift = Convert.ToInt32(r["shift"]),
                    PerId = Convert.ToInt32(r["per_id"]),
                    Gradea = Convert.ToInt32(r["gradea"]),
                    Ahan = Convert.ToInt32(r["ahan"]),
                    Khlabeh = Convert.ToInt32(r["khlabeh"]),
                    Kharegi = Convert.ToInt32(r["kharegi"]),
                    Noglaze = Convert.ToInt32(r["noglaze"]),
                    Pin = Convert.ToInt32(r["pin"]),
                    Khglaze = Convert.ToInt32(r["khglaze"]),
                    Kafsefid = Convert.ToInt32(r["kafsefid"]),
                    Deformation = Convert.ToInt32(r["deformation"]),
                    Tarak = Convert.ToInt32(r["tarak"]),
                    Dorangi = Convert.ToInt32(r["dorangi"]),
                    Sarsozani = Convert.ToInt32(r["sarsozani"]),
                    Oftadegi = Convert.ToInt32(r["oftadegi"]),
                    Payeh = Convert.ToInt32(r["payeh"]),
                    Khbadaneh = Convert.ToInt32(r["khbadaneh"]),
                    Tarpayeh = Convert.ToInt32(r["tarpayeh"]),
                    Labpar = Convert.ToInt32(r["labpar"]),
                    Rizesh = Convert.ToInt32(r["rizesh"]),
                    Shagh = Convert.ToInt32(r["shagh"]),
                    Hobab = Convert.ToInt32(r["hobab"]),
                    Rageh = Convert.ToInt32(r["rageh"]),
                    Khash = Convert.ToInt32(r["khash"]),
                    Tardasteh = Convert.ToInt32(r["tardasteh"]),
                    Test = Convert.ToInt32(r["test"]),
                    Abrbad = Convert.ToInt32(r["abrbad"]),
                    Kamrangi = Convert.ToInt32(r["kamrangi"])



                });
            }
            _cnn.Close();
            return new JavaScriptSerializer().Serialize(list);
        
    }


    [WebMethod]
    public string GetPersonelSort(string tarikh,int faz)
    {

        _cnn.Open();
       
         var  selectitem = new SqlCommand(
                "SELECT grade_per.tarikh, grade_per.faz, grade_per.shift, grade_per.per_id, grade_per.gradea, grade_per.ahan, grade_per.khlabeh, grade_per.kharegi," +
                " grade_per.noglaze, grade_per.pin, grade_per.khglaze, grade_per.kafsefid, grade_per.deformation, grade_per.tarak, grade_per.dorangi, grade_per.sarsozani," +
                " grade_per.oftadegi, grade_per.payeh, grade_per.khbadaneh, grade_per.tarpayeh, grade_per.labpar, grade_per.rizesh,grade_per.shagh, grade_per.hobab, " +
                "grade_per.rageh, grade_per.khash, item.item_name, grade_per.item_id, grade_per.id, grade_per.tardasteh, grade_per.test FROM grade_per " +
                "INNER JOIN item ON grade_per.item_id = item.id    WHERE (grade_per.tarikh = '"+tarikh+"') AND (grade_per.faz = '" + faz + "') AND (item.kind<>18) ORDER BY grade_per.id", _cnn);
           
       
        var r = selectitem.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                Id = Convert.ToInt32(r["id"]),
                ItemName = r["item_name"].ToString(),
                ItemId = Convert.ToInt32(r["item_id"]),  
                Tarikh = r["tarikh"].ToString(),
                Faz = Convert.ToInt32(r["faz"]),    
                Shift = Convert.ToInt32(r["shift"]),
                PerId = Convert.ToInt32(r["per_id"]),
                Gradea = Convert.ToInt32(r["gradea"]),
                Ahan = Convert.ToInt32(r["ahan"]),
                Khlabeh = Convert.ToInt32(r["khlabeh"]),
                Kharegi = Convert.ToInt32(r["kharegi"]),
                Noglaze = Convert.ToInt32(r["noglaze"]),
                Pin = Convert.ToInt32(r["pin"]),
                Khglaze = Convert.ToInt32(r["khglaze"]),
                Kafsefid = Convert.ToInt32(r["kafsefid"]),
                Deformation = Convert.ToInt32(r["deformation"]),
                Tarak = Convert.ToInt32(r["tarak"]),
                Dorangi = Convert.ToInt32(r["dorangi"]),
                Sarsozani = Convert.ToInt32(r["sarsozani"]),
                Oftadegi = Convert.ToInt32(r["oftadegi"]),
                Payeh = Convert.ToInt32(r["payeh"]),
                Khbadaneh = Convert.ToInt32(r["khbadaneh"]),
                Tarpayeh = Convert.ToInt32(r["tarpayeh"]),
                Labpar = Convert.ToInt32(r["labpar"]),
                Rizesh = Convert.ToInt32(r["rizesh"]),
                Shagh = Convert.ToInt32(r["shagh"]),
                Hobab = Convert.ToInt32(r["hobab"]),
                Rageh = Convert.ToInt32(r["rageh"]),
                Khash = Convert.ToInt32(r["khash"]),
                Tardasteh = Convert.ToInt32(r["tardasteh"]),
                Test = Convert.ToInt32(r["test"])
               


            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetRecord(string tarikh)
    {

        _cnn.Open();

        var selectitem = new SqlCommand(
               "SELECT     per_id, per_name,  A + ahan + khlabeh + khareji + noglaze + pin + khglaze + kafsefid + deformegi + tarak + " +
               " dorangi + sarsozani + oftadegi + payeh + khbadaneh + tarpayeh + labpar + rizesh + hobab + rageh + khash AS tedad " +
               " FROM(SELECT     dbo.personel.per_id, dbo.personel.per_name, SUM(dbo.grade_per.gradea) AS A, SUM(dbo.grade_per.ahan) AS ahan, SUM(dbo.grade_per.khlabeh) AS khlabeh, " +
               " SUM(dbo.grade_per.kharegi) AS khareji, SUM(dbo.grade_per.noglaze) AS noglaze, SUM(dbo.grade_per.pin) AS pin, SUM(dbo.grade_per.khglaze) AS khglaze, " +
               " SUM(dbo.grade_per.kafsefid) AS kafsefid, SUM(dbo.grade_per.deformation) AS deformegi, SUM(dbo.grade_per.tarak) AS tarak, SUM(dbo.grade_per.dorangi) AS dorangi, " +
               " SUM(dbo.grade_per.sarsozani) AS sarsozani, SUM(dbo.grade_per.oftadegi) AS oftadegi, SUM(dbo.grade_per.payeh) AS payeh, SUM(dbo.grade_per.khbadaneh) AS khbadaneh, " +
               " SUM(dbo.grade_per.tarpayeh) AS tarpayeh, SUM(dbo.grade_per.tardasteh) as tardasteh, SUM(dbo.grade_per.labpar) AS labpar, SUM(dbo.grade_per.rizesh) AS rizesh, " +
               " SUM(dbo.grade_per.hobab) AS hobab, " +
               " SUM(dbo.grade_per.rageh) AS rageh, SUM(dbo.grade_per.khash) AS khash " +
               " FROM         dbo.grade_per INNER JOIN " +
               " dbo.personel ON dbo.grade_per.per_id COLLATE SQL_Latin1_General_CP1_CI_AS = dbo.personel.per_id " +
               " WHERE(dbo.grade_per.tarikh = '"+tarikh+"') " +
               " GROUP BY dbo.personel.per_id, dbo.personel.per_name) AS sorting_per", _cnn);


        var r = selectitem.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                PerId = Convert.ToInt32(r["per_id"]),
                PerName = r["per_name"].ToString(),
                ItemId = Convert.ToInt32(r["tedad"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetRecordDecorDetail(string tarikhs, string tarikhe,int peridd)
    {
        _cnn.Open();

        var selectitem = new SqlCommand(
            "select * from (SELECT        TOP (100) PERCENT dbo.personel.per_name, dbo.personel.per_id, dbo.Decor_time.rectime, dbo.Decor_time.tarikh " +
            " FROM dbo.Decor_time INNER JOIN " +
            " dbo.personel ON dbo.Decor_time.perid COLLATE SQL_Latin1_General_CP1_CI_AS = dbo.personel.per_id " +
            " WHERE(dbo.Decor_time.tarikh BETWEEN '"+tarikhs+"' AND '"+tarikhe+"') AND(dbo.Decor_time.perid = "+peridd+ ") order by tarikh ) i " +
            " union all " +
            " SELECT '----',1,SUM(dbo.Decor_time.rectime) AS record, '----' " +
            " FROM dbo.Decor_time INNER JOIN " +
            " dbo.personel ON dbo.Decor_time.perid COLLATE SQL_Latin1_General_CP1_CI_AS = dbo.personel.per_id " +
            " WHERE(dbo.Decor_time.tarikh BETWEEN '" + tarikhs + "' AND '" + tarikhe + "') AND(dbo.Decor_time.perid = " + peridd + ") ", _cnn);


        var r = selectitem.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                PerId = Convert.ToInt32(r["per_id"]),
                PerName = r["per_name"].ToString(),
                Tedad = r["rectime"].ToString(),
                Tarikh = r["tarikh"].ToString()
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    [WebMethod]
    public string GetRecordDecorReport(string tarikhs, string tarikhe)
    {
        _cnn.Open();

        var selectitem = new SqlCommand(
               "SELECT dbo.personel.per_name, dbo.personel.per_id, SUM(dbo.Decor_time.rectime) AS record " +
               " FROM dbo.Decor_time INNER JOIN " +
               " dbo.personel ON dbo.Decor_time.perid COLLATE SQL_Latin1_General_CP1_CI_AS = dbo.personel.per_id " +
               " WHERE(dbo.Decor_time.tarikh BETWEEN '"+tarikhs+"' AND '"+tarikhe+"') " +
               " GROUP BY dbo.personel.per_name, dbo.personel.per_id ORDER BY dbo.personel.per_name", _cnn);


        var r = selectitem.ExecuteReader();
        var list = new List<DepoItems>();
        while (r.Read())
        {
            list.Add(new DepoItems()
            {
                PerId = Convert.ToInt32(r["per_id"]),
                PerName = r["per_name"].ToString(),
                Tedad = r["record"].ToString()
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(list);
    }
    public class DepoItems
    {
        public int Id { get; set; }
        public string Tarikh { get; set; }
        public int Faz { get; set; }
        public int Shift { get; set; }
        public int PerId { get; set; }
        public int Gradea { get; set; }
        public int Ahan { get; set; }
        public int Khlabeh { get; set; }
        public int Kharegi { get; set; }
        public int Noglaze { get; set; }
        public int Pin { get; set; }
        public int Khglaze { get; set; }
        public int Kafsefid { get; set; }
        public int Deformation { get; set; }
        public int Tarak { get; set; }
        public int Dorangi { get; set; }
        public int Sarsozani { get; set; }
        public int Rageh { get; set; }
        public int Oftadegi { get; set; }
        public int Payeh { get; set; }
        public int Khbadaneh { get; set; }
        public int Tarpayeh { get; set; }
        public int Labpar { get; set; }
        public int Rizesh { get; set; }
        public int Shagh { get; set; }
        public int Hobab { get; set; }
        public int Khash { get; set; }
        public int Tardasteh { get; set; }
        public int Test { get; set; }
        public int Abrbad { get; set; }
        public int Kamrangi { get; set; }
        public string ItemName { get; set; }
        public int ItemId { get; set; }
        public string PerName { get; set; }
        public string Color { get; set; }
        //=========================
        public string Darag { get; set; }
        public int DarageId { get; set; }
        public string GolName { get; set; }
        public int GolId { get; set; }
        public string Tedad { get; set; }



    }
    [WebMethod]
    public void AddTimeToMounth(string tarikhS, string tarikhE,string tarikhN)
    {
        _cnn.Open();
        var ins = new SqlCommand("update Decor_time set rectime=rectime+A.tottime " +
                                 " from(select * from(SELECT [perid], sum([rectime]) as tottime " +
                                 " FROM[dbo].[Decor_time] " +
                                 " where tarikh between '"+tarikhS+"' and '"+tarikhE+"' " +
                                 " group by perid) i " +
                                 " where i.tottime > 0)A where  Decor_time.perid = A.perid and Decor_time.tarikh = '"+tarikhN+"' " +
                                 " insert into Decor_time (perid,rectime,tarikh) " +
                                 " select i.perid, i.tottime, '" + tarikhN + "' from(SELECT [perid], sum([rectime]) as tottime " +
                                 " FROM[dbo].[Decor_time] " +
                                 " where tarikh between '" + tarikhS + "' and '" + tarikhE + "' " +
                                 " group by perid) i " +
                                 " where i.tottime > 0 and i.perid not in (select perid from Decor_time where tarikh = '" + tarikhN + "')", _cnn);
        ins.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public void SaveRecordPer(ItemToDB obj)
    {
        _cnn.Open();
        var ins = new SqlCommand("if(select count(perid) from Decor_time where perid="+obj.PerId+ " and tarikh='" + obj.Tarikh + "') = 0 begin insert into Decor_time (perid,rectime,tarikh)values" +
                                 "(" + obj.PerId + "," + obj.Tedad + ",'" + obj.Tarikh + "') end", _cnn);
        ins.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void SaveItem(ItemToDB obj)
    {
        _cnn.Open();
        var ins = new SqlCommand("insert into Decor_Personel (per_id,item_id,flower_id,grade,count,tarikh)values" +
                                 "("+obj.PerId+"," + obj.ItemId + "," + obj.GolId + "," + obj.Darage + "," + obj.Tedad + ",'"+obj.Tarikh+"')", _cnn);
        ins.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void Saveitemsort(DepoItems obj)
    {
        _cnn.Open();
        var ins = new SqlCommand("INSERT INTO [dbo].[grade_per]([tarikh],[faz],[shift],[per_id],[item_id],[gradea],[ahan],[khlabeh],[kharegi],[noglaze],[pin],[khglaze],[kafsefid],[deformation],[tarak] " +
                                 ",[dorangi],[sarsozani],[oftadegi],[payeh],[khbadaneh],[tarpayeh],[labpar],[rizesh],[hobab],[rageh],[khash],[tardasteh],[test],[shagh],[color],[kamrangi],[abrbad]) " +
                                 " VALUES" +
                                 "('" + obj.Tarikh + "'," + obj.Faz + "," + obj.Shift + ",'" + obj.PerId + "'," + obj.ItemId + "," + obj.Gradea + "," + obj.Ahan + "," + obj.Khlabeh + "," + obj.Kharegi + "," + obj.Noglaze + "" +
                                 "," + obj.Pin + "," + obj.Khglaze + "," + obj.Kafsefid + "," + obj.Deformation + "," + obj.Tarak + "," + obj.Dorangi + "," + obj.Sarsozani + "," + obj.Oftadegi + "" +
                                 "," + obj.Payeh + "," + obj.Khbadaneh + "," + obj.Tarpayeh + "," + obj.Labpar + "," + obj.Rizesh + "," + obj.Hobab + "," + obj.Rageh + "" +
                                 "," + obj.Khash + "," + obj.Tardasteh + "," + Convert.ToInt32(obj.Test) + "," + obj.Shagh + "," + obj.Color + "," + obj.Kamrangi + "," + obj.Abrbad + ")", _cnn);
        ins.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public string FilterItems(string partName)
    {
        var farsiPart1 = partName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = partName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT [id],[item_name] FROM [dbo].[item] where item_name like N'%" + partName + "%' " +
                                 "OR item_name like N'%" + farsiPart2 + "%' OR item_name like N'%" + farsiPart1 + "%'  ", _cnn);
        var r = sel.ExecuteReader();
        var lis = new List<Items>();
        while (r.Read())
        {
            lis.Add(new Items()
            {
                ItemName = r["item_name"].ToString(),
                ItemId = Convert.ToInt32(r["id"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(lis);
    }
    [WebMethod]
    public string FilterPersonel(string partName)
    {
        var farsiPart1 = partName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = partName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT [per_id],[per_name] FROM [dbo].[personel] where (active_per=1 AND vahed='دكور' AND  per_name like N'%" + partName + "%' )" +
                                 "OR (active_per=1 AND vahed='دكور' AND per_name like N'%" + farsiPart2 + "%') OR (active_per=1 AND vahed='دكور' AND per_name like N'%" + farsiPart1 + "%')  ", _cnn);
        var r = sel.ExecuteReader();
        var lis = new List<Items>();
        while (r.Read())
        {
            lis.Add(new Items()
            {
                ItemName = r["per_name"].ToString(),
                ItemId = Convert.ToInt32(r["per_id"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(lis);
    }
    [WebMethod]
    public string SearchPerID(string partName)
    {
       
        _cnn.Open();
        string personelname ="";
        var sel = new SqlCommand("SELECT [per_name] FROM [dbo].[personel] where Per_id="+partName+"  ", _cnn);
        var r = sel.ExecuteReader();
        if (r.Read())
        {

            personelname = r["per_name"].ToString();


        }
        _cnn.Close();
        return personelname;
    }
    [WebMethod]
    public string FilterPersonelsorting(string partName)
    {
        var farsiPart1 = partName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = partName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT [per_id],[per_name] FROM [dbo].[personel] where (active_per=1 AND vahed='درجه بندي' AND  per_name like N'%" + partName + "%' )" +
                                 "OR (active_per=1 AND vahed='درجه بندي' AND per_name like N'%" + farsiPart2 + "%') OR (active_per=1 AND vahed='درجه بندي' AND per_name like N'%" + farsiPart1 + "%')  ", _cnn);
        var r = sel.ExecuteReader();
        var lis = new List<Items>();
        while (r.Read())
        {
            lis.Add(new Items()
            {
                ItemName = r["per_name"].ToString(),
                ItemId = Convert.ToInt32(r["per_id"])
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(lis);
    }
    [WebMethod]
    public string FilterGol(string golName)
    {
        var farsiPart1 = golName.Replace("ک", "ك").Replace("ی", "ي").Replace("ة", "ه");
        var farsiPart2 = golName.Replace("ك", "ک").Replace("ي", "ی").Replace("ه", "ة");
        _cnn.Open();
        var sel = new SqlCommand("SELECT flower_entry.flower_name,flower_entry.flower_name + ' / ' + flower_colors.flow_color + ' / '  " +
                                 "+ flower_colortypes.flow_colortype + ' / ' + flower_formats.flow_format AS gol, flower_entry.id " +
                                 "FROM flower_depot.dbo.flower_entry INNER JOIN flower_depot.dbo.flower_colors ON " +
                                 "flower_depot.dbo.flower_entry.flower_color = flower_depot.dbo.flower_colors.flowcolor_id INNER JOIN " +
                                 "flower_depot.dbo.flower_colortypes ON flower_depot.dbo.flower_entry.flower_colortype = " +
                                 "flower_depot.dbo.flower_colortypes.colortype_id INNER JOIN " +
                                 "flower_depot.dbo.flower_formats ON flower_depot.dbo.flower_entry.flower_format = " +
                                 "flower_depot.dbo.flower_formats.flowformat_id where flower_name like N'%" + golName + "%' OR " +
                                 " flower_name like N'%" + farsiPart2 + "%' OR flower_name like N'" + farsiPart1 + "'  order by flower_entry.flower_color", _cnn);
        var r = sel.ExecuteReader();
        var ls = new List<Gol>();
        while (r.Read())
        {
            ls.Add(new Gol()
            {
                Id = Convert.ToInt32(r["id"]),
                Name = r["gol"].ToString()
            });
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(ls);
    }

    [WebMethod]
    public void UpdateSortItem(DepoItems obj)
    {
        _cnn.Open();

        var up = new SqlCommand("UPDATE [dbo].[grade_per] " +
                                " SET [shift] ="+obj.Shift+" ,[per_id] ="+obj.PerId+" ,[item_id] ="+obj.ItemId+" ,[gradea] ="+obj.Gradea+" ,[ahan] ="+obj.Ahan+",[khlabeh] ="+obj.Khlabeh+" ," +
                                " [kharegi] ="+obj.Kharegi+" ,[noglaze] ="+obj.Noglaze+",[pin] = "+obj.Pin+",[khglaze] = "+obj.Khglaze+",[kafsefid] = "+obj.Kafsefid+" ,[deformation] = "+obj.Deformation+",[tarak] ="+obj.Tarak+" ," +
                                " [dorangi] =" + obj.Dorangi + ",[sarsozani] =" + obj.Sarsozani+",[oftadegi] ="+obj.Oftadegi+" ,[payeh] ="+obj.Payeh+" ,[khbadaneh] ="+obj.Khbadaneh+"" +
                                " ,[tarpayeh] ="+obj.Tarpayeh+" ,[labpar] ="+obj.Labpar+" ,[rizesh] = "+obj.Rizesh+",[hobab] ="+obj.Hobab+" ,[rageh] ="+obj.Rageh+" ,[khash] = "+obj.Khash+"," +
                                " [tardasteh] ="+obj.Tardasteh+" ,[test] ="+Convert.ToInt32(obj.Test)+",[shagh] ="+obj.Shagh+" ,[color] ="+obj.Color+" ,[kamrangi] ="+obj.Kamrangi+" ,[abrbad] ="+obj.Abrbad+" " +
                                " WHERE id = " + obj.Id + " " +
                                "  ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }


    [WebMethod]
    public void UpdateItem(ItemToDB obj)
    {
        _cnn.Open();
       
        var up = new SqlCommand("UPDATE Decor_Personel " +
                                "SET [per_id] = " + obj.PerId + " " +
                                ",[item_id] = " + obj.ItemId + " " +
                                ",[flower_id] = " + obj.GolId + " " +
                                ",[grade] = " + obj.Darage + " " +
                                ",[count] =" + obj.Tedad + "" +
                                "WHERE id = " + obj.Id + " " +
                                "  ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void UpdateDecorTime(ItemToDB obj)
    {
        _cnn.Open();

        var up = new SqlCommand("UPDATE Decor_time " +
                                "SET [perid] = " + obj.PerId + " " +
                               ",[rectime] =" + obj.Tedad + "" +
                                "WHERE id = " + obj.Id + " " +
                                "  ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void DeleteRecordTime(int recid)
    {
        _cnn.Open();

        var del = new SqlCommand("delete from Decor_time " +
                                 "WHERE id = " + recid + " ", _cnn);
        del.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void DeleteRecord(int recid)
    {
        _cnn.Open();

        var del = new SqlCommand("delete from Decor_Personel " +
                                "WHERE id = " + recid + " ", _cnn);
        del.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void DeleteRecordSort(int recid)
    {
        _cnn.Open();

        var del = new SqlCommand("delete from grade_per " +
                                 "WHERE id = " + recid + " ", _cnn);
        del.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public void Minus(int val, int rowid)
    {
        _cnn.Open();
        var up = new SqlCommand("UPDATE [dbo].[depo] " +
                                "SET tedad = tedad - " + val + " where id = " + rowid + "" +
                                " delete from depo where tedad = 0 ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }

    [WebMethod]
    public void Plus(int val, int rowid)
    {
        _cnn.Open();
        var up = new SqlCommand("UPDATE [dbo].[depo] " +
                                "SET tedad = tedad + " + val + " where id = " + rowid + "" +
                                " delete from depo where tedad = 0 ", _cnn);
        up.ExecuteNonQuery();
        _cnn.Close();
    }
    [WebMethod]
    public string PrintServis()
    {
        _cnn.Open();
        var param = new List<Servis>();
        var name = new List<TypeServise>();
        var cmdname = new SqlCommand("SELECT name , levell From item_type", _cnn);
        var rd = cmdname.ExecuteReader();
        while (rd.Read())
        {
            name.Add(new TypeServise()
            {
                ServisName = rd["name"].ToString(),
                Levell = Convert.ToInt32(rd["levell"])

            });
        }
        _cnn.Close();

        foreach (var item in name)
        {
            _cnn.Open();
            var m = new Servis { ServisName = item.ServisName };
            var cmdSub = new SqlCommand(" WITH porcelain AS ( SELECT dbo.item.item_name,porcelain_storage.item_id,SUM(dbo.porcelain_storage.sort_count) AS sort_count, " +
                                        " dbo.porcelain_storage.grade FROM dbo.porcelain_storage INNER JOIN dbo.item ON dbo.porcelain_storage.item_id = dbo.item.id " +
                                        " where dbo.item.kind = " + item.Levell + " and item.sector_product in (1, 2) " +
                                        " GROUP BY dbo.item.item_name, dbo.porcelain_storage.grade, dbo.porcelain_storage.item_id) " +
                                        " SELECT item_name, sum([1]) AS A1, sum([2]) AS A, sum([3]) AS '1/5',sum([4]) AS C " +
                                        " FROM porcelain PIVOT(sum(sort_count) FOR grade IN ([1],[2],[3],[4]) ) AS pvt GROUP BY item_name ,item_id", _cnn);

            var r = cmdSub.ExecuteReader();
            while (r.Read())
            {
                m.ItemName.AddRange(new List<string>() { r["item_name"].ToString() });
                m.A1.AddRange(new List<string>() { r["A1"].ToString() });
                m.A.AddRange(new List<string>() { r["A"].ToString() });
                m.One.AddRange(new List<string>() { r["1/5"].ToString() });
                m.C.AddRange(new List<string>() { r["C"].ToString() });

            }
            param.Add(m);
            _cnn.Close();
        }
        _cnn.Close();
        return new JavaScriptSerializer().Serialize(param);
        //Session["ctrl"] =pnlprint;
        //ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");

    }
    public class TypeServise
    {
        public string ServisName { get; set; }
        public int Levell { get; set; }
    }
    public class Servis
    {
        public string ServisName { get; set; }
        public List<string> ItemName { get; set; }
        public List<string> A1 { get; set; }
        public List<string> A { get; set; }
        public List<string> One { get; set; }
        public List<string> C { get; set; }

        public Servis()
        {
            ItemName = new List<string>();
            A1 = new List<string>();
            A = new List<string>();
            One = new List<string>();
            C = new List<string>();
        }
    }
    public class GradeItem
    {
        public string A1 { get; set; }
        public string A { get; set; }
        public string C1 { get; set; }
        public string B { get; set; }
        public string C { get; set; }
        public string ItemName { get; set; }
    }
    public class GlazeItem
    {
        public int Total { get; set; }
        public string ItemName { get; set; }
    }
    

    public class Items : DepoItems
    {
        public new int ItemId { get; set; }
    }

    public class Gol
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class ItemToDB
    {
        public int Id { get; set; }
        public int GolId { get; set; }
        public int ItemId { get; set; }
        public int Darage { get; set; }
        public int Tedad { get; set; }
        public string PerId { get; set; }
        public string Tarikh { get; set; }

        
    }
}