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
    public partial class ViewCart : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getName();
                string checkCart = "select Count(Cart_Id) from Cart_Table";
                string items = objCon.Fn_Scalar(checkCart).ToString();
                if (Convert.ToInt32(items) == 0)
                {
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                }
                else
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                BindGrid();
            }
        }
        public void getName()
        {
            string getName = "select Name from User_Table where User_Id = " + Session["uid"] + "";
            string name = objCon.Fn_Scalar(getName);
            navbarDropdown.InnerText = name;
        }
        public void BindGrid()
        {
            string getCart = "select Cart_Id, Books_Table.Title, Books_Table.Cover_Image, Quantity, Unit_Price, Sub_Total " +
                                    "from Cart_Table inner join Books_Table on Cart_Table.Book_Id = Books_Table.Book_Id" +
                                    " where Cart_Table.User_Id="+ Session["uid"] +"";
            DataTable dt = objCon.Fn_DataTable(getCart);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int getId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            int quantity = Convert.ToInt32(((TextBox)row.Cells[3].Controls[0]).Text);
            decimal price = Convert.ToDecimal(row.Cells[4].Text);
            decimal newTotal = quantity * price;
            string update = "update Cart_Table set Quantity = "+ quantity +", Sub_Total = "+ newTotal 
                                                                +" where Cart_Id = "+ getId +"";
            objCon.Fn_NonQuery(update);

            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int getId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string delItem = "delete from Cart_Table where Cart_Id = "+ getId +"";
            objCon.Fn_NonQuery(delItem);
            BindGrid();
            string checkCart = "select Count(Cart_Id) from Cart_Table";
            string items = objCon.Fn_Scalar(checkCart).ToString();
            if (Convert.ToInt32(items) == 0)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;               
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string itemsCount = "select Max(Cart_Id) from Cart_Table";
            string maxCart = objCon.Fn_Scalar(itemsCount);
            string date = DateTime.Now.ToString("yyyy-MM-dd");
            for (int i = 1; i <= Convert.ToInt32(maxCart); i++)
            {
                string singleItem = "select * from Cart_Table where Cart_Id = "+ i +" and User_Id = "+ Session["uid"] +"";
                SqlDataReader dr = objCon.Fn_Reader(singleItem);
                int userId = 0, bkId = 0, quantity = 0;
                decimal subTotal = 0;
                while (dr.Read())
                {
                    userId = Convert.ToInt32(dr["User_Id"]);
                    bkId = Convert.ToInt32(dr["Book_Id"]);
                    quantity = Convert.ToInt32(dr["Quantity"]);
                    subTotal = Convert.ToDecimal(dr["Sub_Total"]);
                }
                string insQuery = "insert into Order_Table values("+ userId + ","+ bkId +", NULL,"+ quantity +",'"
                                                                    + date +"','Ordered',"+ subTotal +")";
                objCon.Fn_NonQuery(insQuery);
                string delQuery = "delete from Cart_Table where Cart_Id = "+ i +"";
                objCon.Fn_NonQuery(delQuery);
            }
            Response.Redirect("SelectPayment.aspx");
        }
    }
}