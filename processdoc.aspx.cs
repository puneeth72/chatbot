using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalCode
{
    public partial class processdoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["docid"] != null)
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
                try
                {
                    con.Open();
                    string query = "select * from cb_documents where Docid='" + Request.Params["docid"].ToString() + "'; ";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            {
                                docid.Text = dr.GetValue(0).ToString();
                                Label1.Text = dr.GetValue(3).ToString();
                            }
                        }
                    }
                    dr.Close();
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    con.Close();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void logi_ServerClick(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string rquery = "update cb_documents set Comment='" + TextBox1.Text + "',Status='" + DropDownList1.SelectedItem + "' where Docid='"+docid.Text+"'";
                MySqlCommand cmd = new MySqlCommand(rquery, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('TDocument processed successfully');</script>");
                Response.Write("<script>window.location='processdoc.aspx';</script>");
                //Response.Redirect("index.aspx");
                // Resetter();
            }

            catch
            {
            }
            finally
            {
                con.Close();
            }
        }


    }
}