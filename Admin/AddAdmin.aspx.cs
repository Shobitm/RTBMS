using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Admin obj = new Tb_Admin();
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
    //    int id = Convert.ToInt32(Request.QueryString["catid"]);
    //    fill(id);
    //}


    //private void fill(int id)
    //{
    //  obj = db.Tb_Admin.Where(z => z.Id == id).FirstOrDefault();

    //    //txtadminname.Text = obj.Username;   
    //    //password.Text = obj.Password;
        
    //    btnsubmit.Text = "Update";
    //    ViewState["id"] = obj.Id;
        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        BloodBankEntities db = new BloodBankEntities();
        Tb_Admin obj = new Tb_Admin();
        obj.Username = txtadminname.Text;
        obj.Password = password.Text;
        obj.Usertype = "Admin";
        db.Tb_Admin.Add(obj);
        db.SaveChanges();

        Response.Redirect("~/Admin/ViewAdmin.aspx?msg=" + "Svd");

    }

    
}