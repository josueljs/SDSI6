using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;

namespace TP08
{
    public partial class Ex7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringWriter htmlGerado = new StringWriter();

            XslCompiledTransform xslt = new XslCompiledTransform();

            xslt.Load(Server.MapPath("~/Ex7.xsl"));

            xslt.Transform(Server.MapPath("~/voos.xml"), null, htmlGerado);

            Response.Write(htmlGerado);
        }
    }
}