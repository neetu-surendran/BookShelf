using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace BookShelf
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        SpConnectionClass objCon = new SpConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            DateTime start = DateTime.ParseExact(my_date_picker1.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            DateTime end = DateTime.ParseExact(my_date_picker2.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_ViewOrders";

            cmd.Parameters.AddWithValue("@userId", Session["uid"]);
            cmd.Parameters.AddWithValue("@startDate", start);
            cmd.Parameters.AddWithValue("@endDate", end);

            DataTable dt = objCon.Fn_DataTable(cmd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}