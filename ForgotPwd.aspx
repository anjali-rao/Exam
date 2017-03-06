<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPwd.aspx.cs" Inherits="ForgotPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <%-- Provide the user with his password using security question --%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="320px" Style="z-index: 100; left: 304px;
            position: absolute; top: 72px" Width="424px" BackImageUrl="~/pictures/imag1.jpg">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="text-decoration: underline">
       

                    <span style="font-size: 24pt; color: #330033; font-family: Monotype Corsiva"> Forgot Password ?</span>
            </span>
         
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 100;
            left: 16px; position: absolute; top: 80px" Text="User Id"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 101;
            left: 16px; position: absolute; top: 136px" Text="Question"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#004000" Style="z-index: 102;
            left: 16px; position: absolute; top: 192px" Text="Answer"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 208px; position: absolute;
            top: 72px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Style="z-index: 104;
                left: 64px; position: absolute; top: 352px" Text="Click to go to Home Page" Width="248px" />
             <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 208px; position: absolute;
            top: 192px" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: -86px; position: absolute;
                top: 152px" Width="64px" Font-Bold="True" Font-Names="Monotype Corsiva" ForeColor="DodgerBlue"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                ForeColor="DodgerBlue" Style="z-index: 111; left: -284px; position: absolute;
                top: 152px" Text="Your password is:" Width="176px"></asp:Label>
            &nbsp;
            &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 108; left: 208px;
            position: absolute; top: 136px">
             <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>what is your pet name?</asp:ListItem>
            <asp:ListItem>who is your favourite cricketer?</asp:ListItem>
            <asp:ListItem>what is your ssn ?</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Style="z-index: 109; left: 88px; position: absolute;
            top: 264px" Text="Submit" Height="30px" OnClick="Button1_Click" Width="70px" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 110; left: 224px; position: absolute;
            top: 264px" Text="Cancel" Height="30px" OnClick="Button2_Click" Width="70px" />
      </asp:Panel>       
    
    </div>
    </form>
</body>
</html>
