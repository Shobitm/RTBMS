using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_addhospitalpannel : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_pannel obj = new Tb_pannel();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["catid"] != null)
        {
            int id = Convert.ToInt32(Request.QueryString["catid"]);
            fill(id);
        }
    }


    private void fill(int id)
    {
        obj = db.Tb_pannel.Where(z => z.Id == id).FirstOrDefault();

        txtunits.Text =   obj.Units.ToString();
        // Drpblood.SelectedValue = obj.Id.ToString();

        btnsubmit.Text = "Updates";
        ViewState["id"] = obj.Id;


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (btnsubmit.Text == "Submit")
        {


            //obj.BloodGroup = Drpblood.SelectedValue;
            obj.Units = Convert.ToInt32( txtunits.Text);
            //obj.Hospitalname = Request.Cookies["UserName"].Value;
            obj = db.Tb_pannel.Add(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/HospitalPannel.aspx");
        }
        else
        {
            obj = db.Tb_pannel.Find(Convert.ToInt32(ViewState["id"]));
            //obj.BloodGroup = Drpblood.SelectedValue;

            obj.Units = Convert.ToInt32( txtunits.Text);
            db.SaveChanges();
            Response.Redirect("~/Admin/HospitalPannel.aspx?msg=" + "upd");



        }

    }
}