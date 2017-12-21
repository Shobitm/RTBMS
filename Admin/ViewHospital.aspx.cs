using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewHospital : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Hospital obj = new Tb_Hospital();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            obj = db.Tb_Hospital.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_Hospital.Remove(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/ViewHospital.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {

        }
    }
}