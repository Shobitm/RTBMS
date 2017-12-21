using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEvents : System.Web.UI.Page
{
    BloodBankEntities db = new BloodBankEntities();
    Tb_Events obj = new Tb_Events();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        obj.Heading = txthead.Text;
        obj.HospitalName = txthosname.Text;
        obj.Descripton = txtdis.Text;
        obj.DateTime = txtdate.Text;
        obj.Axis = txtaxis.Text;
        obj.Duration = txtduration.Text;
        obj = db.Tb_Events.Add(obj);
        db.SaveChanges();

        Response.Redirect("~/Admin/ShowEvents.aspx?msg=" + "Svd");

    }
}