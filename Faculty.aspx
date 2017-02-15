<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Account2" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="styles/CSS.css" rel="stylesheet" type="text/css" />
    
</head>

<body style="background-image:none;background-color:azure">
    <form id="form1" runat="server">
    <div id="div"> Faculty Account!<br />
    
            Welcome ! *name 
        </div> 
        <div>
            <br />
            <br />
             <asp:Button CssClass="button button1" runat="server" ID="fcreate" Text="Create Exam" OnClick="fcreate_Click" Width="191px" />
            <asp:Button CssClass="button button1" runat="server" ID="fedit" Text="Edit Account" OnClick="fcreate_Click" Width="191px" />
            <asp:Button CssClass="button button1" runat="server" ID="fsubjective" Text="Evaluate" OnClick="fcreate_Click" Width="191px" />
            <asp:Button CssClass="button button1" runat="server" ID="fviewq" Text="View Question paper" OnClick="fcreate_Click" Width="233px" />
            <asp:Button CssClass="button button1" runat="server" ID="fresult" Text="View Results" OnClick="fcreate_Click" Width="191px" />
        </div>
    </form>
</body>
</html>
