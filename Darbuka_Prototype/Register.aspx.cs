using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Darbuka_Prototype
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(rolestore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtRegEmail.Text,
                Email = txtRegEmail.Text
            };

            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);

                litRegisterError.Text = "Registration Successful";
                //todo: log in
            }
            else
            {
                litRegisterError.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
            };


        }
    }
}