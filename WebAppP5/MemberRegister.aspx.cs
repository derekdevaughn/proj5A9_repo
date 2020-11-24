using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using EncryptDecryptHash; //EncryptDecryptHash dll namespace

namespace WebAppP5
{
    public partial class MemberRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                lblRegisterOutput.Text = "Welcome, new user";
            }
            else
            {
                lblRegisterOutput.Text = "Welcome, " + myCookies["Name"];
            }

            //Code for Captcha
            Session["CaptchaStatus"] = "unverified";
            UserControlCaptcha1.Visible = true; //Always visible
        }

        protected void btnCaptcha_Click(object sender, EventArgs e)
        {
            if (txtCaptcha.Text.Trim() != (string)Session["Captcha"])
            {
                //TODO: add FailedCaptcha.aspx; for now return message
                lblCaptcha.Text = "Invalid captcha entry. For demo, invalid entries are allowed to proceed.";
            }
            else
            {
                //TODO: add SuccessCaptcha.aspx; for now return message
                Session["CaptchaStatus"] = "verified"; //verified and unblocking for app
                lblCaptcha.Text = "Success. You can now proceed.";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // image verification situation

            // validate username and password
            string filepath = HttpRuntime.AppDomainAppPath + @"\App_Data\Member.xml";
            string user = txtRegisterUser.Text;
            //Derek is going to change Dallas variable password to passwordEntry 
            //and then assign to password later
            //string password = txtRegisterPassword.Text;

            //Hash the password, save hashed value, hash password entries & compare to saved

            //Create hash value of password
            string passwordEntry = txtRegisterPassword.Text;
            Hashing hash = new Hashing();
            string hashPassword = hash.HashingValues(passwordEntry);
            string password = hashPassword;

            //TODO: show asterisks or bullets upon password entry
            //Encrypt password before passing into string for storage
            /*EncryptDecrypt encDec = new EncryptDecrypt();
            string encPassword = encDec.Encrypt(passwordEntry);
            string password = (encPassword);*/
                if (user == "")
                {
                    lblRegisterOutput.Text = "Username cannot be empty";
                    //lblRegisterOutput.Visible = true;
                    return;
                }

                if (password == "")
                {
                    lblRegisterOutput.Text = "Password cannot be empty";
                    //lblRegisterOutput.Visible = true;
                    return;
                }

                // use hashing service to encrypt password


                // load and check XML document
                XmlDocument doc = new XmlDocument();
                doc.Load(filepath);
                XmlElement root = doc.DocumentElement;

                foreach (XmlNode node in root.ChildNodes)
                {
                    if (node["username"].InnerText == user)
                    {
                        lblRegisterOutput.Text = "Username already exists";
                        //lblRegisterOutput.Visible = true;
                        return;
                    }
                }

                // add new member to XML file
                XmlElement newMember = doc.CreateElement("Member", root.NamespaceURI);
                root.AppendChild(newMember);
                XmlElement newUser = doc.CreateElement("username", root.NamespaceURI);
                newMember.AppendChild(newUser);
                newUser.InnerText = user;
                XmlElement newPassword = doc.CreateElement("password", root.NamespaceURI);
                newMember.AppendChild(newPassword);
                newPassword.InnerText = password;       // need to change to encrypted password

                doc.Save(filepath);
                lblRegisterOutput.Text = String.Format("You are now registered, {0}. " +
                    "Please return to home page and log in", user);
                lblHashShow.Text = String.Format("TryIt Demo: Your password is hashed/saved as {0}.", password);
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}