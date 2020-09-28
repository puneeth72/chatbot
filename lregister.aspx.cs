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
    public partial class lregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Reset(object sender, EventArgs e)
        {
            Resetter();
        }

        void Resetter()
        {
            Response.Redirect("register.aspx");

        }

        protected void Submit(object sender, EventArgs e)
        {
            if (uname.Value == "" || name.Value == "" || age.Value == "" || gender.Value == "--Select--" || mailid.Value == "" || phone.Value == "")
            {
                Response.Write("<script>alert('Please fill all details!!!');</script>");
            }
            else
            {
               
                {
                    MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["ConStr"]);
                    try
                    {
                        con.Open();
                        string rquery = "insert into lf_luserdata values('" + uname.Value + "','" + pswd.Value + "','" + name.Value + "','" + age.Value + "','" + mailid.Value + "','" + gender.Value + "','" + phone.Value + "','"+addr.Text+"','"+DropDownList1.SelectedValue+"');";
                        MySqlCommand cmd = new MySqlCommand(rquery, con);
                        cmd.ExecuteNonQuery();
                       
                        Response.Write("<script>alert('Thank you for registering with us!!!');</script>");
                        Response.Write("<script>window.location='lregister.aspx';</script>");
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
    }
}