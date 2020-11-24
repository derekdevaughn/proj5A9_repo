using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebAppP5
{
    public class Global : System.Web.HttpApplication
    {
        public static Int32 SessionCounter = 0;

        protected void Application_Start(object sender, EventArgs e)
        {
            //code that run on application startup
            // Response.Write("Wecome to our website");
            Application["SessionCounter"] = 0;
            Application["TotalSessions"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //Keep track of Captcha random number until verified or timeout
            Random randomNum = new Random();
            Int32 captchaNum = randomNum.Next(100000, 999999);
            Session["Captcha"] = captchaNum.ToString();

            //code that run when a new session is started
            SessionCounter = SessionCounter + 1;

            int c = Convert.ToInt32(Application["SessionCounter"]);
            if (c > 0)
            {
                int i = Convert.ToInt32(Application["SessionCounter"]) + 1;
                Application["SessionCounter"] = i;
                Application.UnLock();
            }
            else
            {
                Application["SessionCounter"] = 1;
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Reset Capcha when Session ends
            //Clear session captcha
            Session["Captcha"] = null;
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Response.Write("hr /> The website was last visited on: " + DateTime.Now.ToString());
            Response.Write("hr /> The total session opened is: " + SessionCounter);
            
        }
    }
}