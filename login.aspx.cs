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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {
          
            {
                Session.Clear();
                if (uname.Value.Equals(string.Empty) | pswd.Value.Equals(string.Empty))
                {
                    Response.Write("<script>alert('Please enter the details!!!');</script>");
                }
                else
                {
                    if (uname.Value.Equals("admin") & pswd.Value.Equals("admin"))
                    {
                        Session["Username"] = uname.Value;
                        Response.Redirect("adminhome.aspx");
                    }
                    MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["ConStr"]);
                    try
                    {
                        con.Open();
                        string query = "select * from cb_userdata where cet='" + uname.Value + "' and pswd='" + pswd.Value + "'; ";
                        MySqlCommand cmd = new MySqlCommand(query, con);
                        MySqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                string un = dr.GetValue(9).ToString();
                                string pd = dr.GetValue(2).ToString();
                                if (uname.Value.Equals(un) & pswd.Value.Equals(pd))
                                {
                                    Session["Username"] = uname.Value;
                                    Session["Name"] = dr.GetValue(3).ToString(); ;
                                    Response.Redirect("userhome.aspx");
                                }
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid Register!!!');</script>");
                        }
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
        }
    }
}