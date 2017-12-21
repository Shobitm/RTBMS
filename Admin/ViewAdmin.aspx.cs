using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewAdmin : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Admin obj = new Tb_Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            obj = db.Tb_Admin.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_Admin.Remove(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/ViewAdmin.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {

        }
    }
}