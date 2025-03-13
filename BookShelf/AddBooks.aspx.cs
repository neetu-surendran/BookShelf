using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BookShelf
{
    public partial class AddBooks : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fillDdlQuery = "select Category_Id, Category_Name from Category_Table";
                DataTable dt = objCon.Fn_DataTable(fillDdlQuery);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-- Select --", "0"));
            }

        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }

        protected void BtnAddBook_Click(object sender, EventArgs e)
        {
            string coverImage = "~/bn_images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(coverImage));

            string insBookQuery = "insert into Books_Table values("+ DropDownList1.SelectedItem.Value +",'"
                                                                   + convertQuotes(TxtTitle.Text) +"','"+ TxtAuthor.Text +"',"
                                                                   + TxtPrice.Text +",'"+ convertQuotes(TxtPublisher.Text)+"','"
                                                                   + TxtPubYear.Text + "',"+ TxtStock.Text +",'"
                                                                   + convertQuotes(TxtBDesc.Text) +"','"+ coverImage +"','"
                                                                   + TxtISBN.Text +"','Available')";
            int i = objCon.Fn_NonQuery(insBookQuery);
            if (i == 1)
            {
                string script = "alert('Book inserted successfully!')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessAlert", script, true);
            }
            else
            {
                string script = "alert('Book inserted failed')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
            }

        }
    }
}