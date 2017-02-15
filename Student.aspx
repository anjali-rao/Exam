<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/CSS.css" rel="stylesheet" />
</head>

<body class="body">
    <form id="form1" runat="server">
    <div id="div">
    Student Account<br />
        Welcome *name! <br />
    </div> <br /><br />
        <div>
            <asp:Button CssClass="button button1" runat="server" ID="stake" Text="Take Exam" OnClick="fcreate_Click" Width="191px" />
       <asp:Button CssClass="button button1" runat="server" ID="sresult" Text="View result" OnClick="fcreate_Click" Width="191px" />
             </div>
    </form>
</body>
</html>
