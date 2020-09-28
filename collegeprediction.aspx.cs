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
    public partial class collegeprediction : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["Constr"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["rank"] != null)
            {
                rank.Text = Request.Params["rank"].ToString();
                rank.ReadOnly = true;
                BindData();
            }

        }

        protected void logi_ServerClick(object sender, EventArgs e)
        {
            BindData();
        }

        public void BindData()
        {
            try
            {
                con.Open();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("CutoffRank", typeof(string)),
                            new DataColumn("Region", typeof(string)),
                            new DataColumn("CollegeName", typeof(string)),
                            new DataColumn("Year", typeof(string)),
                            new DataColumn("Stream", typeof(string)) });
                int rnk = Int32.Parse(rank.Text);
                //string query = "SELECT * FROM cb_collegedata where CategoryRank < '" +rnk+ "'";
                string query = "SELECT * FROM `cb_collegedata` WHERE CategoryRank > cast('" + rnk + "' AS int) AND Region='Bangalore' ORDER BY CategoryRank ASC LIMIT 3";
                MySqlCommand cmd = new MySqlCommand(query, con);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        dt.Rows.Add(dr.GetValue(1).ToString(), dr.GetValue(2).ToString(), dr.GetValue(3).ToString(), dr.GetValue(4).ToString(), dr.GetValue(5).ToString());
                    }
                }
                dr.Close();

                query = "SELECT * FROM `cb_collegedata` WHERE CategoryRank > cast('" + rnk + "' AS int) AND Region='Mysore' ORDER BY CategoryRank ASC LIMIT 3";
                cmd = new MySqlCommand(query, con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        dt.Rows.Add(dr.GetValue(1).ToString(), dr.GetValue(2).ToString(), dr.GetValue(3).ToString(), dr.GetValue(4).ToString(), dr.GetValue(5).ToString());
                    }
                }
                dr.Close();

                //MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                //sda.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                //con.Close();

            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
               
            }
        }
            protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindData();
        }
    }
}