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
    public partial class upload : System.Web.UI.Page
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
                finally
                {
                    con.Close();
                }
            }
        }

        protected void logi_ServerClick(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                if (EPFileUpload1.HasFile && (Path.GetExtension(EPFileUpload1.FileName).Equals(".pdf") || Path.GetExtension(EPFileUpload1.FileName).Equals(".jpg")))
                {
                    Random r = new Random();
                    String docid = "EP" + r.Next(123123, 999999);
                    EPFileUpload1.SaveAs(Server.MapPath("~/Uploads/") + EPFileUpload1.FileName);
                    String path = Server.MapPath("~/Uploads/") + EPFileUpload1.FileName;

                    string query = "insert into cb_documents values('" + docid + "','" + Session["Username"].ToString() + "','Education Proof','" + EPFileUpload1.FileName + "','" + path + "','Pending','----');";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Response.Write("<script>alert('Please upload education proof documents in pdf or jpg');</script>");
                }

                if (SMFileUpload1.HasFile && (Path.GetExtension(SMFileUpload1.FileName).Equals(".pdf") || Path.GetExtension(SMFileUpload1.FileName).Equals(".jpg")))
                {
                    Random r = new Random();
                    String docid = "SM" + r.Next(123123, 999999);
                    SMFileUpload1.SaveAs(Server.MapPath("~/Uploads/") + SMFileUpload1.FileName);
                    String path = Server.MapPath("~/Uploads/") + SMFileUpload1.FileName;

                    string query = "insert into cb_documents values('" + docid + "','" + Session["Username"].ToString() + "','Education Proof','" + SMFileUpload1.FileName + "','" + path + "','Pending','----');";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Response.Write("<script>alert('Please upload SSLC markscard documents in pdf or jpg');</script>");
                }

                if (PMFileUpload1.HasFile && (Path.GetExtension(PMFileUpload1.FileName).Equals(".pdf") || Path.GetExtension(PMFileUpload1.FileName).Equals(".jpg")))
                {
                    Random r = new Random();
                    String docid = "PU" + r.Next(123123, 999999);
                    PMFileUpload1.SaveAs(Server.MapPath("~/Uploads/") + PMFileUpload1.FileName);
                    String path = Server.MapPath("~/Uploads/") + PMFileUpload1.FileName;

                    string query = "insert into cb_documents values('" + docid + "','" + Session["Username"].ToString() + "','Education Proof','" + PMFileUpload1.FileName + "','" + path + "','Pending','----');";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Response.Write("<script>alert('Please upload PUC markscard documents in pdf or jpg');</script>");
                }

                if (APFileUpload1.HasFile && (Path.GetExtension(APFileUpload1.FileName).Equals(".pdf") || Path.GetExtension(APFileUpload1.FileName).Equals(".jpg")))
                {
                    Random r = new Random();
                    String docid = "PU" + r.Next(123123, 999999);
                    APFileUpload1.SaveAs(Server.MapPath("~/Uploads/") + APFileUpload1.FileName);
                    String path = Server.MapPath("~/Uploads/") + APFileUpload1.FileName;

                    string query = "insert into cb_documents values('" + docid + "','" + Session["Username"].ToString() + "','Education Proof','" + APFileUpload1.FileName + "','" + path + "','Pending','----');";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Response.Write("<script>alert('Please upload address proof documents in pdf or jpg');</script>");
                }
            }
            finally
            {
                con.Close();
                Response.Write("<script>alert('Documents have been uploaded for review');</script>");
                Response.Write("<script>window.location='upload.aspx';</script>");
            }

        }
    }
}