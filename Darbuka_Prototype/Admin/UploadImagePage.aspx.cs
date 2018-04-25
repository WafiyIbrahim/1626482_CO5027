using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Darbuka_Prototype.Admin
{
    public partial class UploadImagePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String productId = Request.QueryString["Id"];
            String filename = productId + ".jpg";

            ImageEditPage.ImageUrl = "~/Pictures/ProductPic/" + filename;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["Id"];

            string filename = productID + ".jpg";
            string saveLocation = Server.MapPath("~/Pictures/ProductPic/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }
    }
}