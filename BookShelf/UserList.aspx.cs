using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookShelf
{
    public partial class UserList : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserListGrid();
            }
        }

        public void LoadUserListGrid()
        {
            string getUserList = "select User_Id, Name, Email, Address, State, Phone, Photo, Status from User_Table";
            DataTable dt = objCon.Fn_DataTable(getUserList);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadUserListGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadUserListGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string newStatus = ((DropDownList)row.Cells[7].FindControl("DdlUserStatus")).SelectedItem.Value;
            string status = string.IsNullOrEmpty(newStatus) ?
                                    GridView1.DataKeys[e.RowIndex].Value.ToString() : newStatus;
            int getId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string query = "update User_Table set Status = '"+ status +"' where User_Id = "+ getId +"";
            objCon.Fn_NonQuery(query);

            GridView1.EditIndex = -1;
            LoadUserListGrid();
        }
    }
}