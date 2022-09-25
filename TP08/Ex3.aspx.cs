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
    public partial class Ex3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringWriter htmlGerado = new StringWriter();

            XslCompiledTransform xslt = new XslCompiledTransform();

            xslt.Load(Server.MapPath("~/pedidos.xsl"));

            xslt.Transform(Server.MapPath("~/pedidos.xml"), null, htmlGerado);

            Response.Write(htmlGerado);
        }
    }
}