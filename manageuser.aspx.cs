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
    public partial class manageuser : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
        public void BindData()
        {
            con.Open();
            //string uname = Session["RegisterName"].ToString();
            string query = "SELECT * FROM cb_userdata";
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
            string query = "Delete from cb_userdata where username = '" + row.Cells[0].Text + "'";
            MySqlCommand cmd = new MySqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();

            Response.Write("<script>alert('Deleted Successfully!!!');</script>");
            Response.Write("<script>window.location='manageuser.aspx'</script>");
        }
    }
}