using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Darbuka_Prototype
{
    public partial class ProductDesc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityProduct = int.Parse(ddlQuantity.SelectedValue);
            decimal subTotal = (quantityProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;
        }
    }
}