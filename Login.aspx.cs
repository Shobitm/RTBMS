using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Individuals objuser = new Tb_Individuals();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        if (db.Tb_Individuals.Where(z => z.Email == txtemail.Text && z.password== pass.Text).Count() > 0)
        {

            objuser = db.Tb_Individuals.Where(z => z.Email== txtemail.Text && z.password== pass.Text).FirstOrDefault();
            Response.Cookies["Email"].Value = objuser.Email;
            

            FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);
            Response.Redirect("~/AfterLogin/Default3.aspx");
            Response.Cookies["Email"].Value = objuser.Email;
            

        }
        else
        {
            Response.Redirect("~/Login.aspx?msg=" + "error");

        }
    }
}