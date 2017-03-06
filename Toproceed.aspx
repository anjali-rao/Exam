<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Toproceed.aspx.cs" Inherits="Toproceed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <%-- Displayed on successfull login of a user. The user is redirected to the specific page on clickin on proceed --%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Thistle" Height="552px" Style="z-index: 100;
            left: 8px; position: absolute; top: 8px" Width="944px">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="DarkGoldenrod" Style="z-index: 100; left: 352px;
            position: absolute; top: 40px" Text="Authenticated" Width="144px"></asp:Label>
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Style="z-index: 101;
            left: 352px; position: absolute; top: 232px" Text="Click To Proceed" Width="150px" />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                Font-Size="X-Large" ForeColor="Maroon" Style="z-index: 103; left: 352px; position: absolute;
                top: 144px" Text="WELCOME" Width="64px"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </asp:Panel>
    </div>
    </form>
</body>
</html>
