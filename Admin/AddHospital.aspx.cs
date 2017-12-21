using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddHospital : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Admin obj1 = new Tb_Admin();
    Tb_Hospital obj = new Tb_Hospital();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {

        
        obj.Name = txthosname.Text;
        obj.Zipcode = Convert.ToInt32(txtzipcode.Text);
        obj.City = txtcity.Text;
        obj.Contact = txtcontact.Text;
        obj.Email = txtemail.Text;
        obj.Date = DateTime.Now;
        obj.Credentials = txtemail.Text;
        //Add To Admin Table
        obj1.Username = txtuser.Text;
        obj1.Password = txtrepass.Text;
        obj1.Usertype = "Hospital";
        db.Tb_Hospital.Add(obj);
      
        db.Tb_Admin.Add(obj1);
        db.SaveChanges();
        Response.Redirect("~/Admin/ViewHospital.aspx?msg=" + "Svd");
    
        
        clear();
        }
        catch (Exception ex)
        { }
        }

    private void clear()
    {
        txtcity.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        txthosname.Text = "";
        txtpass.Text = "";
        txtrepass.Text = "";
        txtuser.Text = "";
        txtzipcode.Text = "";
    }
}