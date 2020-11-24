using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using EncryptDecryptHash;

namespace WebAppP5
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                // check for valid user
                string filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Member.xml";
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
                            lblMessage.Text = String.Format("Welcome, {0}", myCookies["Name"]);
                            return;
                        }
                    }
                }

                // if not a Member
                if (found == 0)
                {
                    Response.Redirect("Unauthorized.aspx");
                }
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegister.aspx");
        }
    }
}