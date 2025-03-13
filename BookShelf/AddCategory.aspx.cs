using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShelf
{
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionClass objCon = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string convertQuotes(string str)
        {
            return str.Replace("'", "''");
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {            
            string search = "select count(Category_Id) from Category_Table where Category_Name like '" + convertQuotes(TxtCatgName.Text) + "'";
            string count = objCon.Fn_Scalar(search);
            if (count == "0")
            {
                string p = "~/bn_images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));
                string insCatg = "insert into Category_Table values('" + convertQuotes(TxtCatgName.Text) + "','"
                                                         + convertQuotes(TxtCatDesc.Text) + "','" + p + "','Available')";
                int i = objCon.Fn_NonQuery(insCatg);
                if (i == 1)
                {
                    string script = "alert('Category inserted successfully!')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessAlert", script, true);
                }
                else
                {
                    string script = "alert('Category inserted failed')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "FailAlert", script, true);
                }
            }
            else if (count == "1")
            {
               ScriptManager.RegisterStartupScript(this, GetType(), "ShowCatgModal", "showCatgModal();", true);

            }

        }
    }
}