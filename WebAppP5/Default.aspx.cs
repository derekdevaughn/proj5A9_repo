using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebAppP5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             //Use the Global.asax file function to get information
              Label6.Text =  Application["SessionCounter"].ToString();

            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                // check for valid staff first
                string filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Staff.xml";
                string password = myCookies["Password"];
                string user = myCookies["Name"];

                XmlDocument doc = new XmlDocument();
                doc.Load(filepath);
                XmlElement root = doc.DocumentElement;
                int found = 0;

                // search Xml file to find matching username and password
                foreach (XmlNode node in root.ChildNodes)
                {
                    if (node["username"].InnerText == user)
                    {
                        // found username
                        if (node["password"].InnerText == password)
                        {
                            found = 1;
                            // password and username are stored in Member.xml
                            lblOutput.Text = String.Format("Welcome, {0}", myCookies["Name"]);
                            return;
                        }
                    }
                }

                // not in staff
                // check for valid Member
                filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Member.xml";
                password = myCookies["Password"];
                user = myCookies["Name"];

                //XmlDocument doc = new XmlDocument();
                doc.Load(filepath);
                root = doc.DocumentElement;
                found = 0;

                // search Xml file to find matching username and password
                foreach (XmlNode node in root.ChildNodes)
                {
                    if (node["username"].InnerText == user)
                    {
                        // found username
                        if (node["password"].InnerText == password)
                        {
                            found = 1;
                            // password and username are stored in Member.xml
                            lblOutput.Text = String.Format("Welcome, {0}", myCookies["Name"]);
                            return;
                        }
                    }
                }

                // if not a Staff
                if (found == 0)
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

               
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegister.aspx");
        }

        protected void btnStaffLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Member.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            if (Request.Cookies["myCookieID"] != null)
                Response.Cookies["myCookieID"].Expires = DateTime.Now.AddDays(-30);

            Response.Redirect("Login.aspx");
        }

        protected void btnWeather_Click(object sender, EventArgs e)
        {
            // error checking for correct length
            if (txtZipWeather.Text.Length != 5)
            {
                this.lblCity.Text = "Please enter valid Zip Code.";
                return;
            }
            // error checking for digits (no strings allowed)
            if (!Int32.TryParse(txtZipWeather.Text, out int x))
            {
                this.lblCity.Text = "Please enter valid Zip Code.";
                return;
            }

            // generating Uri for our RESTful service
            Uri baseUri = new Uri("http://webstrar12.fulton.asu.edu/page0/Service1.svc/");
            UriTemplate myTemplate = new UriTemplate("weather?zip={zip}");
            Uri completeUri = myTemplate.BindByPosition(baseUri, txtZipWeather.Text);
            WebClient proxy = new WebClient();
            byte[] abc = proxy.DownloadData(completeUri);
            Stream stream = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string generatedString = obj.ReadObject(stream).ToString();

            // splitting up output string
            string[] words = generatedString.Split(' ');

            // generating outputs
            lblFahr.Text = words[0] + " F";
            lblCel.Text = words[1] + " C";
            lblCity.Text = words[2] + ", " + words[3];

        }

        protected void btnAccidental_Click(object sender, EventArgs e)
        {
            Uri baseUri = new
                Uri("http://webstrar31.fulton.asu.edu/page8/Service1.svc/getAccidentalKillings");
            WebClient proxy = new WebClient();
            byte[] abc = proxy.DownloadData(baseUri);
            Stream strm = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string generatedString = obj.ReadObject(strm).ToString();
            lblAccidental.Text = generatedString;
        }

        protected void btnFelonious_Click(object sender, EventArgs e)
        {
            Uri baseUri = new
                Uri("http://webstrar31.fulton.asu.edu/page8/Service1.svc/getFeloniousKillings");
            WebClient proxy = new WebClient();
            byte[] abc = proxy.DownloadData(baseUri);
            Stream strm = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string generatedString = obj.ReadObject(strm).ToString();
            lblFelonious.Text = generatedString;
        }

    }
  }