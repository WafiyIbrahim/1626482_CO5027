using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Darbuka_Prototype.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["Id"];
            string filename = productID + ".jpg";

            ImageEditPage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void btnBackToAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/index.aspx");
        }

        protected void btnBackToList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ListPage.aspx");
        }
    }
}