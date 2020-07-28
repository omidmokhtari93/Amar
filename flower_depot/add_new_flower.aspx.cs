using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["level"] != "flower_depot" || Convert.ToInt32(Session["userid"]) != 44)
        {
            Session.Clear();
            Response.Redirect("../login.aspx");
        }

        Page.MaintainScrollPositionOnPostBack = true;
        con.Open();
        SqlCommand chooseimage = new SqlCommand("SELECT TOP 1 [id] as id ,[flower_name] as flowname FROM [flower_depot].[dbo].[flower_entry] ORDER BY id DESC ", con);
        SqlDataReader readid = chooseimage.ExecuteReader();
        if (readid.Read())
        {
            lbl_flower_Image_name.Text = ".:: " + readid["flowname"] + " ::.";
            string imgFilePath = "uploaded_pictures/" + readid["id"] + ".jpg";
            img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
            img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
        }
        con.Close();
    }
    protected void btn_save_OnClick(object sender, EventArgs e)
    {

        if (string.IsNullOrEmpty(txt_flowername.Text) || string.IsNullOrEmpty(txt_flowercode.Text) ||
            drpcompany.SelectedValue == "انتخاب کنید" || drpcostumername.SelectedValue == "انتخاب کنید" ||
            drpcolortype.SelectedValue == "انتخاب کنید" || drpformat.SelectedValue == "انتخاب کنید" ||
            drpcolor.SelectedValue == "انتخاب کنید" || drpday.SelectedValue == "روز" ||
            drpmonth.SelectedValue == "ماه" || drpyear.SelectedValue == "سال")
        {
            lblwarningsuccess.Visible = false;
            lblwarningfailed.Visible = true;
            lblwarningfailed.Text = "!لطفا فیلدهای خالی را تکمیل نمایید";
        }
        else
        {
            string tarikh = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
            con.Open();
            SqlCommand cmd =
                new SqlCommand(
                    "INSERT INTO [flower_depot].[dbo].[flower_entry](flower_name , flower_code" +
                    ",flower_color,flower_colortype,flower_format,customer_name,company_name,enter_date,comment)" +
                    " values ('" + txt_flowername.Text + "', '" + txt_flowercode.Text.ToUpper() + "' " +
                    " ," + drpcolor.SelectedValue + " ," + drpcolortype.SelectedValue + "" +
                    ", " + drpformat.SelectedValue + "  , " + drpcostumername.SelectedValue + " ," +
                    "" + drpcompany.SelectedValue + " , '" + tarikh + "' , '" + txtcomment.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            var image = "";
            SqlCommand nameOfImage = new SqlCommand("SELECT TOP 1 [id] as id , [flower_name] as flowname FROM " +
                                                    "[flower_depot].[dbo].[flower_entry] ORDER BY id DESC ", con);
            SqlDataReader renameImage = nameOfImage.ExecuteReader();
            if (renameImage.Read())
            {
                if (upload_control.HasFile)
                {
                    image = renameImage["id"].ToString();
                    var directory = Server.MapPath("uploaded_pictures/");
                    var fExtension = Path.GetExtension(upload_control.PostedFile.FileName);
                    var fileName = image + fExtension;
                    upload_control.SaveAs(Path.Combine(directory, fileName));
                    lbl_flower_Image_name.Text = renameImage["flowname"].ToString();
                }

            }
            con.Close();
            con.Open();
            SqlCommand selectlastId = new SqlCommand("select id from flower_entry order by id desc", con);
            var flowerId = Convert.ToInt32(selectlastId.ExecuteScalar());
            SqlCommand updateTopersian = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_entry] " +
                                                        "set flower_name = replace(flower_name, NCHAR(1603), NCHAR(1705))" +
                                                        " where flower_name like '%' + NCHAR(1603) + '%' and id = " + flowerId + "  " +
                                                        "UPDATE[flower_depot].[dbo].[flower_entry] " +
                                                        "set flower_name = replace(flower_name, NCHAR(1610), NCHAR(1740)) " +
                                                        "where flower_name like '%' + NCHAR(1610) + '%' and id = " + flowerId + "", con);
            updateTopersian.ExecuteNonQuery();
            con.Close();
            lblwarningfailed.Visible = false;
            lblwarningsuccess.Visible = true;
            lblwarningsuccess.Text = ".با موفقیت ثبت شد";
            btn_save.Visible = false;
            btn_addnewflower.Visible = true;
            grid_top5recent.DataBind();
            string imgFilePath = "uploaded_pictures/" + image + ".jpg";
            img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
            img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
        }
    }


    protected void btn_addnewflower_Click(object sender, EventArgs e)
    {
        lblwarningfailed.Visible = false;
        lblwarningsuccess.Visible = false;
        btn_addnewflower.Visible = false;
        btn_save.Visible = true;
        txt_flowername.Text = "";
        txt_flowercode.Text = "";
        drpcolor.SelectedIndex = 0;
        drpcolortype.SelectedIndex = 0;
        drpformat.SelectedIndex = 0;
        drpcompany.SelectedIndex = 0;
        drpcostumername.SelectedIndex = 0;
        drpday.SelectedIndex = 0;
        drpmonth.SelectedIndex = 0;
        drpyear.SelectedIndex = 0;
        txtcomment.Text = "";
    }
    protected void grid_top5recent_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "add_flow_arrange")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("../flower_depot/flower_arrange.aspx?fid=" + grid_top5recent.DataKeys[rowIndex]["id"]);
        }

        if (e.CommandName == "copy")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            ViewState["fid"] = grid_top5recent.DataKeys[rowIndex]["id"];
            pnlCopyGol.Visible = true;
        }
    }

    protected void btnNo_OnClick(object sender, EventArgs e)
    {
        pnlCopyGol.Visible = false;
        ViewState["fid"] = null;
    }

    protected void btnYes_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var cmd = new SqlCommand("INSERT INTO [dbo].[flower_entry]([flower_name],[flower_code],[flower_color] " +
                                 ",[flower_colortype],[flower_format],[customer_name],[company_name],[enter_date] " +
                                 ",[comment])select[flower_name],[flower_code],[flower_color],[flower_colortype] " +
                                 ",[flower_format],[customer_name],[company_name],[enter_date],[comment]" +
                                 " from flower_entry where id = " + ViewState["fid"] + " " +
                                 "SELECT CAST(scope_identity() AS int)", con);
        var flowid = Convert.ToInt32(cmd.ExecuteScalar());
        var list = new List<Arranges>();
        cmd = new SqlCommand("select [id],[form_number],[arrange_type],[dimension] " +
                             ",[sheetcount],[last_enter_date],[mark_type],[comment] " +
                             "from flower_forms_entry where flower_id = " + ViewState["fid"] + " ", con);
        var rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            list.Add(new Arranges()
            {
                Id = Convert.ToInt32(rd["id"]),
                FlowerId = flowid,
                Form = rd["form_number"].ToString(),
                Type = Convert.ToInt32(rd["arrange_type"]),
                Dimension = Convert.ToInt32(rd["dimension"]),
                SheetCount = rd["sheetcount"].ToString(),
                EnterDate = rd["last_enter_date"].ToString(),
                Mark = rd["mark_type"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        con.Open();
        foreach (var form in list)
        {

            cmd = new SqlCommand("INSERT INTO [dbo].[flower_forms_entry]([flower_id],[form_number],[arrange_type]" +
                                 ",[dimension],[sheetcount],[last_enter_date],[mark_type],[comment]) " +
                                 "values(" + form.FlowerId + " ,'" + form.Form + "' , " + form.Type + " , " + form.Dimension + "," +
                                 " " + form.SheetCount + " , '" + form.EnterDate + "' , '" + form.Mark + "' , '" + form.Comment + "') " +
                                 "SELECT CAST(scope_identity() AS int)", con);
            var formid = cmd.ExecuteScalar();
            cmd = new SqlCommand("INSERT INTO [dbo].[flower_arrange_items]([flower_id],[form_id],[form_number]," +
                                 "[item_name],[item_insheet_count],[lent_of_item],[comment])" +
                                 "select " + flowid + "," + formid + ",[form_number],[item_name],[item_insheet_count]," +
                                 "[lent_of_item],[comment] from flower_arrange_items where flower_id = " + ViewState["fid"] + " " +
                                 "and form_id = " + form.Id + " ", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
        con.Open();
        var listorders = new List<OrderList>();
        cmd = new SqlCommand("SELECT [id],[flower_id],[order_type],[order_count],[order_enter_date]," +
                             "[order_complete_date],[order_remain],[comment]FROM [dbo].[orders] where flower_id = " + ViewState["fid"] + "", con);
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            var Id = Convert.ToInt32(rd["id"]);
            var FlowerID = Convert.ToInt32(rd["flower_id"]);
            var OrderType = Convert.ToInt32(rd["order_type"]);
            var OrderCount = Convert.ToInt32(rd["order_count"]);
            var EnterDate = rd["order_enter_date"].ToString();
            var CompleteDate = rd["order_complete_date"].ToString();
            var Remain = rd["order_remain"].ToString();
            var Comment = rd["comment"].ToString();
            listorders.Add(new OrderList()
            {
                Id = Convert.ToInt32(rd["id"]),
                FlowerID = Convert.ToInt32(rd["flower_id"]),
                OrderType = Convert.ToInt32(rd["order_type"]),
                OrderCount = Convert.ToInt32(rd["order_count"]),
                EnterDate = rd["order_enter_date"].ToString(),
                CompleteDate = rd["order_complete_date"].ToString(),
                Remain = rd["order_remain"].ToString(),
                Comment = rd["comment"].ToString()
            });
        }
        con.Close();
        foreach (var order in listorders)
        {
            con.Open();
            cmd = new SqlCommand("INSERT INTO [dbo].[orders]([flower_id],[order_type],[order_count],[order_enter_date] " +
                                 ",[order_complete_date],[order_remain],[comment])" +
                                 " values(" + flowid + "," + order.OrderType + "," + order.OrderCount + ",'" + order.EnterDate + "'," +
                                 "'" + order.CompleteDate + "','" + order.Remain + "','" + order.Comment + "') " +
                                 " SELECT CAST(scope_identity() AS int)", con);
            var orderid = cmd.ExecuteScalar();
            cmd = new SqlCommand("INSERT INTO [dbo].[order_sheet_count]([flower_id],[order_id],[form_number],[form_id],[recieve_date],[sheet_count]) " +
                                 "select " + flowid + " , " + orderid + " , form_number , form_id , recieve_date , sheet_count from order_sheet_count " +
                                 "where order_id = " + order.Id + " ", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        con.Close();
        grid_top5recent.DataBind();
        pnlCopyGol.Visible = false;
        ViewState["fid"] = null;
        Response.Redirect("edit_flower.aspx?fid=" + flowid);
    }

    protected void btnSearch_OnServerClick(object sender, EventArgs e)
    {
        SqlDataSource7.FilterExpression = "flower_name like '%" + txtSearch.Value + "%'";
        grid_top5recent.AllowPaging = false;
    }

    public class Arranges
    {
        public int Id { get; set; }
        public int FlowerId { get; set; }
        public string Form { get; set; }
        public int Type { get; set; }
        public int Dimension { get; set; }
        public string SheetCount { get; set; }
        public string EnterDate { get; set; }
        public string Mark { get; set; }
        public string Comment { get; set; }
    }
    public class OrderList
    {
        public int Id { get; set; }
        public int FlowerID { get; set; }
        public int OrderType { get; set; }
        public int OrderCount { get; set; }
        public string EnterDate { get; set; }
        public string CompleteDate { get; set; }
        public string Remain { get; set; }
        public string Comment { get; set; }
    }
}