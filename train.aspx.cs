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
    public partial class train : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random r = new Random();
                Session["Chatid"] = "Chat" + r.Next(123, 99999);
                //Session["Uname"] = "aaa";
                // Session["Name"] = "abc";
            }
        }
        

        protected void Submit(object sender, EventArgs e)
        {
               
                    MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
          
                string rquery = "insert into chats(Chatid,Userchat,Botchat) values('" + Session["Chatid"].ToString() + "','" + pattern.Value+ "','" + resp.Value + "');";
                MySqlCommand cmd = new MySqlCommand(rquery, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Pattern Loaded to chatbot');</script>");
                Response.Write("<script>window.location='train.aspx';</script>");
                //Response.Redirect("index.aspx");
                // Resetter();
            }

            catch(Exception ex)
            {
            }
            finally
            {
                con.Close();
            }
        }
         
        protected void Reset(object sender, EventArgs e)
        {
            Resetter();
        }

        void Resetter()
        {
            Response.Redirect("train.aspx");

        }
    }
}