﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Darbuka_Prototype.Admin
{
    public partial class ListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBackToAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/index.aspx");
        }
    }
}