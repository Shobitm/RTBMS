using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{


   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }




    protected void btnsave_Click2(object sender, EventArgs e)
    {
        
        BloodBankEntities db = new BloodBankEntities();

        Tb_Admin objuser = new Tb_Admin();
            if (db.Tb_Admin.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text ).Count() > 0)
            {

                objuser = db.Tb_Admin.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text ).FirstOrDefault();
                Response.Cookies["UserName"].Value = objuser.Username;
                Response.Cookies["Usertype"].Value = objuser.Usertype;

                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);
                Response.Redirect("~/Admin/Default.aspx");
                Response.Cookies["UserName"].Value = objuser.Username;
                Response.Cookies["Usertype"].Value = objuser.Usertype;

            }
            else
            {
                Response.Redirect("~/Adminlogin.aspx?msg=" + "error");
                
            }
        }
       
        }
