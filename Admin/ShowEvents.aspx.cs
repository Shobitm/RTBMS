using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowEvents : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Events obj = new Tb_Events();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            obj = db.Tb_Events.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_Events.Remove(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/ShowEvents.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {

        }
    }
}