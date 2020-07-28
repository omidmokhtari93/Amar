using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class edit_flower : Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["flower_depot"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)

            if (((string)Session["level"] != "flower_depot") || (Convert.ToInt32(Session["userid"]) != 44))
            {
                Session.Clear();
                Response.Redirect("../login.aspx");

            }
        if (!Page.IsPostBack)
        {
            get_flower_info();
        }
        if (Request.Params["fname"] != null)
        {
            Page.Title = Request.Params["fname"];
        }
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void btn_accept_deleteall_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_entry] WHERE id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_forms_entry] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[flower_arrange_items] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[orders] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[order_sheet_count] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[arrange_sheet_count] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[half_cut] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE FROM [flower_depot].[dbo].[cutted_and_remain] WHERE flower_id = " + Request.Params["fid"] + " ", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("delete nhr from new_halfcutRiz nhr inner join " +
                             "new_halfcut nh on nhr.hid = nh.id where nh.flowid = " + Request.Params["fid"] + "", con);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("DELETE nh FROM new_halfcut nh INNER JOIN " +
                             "new_halfcutRiz nhr ON nh.id = nhr.hid WHERE nh.flowid = " + Request.Params["fid"] + "", con);
        cmd.ExecuteNonQuery();
        con.Close();

        string imgFilePath = "uploaded_pictures/" + Request.Params["fid"] + ".JPG";
        if (File.Exists(Server.MapPath(imgFilePath)))
        {
            File.Delete(Server.MapPath(imgFilePath));
        }
        Response.Redirect("../flower_depot/search_flower.aspx");
    }
    protected void btn_cancel_deleteall_OnClick(object sender, EventArgs e)
    {
        pnl_delete_all.Visible = false;
    }
    protected void btn_edit_OnClick(object sender, EventArgs e)
    {

        string tarikh = drpyear.Text + "/" + drpmonth.Text + "/" + drpday.Text;
        con.Open();
        SqlCommand updateCommand = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_entry]" +
                                                  "SET" +
                                                  "[flower_name] = '" + txt_flowername.Text + "' " +
                                                  ",[flower_code] = '" + txt_flowercode.Text.ToUpper() + "' " +
                                                  ",[flower_color] = " + drpcolor.SelectedValue + "" +
                                                  ",[flower_colortype] = " + drpcolortype.SelectedValue + "" +
                                                  ",[flower_format] = " + drpformat.SelectedValue + "" +
                                                  ",[customer_name] = " + drpcostumername.SelectedValue + "" +
                                                  ",[company_name] = " + drpcompany.SelectedValue + "" +
                                                  ",[enter_date] = '" + tarikh + "'" +
                                                  ",[comment] = '" + txtcomment.Text + "'" +
                                                  "WHERE " +
                                                  "id = " + Request.Params["fid"] + " ", con);
        updateCommand.ExecuteNonQuery();
        SqlCommand updateTopersian = new SqlCommand("UPDATE [flower_depot].[dbo].[flower_entry] " +
                                                    "set flower_name = replace(flower_name, NCHAR(1603), NCHAR(1705)) " +
                                                    "where flower_name like '%' + NCHAR(1603) + '%' and id = " + Request.Params["fid"] + "  " +
                                                    "UPDATE[flower_depot].[dbo].[flower_entry] " +
                                                    "set flower_name = replace(flower_name, NCHAR(1610), NCHAR(1740))" +
                                                    " where flower_name like '%' + NCHAR(1610) + '%' and id = " + Request.Params["fid"] + "", con);
        updateTopersian.ExecuteNonQuery();
        con.Close();
        pnl_edit_success.Visible = true;
        string imgFilePath = "uploaded_pictures/" + Request.Params["fid"] + ".jpg";
        if (upload_control.HasFile)
        {
            if (File.Exists(Server.MapPath(imgFilePath)))
            {
                File.Delete(Server.MapPath(imgFilePath));
            }
            string directory = Server.MapPath("uploaded_pictures/");
            string fname = Path.GetExtension(upload_control.PostedFile.FileName);
            string fileName = Request.Params["fid"] + fname;
            upload_control.SaveAs(Path.Combine(directory, fileName));
        }
        img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
        img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
    }
    protected void btn_previous_page_OnClick(object sender, EventArgs e)
    {
        ViewState["back_to_previous_page"] = Request.Params["fid"];
        Response.Redirect("../flower_depot/search_flower.aspx");
    }
    protected void btn_delete_flower_image_OnClick(object sender, EventArgs e)
    {
        string imgFilePath = "uploaded_pictures/" + Request.Params["fid"] + ".JPG";
        if (File.Exists(Server.MapPath(imgFilePath)))
        {
            File.Delete(Server.MapPath(imgFilePath));
        }
        img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
        img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
    }

    protected void btn_delete_all_OnClick(object sender, EventArgs e)
    {
        pnl_delete_all.Visible = true;
        lbl_warning_flowername.Text = ".:: " + txt_flowername.Text + " ::.";
    }

    private void get_flower_info()
    {
        try
        {
            con.Open();
            SqlCommand selectflower = new SqlCommand(
                " SELECT [flower_name],[flower_code],[flower_color],[flower_colortype],[flower_format],[customer_name],[company_name],[enter_date],[comment] " +
            "FROM[flower_depot].[dbo].[flower_entry] where id = " + Request.Params["fid"] + "", con);
            SqlDataReader readflowerreport = selectflower.ExecuteReader();
            if (readflowerreport.Read())
            {
                txt_flowername.Text = readflowerreport["flower_name"].ToString();
                txt_flowercode.Text = readflowerreport["flower_code"].ToString();
                drpcolor.SelectedValue = readflowerreport["flower_color"].ToString();
                drpcolortype.SelectedValue = readflowerreport["flower_colortype"].ToString();
                drpformat.SelectedValue = readflowerreport["flower_format"].ToString();
                drpcostumername.SelectedValue = readflowerreport["customer_name"].ToString();
                drpcompany.SelectedValue = readflowerreport["company_name"].ToString();
                string enterdate = readflowerreport["enter_date"].ToString();
                drpyear.SelectedValue = enterdate.Substring(0, 4);
                drpmonth.SelectedValue = enterdate.Substring(5, 2);
                drpday.SelectedValue = enterdate.Substring(8, 2);
                txtcomment.Text = readflowerreport["comment"].ToString();

            }
            string imgFilePath = "uploaded_pictures/" + Request.Params["fid"] + ".JPG";
            img_flowerimage.ImageUrl = imgFilePath + "?" + new Random().Next();
            img_flowerimage1.ImageUrl = imgFilePath + "?" + new Random().Next();
            con.Close();
        }
        catch
        {

        }
    }

    protected void btn_back_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("../flower_depot/search_flower.aspx?fid=" + Request.Params["fid"] +
                          "&report=1&cid=" + Request.Params["cid"] + "&fname=" + Request.Params["fname"]);
    }
}