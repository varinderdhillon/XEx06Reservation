using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
    public partial class Request : System.Web.UI.Page
    {
        private string currentDate = DateTime.Today.ToShortDateString();
        private string currentYear = DateTime.Today.Year.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
			Session["a1"] = txtArrivalDate.Text;
			Session["a2"] = txtdeoarturedate.Text;
			Session["a3"] = ddlpeople.Text;
			Session["a4"] = rbbrdtype.Text;
			Session["a5"] = txtspecialnote.Text;
			Session["a6"] = txtFirstName.Text;
			Session["a7"] = txtlastname.Text;
			Session["a8"] = txtemail.Text;
			Session["a9"] = txtphone.Text;
			Session["a10"] = ddlpayment.Text;
        }

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			Response.Redirect("Reservation.aspx");
		}

		protected void btnClear_Click(object sender, EventArgs e)
		{
		
		}
	}
}