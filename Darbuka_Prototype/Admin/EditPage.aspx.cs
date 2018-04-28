using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Darbuka_Prototype.Admin
{
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkSaveImage_Click(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/Pictures/ProductPic/" + fle.FileName + ".jpg"));
                Label li = (Label)FormView1.FindControl("lblImageSave") as Label;
                li.Text = "~/Pictures/ProductPic/" + fle.FileName + ".jpg";
            }
        }
    }
}