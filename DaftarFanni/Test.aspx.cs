using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DaftarFanni_Test : System.Web.UI.Page
{
    public string FilesSize { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        ByteToHumanReadableSize();
    }

    public void ByteToHumanReadableSize()
    {
        var byteCount = Directory.GetFiles(Server.MapPath("/DaftarFanni/files"), "*", SearchOption.AllDirectories)
            .Sum(t => (new FileInfo(t).Length));
        string[] suf = { "بایت", "کیلوبایت", "مگابایت", "گیگابایت", "ترابایت", "پتابایت", "EB" }; //Longs run out around EB
        if (byteCount == 0)
            FilesSize = "0 " + suf[0];
        long bytes = Math.Abs(byteCount);
        int place = Convert.ToInt32(Math.Floor(Math.Log(bytes, 1024)));
        double num = Math.Round(bytes / Math.Pow(1024, place), 1);
        FilesSize = (Math.Sign(byteCount) * num) + " " + suf[place];
    }
}
