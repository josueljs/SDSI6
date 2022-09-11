<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP02_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Gerar arquivo"></asp:Button>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="500" Width="250" Text="O conteúdo do arquivo aparecerá aqui."></asp:TextBox>
        </div>
    </form>
</body>
</html>
