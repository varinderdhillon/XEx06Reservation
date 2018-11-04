using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
	public partial class Reservation : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
			Label1.Text = Session["a1"].ToString();
			Label2.Text = Session["a2"].ToString();
			Label6.Text = Session["a3"].ToString();
			Label7.Text = Session["a4"].ToString();
			Label8.Text = Session["a5"].ToString();
			Label3.Text = Session["a6"].ToString() + " " + Session["a7"].ToString();
			Label5.Text = Session["a8"].ToString();
			Label4.Text = Session["a9"].ToString();
			Label9.Text = Session["a10"].ToString();

		}
	}
}