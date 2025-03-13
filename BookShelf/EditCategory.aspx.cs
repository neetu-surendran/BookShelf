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
    public partial class EditCategory : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        string getAllCatg = "select * from Category_Table";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid(getAllCatg);
            }
        }

        public void BindGrid(string query)
        {           
            DataTable dt = objCon.Fn_DataTable(query);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public void BindGrid2(int getId)
        {
            string getCatg = "select * from Category_Table where Category_Id=" + getId + "";
            DataTable dt = objCon.Fn_DataTable(getCatg);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
            int getId = Convert.ToInt32(row.Cells[0].Text);
            Panel2.Visible = true;
            Panel1.Visible = false;
            BindGrid2(getId);
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            int getId = Convert.ToInt32(GridView2.DataKeys[e.NewEditIndex].Values[0]);
            BindGrid2(getId);
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            int getId = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
            BindGrid2(getId);
            Panel2.Visible = false;
            Panel1.Visible = true;
        }

        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];

            string newDescription = ((TextBox)row.Cells[2].Controls[0]).Text.Trim();
            string description;
            if (string.IsNullOrEmpty(newDescription))
            {
                description = GridView2.DataKeys[e.RowIndex].Values[1].ToString();
            }
            else
            {
                description = convertQuotes(newDescription);
            }
     
            string newStatus = ((DropDownList)row.Cells[3].FindControl("ddlStatus")).SelectedItem.Value;
            string status = string.IsNullOrEmpty(newStatus) ? 
                                    GridView2.DataKeys[e.RowIndex].Values[3].ToString() : newStatus;

            string newImage = ((FileUpload)row.Cells[4].FindControl("FileUpload1")).FileName;
            string image = string.IsNullOrEmpty(newImage)? 
                                    GridView2.DataKeys[e.RowIndex].Values[2].ToString():("~/bn_images/" + newImage);           
            ((FileUpload)row.Cells[4].FindControl("FileUpload1")).SaveAs(MapPath(image));

            int getId = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
            string query = "update Category_Table set Description = '"+ description + "', Cover_Image = '"
                                                                      + image +"', Status ='"+ status +"' where Category_Id = "
                                                                      + getId +"";
            objCon.Fn_NonQuery(query);

            GridView2.EditIndex = -1;
            BindGrid2(getId);
            Panel2.Visible = false;
            Panel1.Visible = true;
            BindGrid(getAllCatg);
        }

        protected void searchButton_ServerClick(object sender, EventArgs e)
        {
            string searchVal = searchText.Value;
            string searchCatg = "select * from Category_Table where Category_Name like '%" + searchVal + "%'";
            BindGrid(searchCatg);
            Panel2.Visible = false;
            Panel1.Visible = true;
        }
    }
}