using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_HospitalPannel : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_pannel obj = new Tb_pannel();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["catids"] != null)
        {
            int id = Convert.ToInt32(Request.QueryString["catids"]);
            fill(id);
        }
    }


    private void fill(int id)
    {
        obj = db.Tb_pannel.Where(z => z.Id == id).FirstOrDefault();

        unita.Text = obj.types.ToString();
        Drpblood.SelectedValue = obj.Id.ToString();
        
        btnsubmit.Text = "Updates";
        ViewState["id"] = obj.Id;
        

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (btnsubmit.Text == "Submit")
        {


            obj.BloodGroup = Drpblood.SelectedValue;
            obj.types = Convert.ToInt32( unita.Text);
            //obj.Hospitalname = Request.Cookies["UserName"].Value;
            obj = db.Tb_pannel.Add(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/HospitalPannel.aspx");
        }
        else
        {
            obj = db.Tb_pannel.Find(Convert.ToInt32(ViewState["id"]));

            obj.types = Convert.ToInt32( unita.Text);
            obj.BloodGroup = Drpblood.SelectedValue;
            
           
            db.SaveChanges();
            Response.Redirect("~/Admin/HospitalPannel.aspx?msg=" + "upd");
        


        }

    }
}