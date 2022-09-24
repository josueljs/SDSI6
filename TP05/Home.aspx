<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TP05.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Analisador XML</title>
    <script language="JavaScript" type="text/javascript">
        function analisaXML(param)
        {
            var xmlDoc = new ActiveXObject("Msxml2.DOMDocument.3.0")
            xmlDoc.async="false"
            xmlDoc.load(document.all(param).value)
            if(xmlDoc.parseError.errorCode!=0)
            {
            msg="Código do Erro: " + xmlDoc.parseError.errorCode + "\n"
            msg=msg+"Linha do Erro: " + xmlDoc.parseError.line + "\n"
            msg=msg+"Posição do Erro: " + xmlDoc.parseError.linepos + "\n"
            msg=msg+"Descrição do Erro: " + xmlDoc.parseError.reason
            alert(msg)}
            else
            {
            if (xmlDoc.validate()==0)
            alert("XML bem formado e válido.")
            else{
            msg="XML bem formado mas inválido " + "\n"
            alert(msg + "Erro - " + xmlDoc.validate().reason)
            }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Carregue o XML <br/>
            <input id="arqXML" type="file" name="arqXML" style="WIDTH: 543px; HEIGHT: 21px" size="41"/>
            <input id="btnAnalisa2" onclick="analisaXML('arqXML');" type="button" value="Analisar" name="btnAnalisa2"/>
        </div>
    </form>
</body>
</html>
