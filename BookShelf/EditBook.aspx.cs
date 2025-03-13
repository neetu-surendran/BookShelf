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
    public partial class EditBook : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        string getAllBooks = "select * from Books_Table";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid(getAllBooks);
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
            string getBook = "select * from Books_Table where Book_Id=" + getId + "";
            DataTable dt = objCon.Fn_DataTable(getBook);
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid(getAllBooks);
        }
        public string convertQuotes(string str)
        {
            return str.Replace("'","''");
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];

            int getId = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);

            decimal price;
            string newPrice = ((TextBox)row.Cells[4].Controls[0]).Text;
            if(decimal.TryParse(newPrice, out decimal parsedPrice))
            {
                price = parsedPrice;
            }
            else
            {
                price = 0;
            }
            
            string newPublisher = ((TextBox)row.Cells[5].Controls[0]).Text.Trim();
            string publisher = string.IsNullOrEmpty(newPublisher) ?
                                    GridView2.DataKeys[e.RowIndex].Values[2].ToString() : newPublisher;

            string newYear = ((TextBox)row.Cells[6].Controls[0]).Text.Trim();
            string year = string.IsNullOrEmpty(newYear) ?
                                    GridView2.DataKeys[e.RowIndex].Values[3].ToString() : newYear;

            int stock;
            string newStock = ((TextBox)row.Cells[7].Controls[0]).Text.Trim();
            if (int.TryParse(newStock, out int parsedStock))
            {
                stock = parsedStock;
            }
            else
            {
                stock = 0;
            }
            
            string newDescription = ((TextBox)row.Cells[8].Controls[0]).Text.Trim();
            string description;
            if (string.IsNullOrEmpty(newDescription))
            {
                description = GridView2.DataKeys[e.RowIndex].Values[5].ToString();
            }
            else
            {
                description = convertQuotes(newDescription);
            }
           
            string newImage = ((FileUpload)row.Cells[9].FindControl("FileUpload1")).FileName;
            string image = string.IsNullOrEmpty(newImage) ?
                                    GridView2.DataKeys[e.RowIndex].Values[6].ToString() : ("~/bn_images/" + newImage);
            ((FileUpload)row.Cells[9].FindControl("FileUpload1")).SaveAs(MapPath(image));

            string newISBN = ((TextBox)row.Cells[10].Controls[0]).Text.Trim();
            string ISBN = string.IsNullOrEmpty(newISBN) ?
                                    GridView2.DataKeys[e.RowIndex].Values[7].ToString() : newISBN;

            string newStatus = ((DropDownList)row.Cells[11].FindControl("ddlStatus")).SelectedItem.Value;
            string status = string.IsNullOrEmpty(newStatus) ?
                                    GridView2.DataKeys[e.RowIndex].Values[8].ToString() : newStatus;

            string query = "update Books_Table set Price = "+ price +", Publisher = '"+ publisher +"', Publication_Year='"
                                                            + year +"', Stock = "+ stock +", Description='"
                                                            + description +"', Cover_Image='"+ image +"', ISBN = '"
                                                            + ISBN +"', Status = '"+ status +"' where Book_Id = "+ getId +"";
            objCon.Fn_NonQuery(query);

            GridView2.EditIndex = -1;
            BindGrid2(getId);
            Panel2.Visible = false;
            Panel1.Visible = true;
            BindGrid(getAllBooks);    
        }

        protected void searchButton_ServerClick(object sender, EventArgs e)
        {
            string searchVal = searchText.Value;
            string searchCatg = "select * from Books_Table where Title like '%" + searchVal + "%'";
            BindGrid(searchCatg);
            Panel2.Visible = false;
            Panel1.Visible = true;
        }
    }
}