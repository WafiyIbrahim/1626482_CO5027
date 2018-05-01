using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

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

            var clientId = "ATQaU4q8O7_JJFYS6ky9VJXe4LnPeAj9d6x7kTBqWjfROo0-yf8O5iCxp9wTIc04JXjcqK2FaPsRE_Pl";
            var clientSecret = "EH9hlRKiqI-__hWkNl0sYGHMkhw7tx4sHeUglveQ3tiUseGb5NbU-yKbEmEx4QGt7LeYiMkSlk5K_5fp";

            var sdkConfig = new Dictionary<string, string>
            {
                {"mode", "sandbox" },
                {"clientId", "clientId" },
                {"clientSecret", "clientSecret" }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;
            

            var productItem = new Item();
            productItem.name = "Product 1";
            productItem.currency = "BND";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1";
            productItem.quantity = quantityProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "BND";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "Default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "CompletePurcahse.aspx";


            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower ().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }


        }
    }
}