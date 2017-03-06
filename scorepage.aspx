<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scorepage.aspx.cs" Inherits="scorepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <%-- The students score displays after the student click on Submit Test or the page times out 
        The page displays the total exam score--%>
</head>
<body background="pictures/img22.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 36pt"> &nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp;
            <span style="color: darkred; font-family: Monotype Corsiva; text-decoration: underline">
                <strong>Your Score Is</strong></span></span>
        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 416px; position: absolute;
            top: 200px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="Purple"></asp:Label>
        <asp:Button ID="Button1" runat="server" Style="z-index: 101;
            left: 368px; position: absolute; top: 328px" Text="Click To Go to Home" Width="192px" ForeColor="#804000" OnClick="Button1_Click" />
        &nbsp;<span style="text-decoration: underline">&nbsp; 
            <asp:Label ID="Label1" runat="server" Style="z-index: 103; left: 200px; position: absolute;
                top: 208px" Width="128px"></asp:Label>
        </span>
    
    </div>
    </form>
</body>
</html>
