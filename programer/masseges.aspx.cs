using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Globalization;
using System.Collections.Specialized;
using System.Text;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string date = "1393/01/01";

    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["taghdis_amar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        DateTime datetimeformat = DateTime.Now;
        PersianCalendar p = new PersianCalendar();
        date = p.GetYear(datetimeformat).ToString("0000") + '/' + p.GetMonth(datetimeformat).ToString("00") + '/' + p.GetDayOfMonth(datetimeformat).ToString("00");
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        string shortmsg = txtsentmsg.Text;
        int len = txtsentmsg.Text.Length;
        if (len > 25)
        {
            shortmsg = "..." + shortmsg.Substring(0, 22);

        }

        if (chkall.Checked == true)
        {
            cnn.Open();
            SqlCommand cmd_counter = new SqlCommand("SELECT COUNT(id) AS counter FROM   dbo.users", cnn);
            SqlDataReader dr = cmd_counter.ExecuteReader();
            if (dr.Read())
            {
                int counter = Convert.ToInt32(dr["counter"]);
                cnn.Close();
                cnn.Open();
                for (int i = 1; i < counter; i++)
                {
                    
                    SqlCommand cmd_id = new SqlCommand("SELECT leveluser FROM   dbo.users  where id=" + i + "", cnn);
                    SqlDataReader dr_id = cmd_id.ExecuteReader();
                    if (dr_id.Read())
                    {
                        int user_recive = Convert.ToInt32(dr_id["leveluser"]);
                        if (user_recive != Convert.ToInt32(Session["userid"]))
                        {
                            cnn.Close();
                            cnn.Open();
                            SqlCommand cmd_newmsg = new SqlCommand("insert into messages(user_send,user_recive,short_msg,msg,msg_read,sender,reciver,tarikh) VALUES (" + Convert.ToInt32(Session["userid"]) + "," + user_recive + ",'" + shortmsg + "','" + txtsentmsg.Text + "',0,0,0,'" + date + "') ", cnn);
                            cmd_newmsg.ExecuteNonQuery();
                            
                            cnn.Close();
                            cnn.Open();
                        }
                    }
                }
                gridsent.DataBind();
                txtsentmsg.Text = "";
            }
        }
        else
        {

            cnn.Open();
            SqlCommand cmd_newmsg = new SqlCommand("insert into messages(user_send,user_recive,short_msg,msg,msg_read,sender,reciver,tarikh) VALUES (" + Convert.ToInt32(Session["userid"]) + "," + ddlname.SelectedValue + ",'" + shortmsg + "','" + txtsentmsg.Text + "',0,0,0,'" + date + "') ", cnn);
            cmd_newmsg.ExecuteNonQuery();
            gridsent.DataBind();
            cnn.Close();
        }
        txtsentmsg.Text = "";
        UpdatePanel1.Visible = true;
        Timer1.Enabled = true;

    }
    protected void gridinbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         int index = 0;
      
        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {
            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                System.Data.DataView dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                int idsms = Convert.ToInt32(dv.ToTable().Rows[index]["id"]);
                cnn.Open();
                SqlCommand cmd_read = new SqlCommand("update messages  set reciver=1 where id=" + idsms + "", cnn);
                cmd_read.ExecuteNonQuery();//update read sms
                cnn.Close();
                gridinbox.DataBind();

            }
            else if (aplicate != null && aplicate == "show")
            {
                index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridinbox.Rows[index];
                System.Data.DataView dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                txtfullmsg.Text = Convert.ToString(dv.ToTable().Rows[index]["msg"]);
                int idsms = Convert.ToInt32(dv.ToTable().Rows[index]["id"]);
                txtfullmsg.Visible = true;
                btnread.Visible = true;
                cnn.Open();
                SqlCommand cmd_read = new SqlCommand("update messages  set msg_read=1 where id=" + idsms + "", cnn);
                cmd_read.ExecuteNonQuery();//update read sms
                cnn.Close();

            }

        }
    }
    protected void gridsent_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = 0;

        String editButton = Request.Params.Get("__EVENTARGUMENT");
        if (editButton != null && editButton.Contains("select"))
        {
            string aplicate = editButton.Substring(6, 4);
            if (aplicate != null && aplicate == "dell")
            {

                index = Convert.ToInt32(editButton.Substring(11, editButton.Length - 11));
                System.Data.DataView dv = (System.Data.DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                int idsms = Convert.ToInt32(dv.ToTable().Rows[index]["id"]);
                cnn.Open();
                SqlCommand cmd_read = new SqlCommand("update messages  set sender=1 where id=" + idsms + "", cnn);
                cmd_read.ExecuteNonQuery();//update read sms
                cnn.Close();
                gridsent.DataBind();

            }
            else if (aplicate != null && aplicate == "show")
            {
                index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridsent.Rows[index];
                System.Data.DataView dv = (System.Data.DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                txtfullmsg.Text = Convert.ToString(dv.ToTable().Rows[index]["msg"]);
                int idsms = Convert.ToInt32(dv.ToTable().Rows[index]["id"]);
                txtfullmsg.Visible = true;
                btnread.Visible = true;
               
            }

        }
    }


    protected void btnread_Click(object sender, EventArgs e)
    {
        txtfullmsg.Text = "";
        txtfullmsg.Visible = false;
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdatePanel1.Visible = false;
        Timer1.Enabled = false;

    }
}