using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.   Page
{
    
    BloodBankEntities db = new BloodBankEntities();
    Tb_Individuals obj = new Tb_Individuals();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        obj.Email = txtemail.Text;
        obj.Address = txtaddress.Text;
        obj.password = txtpassword.Text;
        obj.Contact = mobileno.Text;
        obj.BloodGroup = Drpblood.SelectedValue;
        
        obj.Sex = drpsex.SelectedValue;
        obj.Name = txtname.Text;
        obj.weight = Convert.ToInt32( txtweight.Text);
       
        db.Tb_Individuals.Add(obj);
        db.SaveChanges();

        Response.Redirect("~/signups.aspx");
        


        
    }
}