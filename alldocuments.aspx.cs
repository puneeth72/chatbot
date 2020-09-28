using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalCode
{
    public partial class alldocuments : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
        public void BindData()
        {
            con.Open();
            //string uname = Session["UserName"].ToString();
            string query = "SELECT cb_documents.*,cb_userdata.named FROM cb_documents,cb_userdata where Upby=cet";
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        protected void Delete(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            int id = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[id];
            string query = "Delete from lf_luserdata where username = '" + row.Cells[0].Text + "'";
            MySqlCommand cmd = new MySqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();

            Response.Write("<script>alert('Deleted Successfully!!!');</script>");
            Response.Write("<script>window.location='manageuser.aspx'</script>");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Process")
            {
                int x = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[x];                
                {
                    Response.Redirect("processdoc.aspx?docid="+ row.Cells[0].Text);
                }
            }
            
        }
    }
}