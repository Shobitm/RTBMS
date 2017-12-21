using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["Email"] != null)
            {
                HttpCookie ck = new HttpCookie("Email");
                ck.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(ck);

                FormsAuthentication.SignOut();
            }
            Response.Redirect("Login.aspx");
        }

    }
}