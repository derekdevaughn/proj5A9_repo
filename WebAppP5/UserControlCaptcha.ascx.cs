using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebAppP5
{
    public partial class UserControlCaptcha : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params[ID] != null)
            {
                if ((string)Session["CaptchaStatus"] == "unverified")
                {
                    Bitmap imageVerifier = new Bitmap(150, 75);
                    Graphics gVerifier = Graphics.FromImage(imageVerifier);
                    gVerifier.FillRectangle(Brushes.PowderBlue, 0, 0, 149, 74);
                    Font font = new Font("Times", 18, FontStyle.Regular);
                    gVerifier.DrawString(Session["Captcha"].ToString(), font, Brushes.Brown, 10, 0);
                    imageVerifier.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
                    gVerifier.Dispose();
                    imageVerifier.Dispose();
                }
            }
            String Url = Request.Url.ToString();
            CaptchaImage.ImageUrl = Url + "?" + ID + "=Show";
        }
    }
}