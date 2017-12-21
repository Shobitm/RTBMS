using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin : System.Web.UI.MasterPage
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Admin obj = new Tb_Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] == null)
        {
            Response.Redirect("~/AdminLogin.aspx");


        }
    }
}
