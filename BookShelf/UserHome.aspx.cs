using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace BookShelf
{
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getName();
                BindDataList();
            }
        }
        public void BindDataList()
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            string query = "select * from Category_Table where Status='Available'";
            DataTable dt = objCon.Fn_DataTable(query);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            
        }

        public void getName()
        {
            string getName = "select Name from User_Table where User_Id = " + Session["uid"] + "";
            string name = objCon.Fn_Scalar(getName);
            navbarDropdown.InnerText = name;
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getId = Convert.ToInt32(e.CommandArgument);
            Session["ctgId"] = getId;
            Response.Redirect("ViewAllBooks.aspx");
        }

        protected void searchButton_ServerClick(object sender, EventArgs e)
        {
            string searchVal = searchText.Value;
            string searchCatg = "select * from Category_Table where Category_Name like '%" + searchVal + "%' and Status='Available'";
            DataTable dt = objCon.Fn_DataTable(searchCatg);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            if (dt != null) 
            {
                if (dt.Rows.Count > 0)
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                else
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                }
            }
        }
    }
} 