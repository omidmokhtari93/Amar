﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Decor_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_exit_OnClick(object sender, EventArgs e)
    {
       Response.Redirect("../login.aspx");
    }
}
