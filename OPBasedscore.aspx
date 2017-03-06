<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OPBasedscore.aspx.cs" Inherits="OPBasedaw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <%-- page to display the evaluated score --%>
</head>
<body background="pictures/img22.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 408px; position: absolute;
            top: 200px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="DarkMagenta"></asp:Label>
        <asp:Button ID="Button1" runat="server" ForeColor="Maroon" Style="z-index: 102; left: 368px;
            position: absolute; top: 328px" Text="Click To Go To Home Page" Width="184px" PostBackUrl="~/StudentHome.aspx" />
        &nbsp;&nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong><span
            style="font-size: 36pt; color: #8b0000; font-family: Monotype Corsiva; text-decoration: underline">Your Score Is</span></strong>
    
    </div>
    </form>
</body>
</html>
