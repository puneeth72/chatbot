using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using MySql.Data.MySqlClient;
using System.Data;

namespace FinalCode
{
    public partial class uploadold : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    con.Open();
                    string query = "select * from cb_document where Upldby='" + Session["Registername"].ToString() + "'; ";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            {
                                lbled.InnerText = dr.GetValue(3).ToString();
                                lblslc.InnerText  = dr.GetValue(6).ToString();
                                lblpc.InnerText = dr.GetValue(9).ToString();
                                lbladd.InnerText = dr.GetValue(12).ToString();
                            }
                        }
                    }
                    dr.Close();
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void logi_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string fileName = Path.GetFileName(eduproof.PostedFile.FileName);
                eduproof.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
                //var path = Server.MapPath("~/Uploads");
                //var fullpath = Path.Combine(path,fileName);
               string path = Server.MapPath(@".\Uploads\") + (fileName);

                string fileName1 = Path.GetFileName(slcproof.PostedFile.FileName);
                slcproof.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName1);
                string path1 = Server.MapPath(@".\Uploads\") + (fileName1);

                string fileName2 = Path.GetFileName(pcproof.PostedFile.FileName);
                pcproof.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName2);
                string path2 = Server.MapPath(@".\Uploads\") + (fileName2);

                string fileName3 = Path.GetFileName(addproof.PostedFile.FileName);
                addproof.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName3);
                string path3 = Server.MapPath(@".\Uploads\") + (fileName3);

                //Response.Redirect(Request.Url.AbsoluteUri);
                con.Open();
                string query = "insert into cb_document(Upld1,Upldpth1,Upld2,Upldpth2,Upld3,Upldpth3,Upld4,Upldpth4,Upldby) values('" + fileName+ "','"+path+"','" + fileName1 + "','" + path1 + "','" + fileName2 + "','" + path2 + "','" + fileName3 + "','" + path3 + "','" + Session["Registername"].ToString() + "');";
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('File has been uploaded successfully !!!');</script>");
            }
            catch(Exception ex)
            {

            }
            finally
            {
                con.Close();
                //Response.Write("<script>alert('File has been uploaded successfully !!!');</script>");
                //Response.Redirect("fileupload.aspx");
            }
        }
    }
}