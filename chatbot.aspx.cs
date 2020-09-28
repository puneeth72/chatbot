using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalCode
{
    public partial class chatbot : System.Web.UI.Page
    {
        Random stComp = new Random();
        List<string> stageval = new List<string> { "-1" };
        int mindist = 90;
        int maxdist = 99;
        static string content = string.Empty;
        int limit = 110;
        static List<String> procFilenames = new List<string>();

        static string[] queryProcessor;
        static List<String> totalpara = new List<String>();
        string finalquery = String.Empty;

        static string fdata = string.Empty;
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

        protected void Reset(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = string.Empty;
            string bot = string.Empty;
            string txtVal = TextBox1.Text;
            txtVal = txtVal.ToLower().Replace("comed-k", "comedk");
            txtVal = txtVal.ToLower().Replace("cut-off", "cutoff");
            txtVal = txtVal.ToLower().Replace("cut off", "cutoff");
            txtVal = txtVal.ToLower().Replace("k-cet", "kcet");
            ClusteringTechnique(txtVal.ToLower());

            Random ra = new Random();
            int nn = ra.Next(1,9);
            int dc = DateTime.Today.DayOfYear;
           
            {
                if (txtVal.ToLower().Equals("hi") || txtVal.ToLower().Equals("hello"))
                {
                    if (nn < 5)
                        bot = "Hi " + Session["Name"].ToString();
                    else
                        bot = "Hello " + Session["Name"].ToString();
                }
                else if (txtVal.ToLower().Equals("cya") || txtVal.ToLower().Contains("see you later") || txtVal.ToLower().Contains("goodbye") || txtVal.ToLower().Equals("bye") || txtVal.ToLower().Contains("i am leaving"))
                {
                    if (nn < 5)
                        bot = "Bye !! Have a nice day";
                    else
                        bot = "Goodbye !! ";
                }
                else if (txtVal.ToLower().Contains("how many hours you work") || txtVal.ToLower().Contains("when are you guys open") || txtVal.ToLower().Contains("what are your hours") || txtVal.ToLower().Contains("hours of operation"))
                {
                    bot = "I will be available all the time online for your service.";
                }
                else if (txtVal.ToLower().Contains("your name") || txtVal.ToLower().Contains("what should I call you"))
                {
                    if (nn < 5)
                        bot = "You can call me VVBOT.";
                    else
                        bot = "I'm VVBOT aka VVCE's very own bot.";
                }
                else if (txtVal.ToLower().Contains("fee structure for cet") || txtVal.ToLower().Contains("fee structure for comedk") || (txtVal.ToLower().Contains("fee") || txtVal.ToLower().Contains("comedk")) || (txtVal.ToLower().Contains("fee") || txtVal.ToLower().Contains("cet")))
                {
                    bot = "Fee for CET is 78000 and Comed-K 200000";
                }
                else if (txtVal.ToLower().Contains("scholorship"))
                {
                    bot = "Based on merit and based on caste.";
                }

                else if ((txtVal.ToLower().Contains("cutoff cs") || txtVal.ToLower().Contains("cs")))
                {
                    bot = "Cutoff for CS is 6500";
                }
                else if ((txtVal.ToLower().Contains("cutoff ec") || txtVal.ToLower().Contains("ec")))
                {
                    bot = "Cutoff for EC is 11000";
                }
                else if ((txtVal.ToLower().Contains("cutoff eee") || txtVal.ToLower().Contains("eee")))
                {
                    bot = "Cutoff for EEE is 15000";
                }
                else if ((txtVal.ToLower().Contains("cutoff civil") || txtVal.ToLower().Contains("civil")))
                {
                    bot = "Cutoff for Civil is 12000";
                }
                else if ((txtVal.ToLower().Contains("cutoff mech") || txtVal.ToLower().Contains("mech")))
                {
                    bot = "Cutoff for Mechanical is 8000";
                }


                else if ((txtVal.ToLower().Contains("list") || txtVal.ToLower().Contains("students")) || (txtVal.ToLower().Contains("list") || txtVal.ToLower().Contains("documents")) || (txtVal.ToLower().Contains("verified") || txtVal.ToLower().Contains("students")) || (txtVal.ToLower().Contains("verified") || txtVal.ToLower().Contains("documents")) || (txtVal.ToLower().Contains("checked") || txtVal.ToLower().Contains("documents")) || (txtVal.ToLower().Contains("checked") || txtVal.ToLower().Contains("students")))
                {
                    bot = "Please visit <a href=https://cetonline.karnataka.gov.in/kea/ target=_blank>kea.kar.nic.in website</a>";
                }


                else if ((txtVal.ToLower().Contains("produce") || txtVal.ToLower().Contains("documents")) || (txtVal.ToLower().Contains("verification") || txtVal.ToLower().Contains("documents")))
                {
                    bot = "Please visit <a href=https://cetonline.karnataka.gov.in/kea/ target=_blank>kea.kar.nic.in website</a>";
                }

                else if (txtVal.ToLower().Contains("faculties") || txtVal.ToLower().Contains("placements") || txtVal.ToLower().Contains("branches") || (txtVal.ToLower().Contains("college") || txtVal.ToLower().Contains("information")))
                {
                    bot = "Please visit <a href=https://www.vvce.ac.in/ target=_blank>VVCE website</a>";
                }

                else if ((txtVal.ToLower().Contains("available") || txtVal.ToLower().Contains("quotas")) || (txtVal.ToLower().Contains("list") || txtVal.ToLower().Contains("quotas")) || txtVal.ToLower().Contains("quotas"))
                {
                    bot = "List of quotas are SNQ,SC,ST,GM,OBC";
                }
                else if (txtVal.ToLower().Equals("how to apply in the kcet website") || (txtVal.ToLower().Contains("apply") || txtVal.ToLower().Contains("kcet")))
                {
                    bot = "Please visit <a href=https://cetonline.karnataka.gov.in/kea/ target=_blank>kea.kar.nic.in website</a>";
                }

                else if (txtVal.ToLower().Contains("whats up") || txtVal.ToLower().Contains("is anyone there") || txtVal.ToLower().Contains("i want to know some information"))
                {
                    if (nn < 5)
                        bot = "How can I help you " + Session["Name"].ToString();
                    else
                        bot = "How can I help you " + Session["Name"].ToString() + ". What is your rank";
                }
                else if (txtVal.ToLower().Contains(" rank "))
                {
                    string[] vals = txtVal.ToLower().Split(' ');
                    int rank = 0;
                    for (int i = 0; i < vals.Length; i++)
                    {
                        if (Regex.IsMatch(vals[i], @"^\d+$"))
                        {
                            rank = Convert.ToInt32(vals[i]);
                        }
                    }

                    bot = "<a href=collegeprediction.aspx?rank=" + rank + " target=_blank>Click here to see the result</a>";
                }
                else if (txtVal.ToLower().Equals("how are you"))
                {
                    bot = "I am fine. How about you";
                }
                else if (txtVal.ToLower().Equals("what the hell"))
                {
                    bot = "Sorry that you feel like this";
                }
                else if (txtVal.ToLower().Contains("who is the hod of cs department") || txtVal.ToLower().Contains("hod cs dept") || txtVal.ToLower().Contains("head of the department of computer science"))
                {
                    bot = "Dr. Ravi Kumar";
                }
                else if (txtVal.ToLower().Contains("who is the principal of vvce") || txtVal.ToLower().Contains("principal of vvce"))
                {
                    bot = "Dr. B S Sadhashive Gowda";
                }
                else if (txtVal.ToLower().Equals("in how many days will the verification get completed"))
                {
                    bot = "2 days";
                }
                else if (txtVal.ToLower().Equals("does the doucuments need to be attested"))
                {
                    bot = "no not required";
                }
                else if (txtVal.ToLower().Equals("do we have to upload original documents"))
                {
                    bot = "yes";
                }
                else if (txtVal.ToLower().Equals("how to check whether the uploaded documents are correct") || txtVal.ToLower().Contains("how will we know the feedback"))
                {
                    bot = "within 2 days of upload, you will get the feedback of whether the uploaded documents are corect or need to be reuploaded";
                }
                else if (txtVal.ToLower().Equals("last year vvce general cutoff"))
                {
                    bot = "cs-11279, ec-16246, ee-18223, civil-24737, me-33677, is-17509";
                }
                else if (txtVal.ToLower().Equals("facilites at vvce"))
                {
                    bot = "hostels, buses, sports complex, green campus, gym, counselling center, health care, library, bank, atm, stationery, canteen, ccd ";
                }
                else if (txtVal.ToLower().Equals("ug departments vvce"))
                {
                    bot = "cs, is, me, ec, ee, civ";
                }
                else if (txtVal.ToLower().Equals("placements in vvce") || txtVal.ToLower().Contains("about vvce") || txtVal.ToLower().Contains("vision of vvce") || txtVal.ToLower().Contains("mission of vvce"))
                {
                    bot = "Please visit <a href=https://vvce.ac.in target=_blank>vvce.ac.in website</a>";
                }
                else if (txtVal.ToLower().Equals("what is your name"))
                {
                    bot = "VVCE Assistant bot";
                }
                else if (txtVal.ToLower().Equals("where are you from"))
                {
                    bot = "VVCE";
                }
                else if (txtVal.ToLower().Equals("full form of vvce"))
                {
                    bot = "Vidhyavardhaka College of Engineering";
                }
                else if (txtVal.ToLower().Equals("is vvce under VTU"))
                {
                    bot = "It is autonomous institute starting from the year 2020 - 2021";
                }
                else if (txtVal.ToLower().Equals("vvce accredition"))
                {
                    bot = "accredated with NBA and NAAC A Grade";
                }
                else if (txtVal.ToLower().Equals("VVCE Scholarships"))
                {
                    bot = " 25 lakh/year 100 scholarships awarded each year";
                }
                else if (txtVal.ToLower().Equals("new courses added"))
                {
                    bot = "CSE(ML and AI)";
                }
                else if (txtVal.ToLower().Equals("which algorithm do you use"))
                {
                    bot = "K-means";
                }
                else if (txtVal.ToLower().Equals("things you want to recommend"))
                {
                    bot = "verify your documents here to get admission in your dersired college";
                }
                else if (txtVal.ToLower().Equals("why are you here") || txtVal.ToLower().Contains("tell me what do you do"))
                {
                    bot = "I am a chatbot designed to attend your queries related to CET verification process, vvce and rankinng recommendations";
                }
                else if (txtVal.ToLower().Equals("pg courses"))
                {
                    bot = "MBA MTech";
                }
                else
                {
                    bot = "Sorry I am not able to fetch you results. Please ask in another way";
                }
                MySqlConnection con = new MySqlConnection(ConfigurationManager.AppSettings["ConStr"]);
                try
                {
                    con.Open();
                    string msg = Session["Name"].ToString() + " : " + TextBox1.Text;
                    string rquery = "insert into chats values('" + Session["Chatid"].ToString() + "','" + msg + "','Bot : " + bot + "');";
                    MySqlCommand cmd = new MySqlCommand(rquery, con);
                    cmd.ExecuteNonQuery();


                    // ListBox1.Items.Clear();
                    cw.InnerHtml = "";

                    query = "select * from chats where ChatId='" + Session["Chatid"].ToString() + "';";
                    cmd = new MySqlCommand(query, con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            cw.InnerHtml += "<div style='float:right;border-color:#ccc;background-color:#ddd;border:2px solid #dedede;border-radius:5px;padding:10px;margin:10px;' class='col-md-7'><h5 style='float:right'>" + dr.GetValue(1).ToString() + "</h5></div>";
                            cw.InnerHtml += "<div style='float:left;background-color:#cceeff;border:2px solid #dedede;border-radius:5px;padding:10px;margin:10px;'  class='col-md-7'><h5>" + dr.GetValue(2).ToString() + "</h5></div>";
                            cw.InnerHtml += "<br/>";
                            // ListBox1.Items.Add(dr.GetValue(1).ToString());
                            // ListBox1.Items.Add(dr.GetValue(2).ToString());
                        }
                    }
                    TextBox1.Text = string.Empty;
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


        public void ClusteringTechnique(string query)
        {
            char[] delimiters = new char[] { '\r', '\n', ' ', ',', '.', '?' };
            queryProcessor = query.Split(delimiters, StringSplitOptions.RemoveEmptyEntries);
            String[] stopwordslist = new string[] { "tell", "a", "about", "above", "after", "again", "against", "all", "am", "an", "and", "any", "are", "aren't", "as", "at", "be", "based", "because", "been", "before", "being", "below", "between", "both", "but", "by", "can't", "cannot", "could", "couldn't", "did", "didn't", "do", "does", "doesn't", "doing", "don't", "down", "during", "each", "few", "for", "from", "further", "get", "had", "hadn't", "has", "hasn't", "have", "haven't", "having", "he", "he'd", "he'll", "he's", "her", "here", "here's", "hers", "herself", "him", "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm", "i've", "if", "in", "into", "is", "isn't", "it", "it's", "its", "itself", "let's", "me", "more", "most", "mustn't", "my", "myself", "no", "nor", "not", "of", "off", "on", "once", "only", "or", "other", "ought", "our", "ours	ourselves", "out", "over", "own", "same", "shan't", "she", "she'd", "she'll", "she's", "should", "shouldn't", "so", "some", "such", "than", "that", "that's", "the", "their", "theirs", "them", "themselves", "then", "there", "there's", "these", "they", "they'd", "they'll", "they're", "they've", "this", "those", "through", "to", "too", "under", "until", "up", "very", "was", "wasn't", "we", "we'd", "we'll", "we're", "we've", "were", "weren't", "what", "what's", "when", "when's", "where", "where's", "which", "while", "who", "who's", "whom", "why", "why's", "with", "won't", "would", "wouldn't", "you", "you'd", "you'll", "you're", "you've", "your", "yours", "yourself", "yourselves", "I", "have", "and" };
            //try
            //{
            for (int i = 0; i < queryProcessor.Length; i++)
            {
                for (int j = 0; j < stopwordslist.Length; j++)
                {
                    if (queryProcessor[i].Equals(stopwordslist[j], StringComparison.OrdinalIgnoreCase))
                    {
                        queryProcessor[i] = " ";
                    }
                }
            }

            string finaldata = string.Empty;
            for (int j = 0; j < queryProcessor.Length; j++)
            {
                if (queryProcessor[j] != " ")
                {
                    finaldata += queryProcessor[j] + ", ";
                }
            }

            if (finaldata!=string.Empty)
            finaldata = finaldata.Substring(0, finaldata.Length - 2);

            fdata = finaldata;
            //Label2.Text = finaldata;
            StringBuilder queryBuilder = new StringBuilder();
            foreach (string value in queryProcessor)
            {
                queryBuilder.Append(value);
                queryBuilder.Append(' ');
            }
            RegexOptions options = RegexOptions.None;
            Regex regex = new Regex(@"[ ]{2,}", options);
            finalquery = queryBuilder.ToString();
            finalquery = regex.Replace(finalquery, @" ");

            //char[] delimiters1 = new char[] { '\r', '\n', ' ', ',', '.' };
            //query = queryProcessor.ToString();
            //queryProcessor = query.Split(delimiters1, StringSplitOptions.RemoveEmptyEntries);
            //}
            //catch
            //{
            //}
            //StringBuilder queryBuilder = new StringBuilder();
            //foreach (string value in queryProcessor)
            //{
            //    queryBuilder.Append(value);
            //    //queryBuilder.Append(' ');
            //}

            //ClusteringTechniqueUsing_SVM ct = new ClusteringTechniqueUsing_SVM();
            finalquery = finalquery.Trim();
            for (int i = 0; i < totalpara.Count; i++)
            {
                for (int j = 0; j < totalpara.Count; j++)
                {
                    if (i != j)
                    {
                        if (totalpara[i].ToString().Equals(totalpara[j].ToString()))
                        {
                            totalpara[i] = "";
                        }
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Audio driver has been initialized to enable voice commands');</script>");
            System.Diagnostics.Process.Start(@"C:\Version2\\VoiceChatbot\Code\FM220_SDK_DEMO\bin\Debug\vvcechatbot.exe");
            //Response.Write("<script>alert('Please initialize audio driver to enable voice commands');</script>");
        }
    }
}