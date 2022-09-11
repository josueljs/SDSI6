using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TP02_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XDocument xDoc = new XDocument
            (
            new XDeclaration("1.0", "utf - 8", "yes"),
            new XComment("Arquivo XML criado via Asp.Net com sucesso!"),
            new XElement("UserDetail",
            new XElement("User",
            new XAttribute("UID", "01"),
            new XElement("Name", "João"),
            new XElement("Address", "Cubatão")
            ),
            new XElement("User",
            new XAttribute("UID", "02"),
            new XElement("Name", "Maria"),
            new XElement("Address", "Santos")
            )
            )
            );

            String xmlFile = Server.MapPath("~/User.xml");
            xDoc.Save(xmlFile);

            XElement xFile = XElement.Load(xmlFile);
            TextBox1.Text = xFile.ToString();
        }
    }
}