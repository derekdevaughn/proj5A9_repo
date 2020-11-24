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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                lblOutput.Text = "Welcome, new user";
            }
            else
            {
                lblOutput.Text = "Welcome, " + myCookies["Name"];

            }
        }

        protected void btnMemberLogin_Click(object sender, EventArgs e)
        {
            // using cookies to store information
            HttpCookie myCookies = new HttpCookie("myCookieID");
            myCookies["Name"] = txtUser.Text;
            //Create hash value of password
            string passwordEntry = txtPassword.Text;
            Hashing hash = new Hashing();
            string hashPassword = hash.HashingValues(passwordEntry);

            //myCookies["Password"] = txtPassword.Text;
            myCookies["Password"] = hashPassword;
            myCookies.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(myCookies);

            string filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Member.xml";

            string user = txtUser.Text;
            //string password = txtPassword.Text;
            string password = hashPassword;

            XmlDocument doc = new XmlDocument();
            doc.Load(filepath);
            XmlElement root = doc.DocumentElement;
            int found = 0;

            // search Xml file to find matching username and password
            foreach (XmlNode node in root.ChildNodes)
            {
                if (node["username"].InnerText == user)
                {
                    found = 1;
                    //TODO: hash and validate passwords & use asterisks/bullets in password text
                    //TODO: THIS IS NOT SECURE AS PASSWORD ENTRY IS ALWAYS INITIALLY SEEN
                    //TODO: Research C# technique to input asterisks/bullets instead of plaintext

                    if (node["password"].InnerText == password)
                    {
                        // password and username are stored in Member.xml
                        Response.Redirect("Member.aspx");
                        return;
                    }
                    else
                    {
                        lblOutput.Text = String.Format("Error: password does not match for username {0}", user);
                    }
                }
            }
            if (found == 0)
                lblOutput.Text = String.Format("Error: Username {0} not found.", user);

            return;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnStaffLogin_Click(object sender, EventArgs e)
        {
            // using cookies to store information
            HttpCookie myCookies = new HttpCookie("myCookieID");
            myCookies["Name"] = txtUser.Text;
            //TODO: Also encrypt staff password
            myCookies["Password"] = txtPassword.Text;
            myCookies.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(myCookies);

            string filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Staff.xml";

            string user = txtUser.Text;
            string password = txtPassword.Text;

            // hashing of some sort here

            XmlDocument doc = new XmlDocument();
            doc.Load(filepath);
            XmlElement root = doc.DocumentElement;
            int found = 0;

            // search Xml file to find matching username and password
            foreach (XmlNode node in root.ChildNodes)
            {
                if (node["username"].InnerText == user)
                {
                    found = 1;
                    // need to change to encrypted password
                    if (node["password"].InnerText == password)
                    {
                        // password and username are stored in Member.xml
                        Response.Redirect("Staff.aspx");
                        return;
                    }
                    else
                    {
                        lblOutput.Text = String.Format("Error: password does not match for username {0}", user);
                    }
                }
            }
            if (found == 0)
                lblOutput.Text = String.Format("Error: Username {0} not found.", user);

            return;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegister.aspx");
        }
    }
}