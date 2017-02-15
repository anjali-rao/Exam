<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
        <div id="div">
            <br />
            &nbsp;Enter you details to Register:<br /> <br />
        </div>
        <br />
    <div class="div">
         <asp:table  HorizontalAlign="Center" runat="server" Height="450px" Width="888px" CellPadding="3" CellSpacing="3"  >
            <asp:TableRow   >
                <asp:TableCell> <asp:TextBox ID="regname" runat="server" placeholder="Enter Name"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="regname"
           runat="server" />
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell CssClass="cellwidth"> <asp:TextBox ID="regID" runat="server" placeholder="Enter UserID" ></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="regID" runat="server" />
            </asp:TableCell></asp:TableRow><asp:TableRow >
            <asp:TableCell > <asp:TextBox ID="regpwd" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox> 
                 <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="regpwd"
                runat="server" />
            </asp:TableCell></asp:TableRow><asp:TableRow >
            <asp:TableCell > <asp:TextBox ID="Retype" runat="server" TextMode="Password" placeholder="Retype Password"></asp:TextBox> 
                <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="regpwd"
                ControlToValidate="Retype" runat="server" />
            </asp:TableCell></asp:TableRow><asp:TableRow >    
                <asp:TableCell > <asp:DropDownList ID="ListBox1" runat="server"  placeholder="User Type">
    <asp:ListItem  Text="-User Type-"></asp:ListItem>
                            <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                            <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                            </asp:DropDownList>
                    </asp:TableCell></asp:TableRow><asp:TableRow >        
            <asp:TableCell> <asp:TextBox ID="Email" runat="server" TextMode="Email" placeholder="Email"> </asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="Email" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="Email" ForeColor="Red" ErrorMessage="Invalid email address." />
            </asp:TableCell></asp:TableRow><asp:TableRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
            <asp:Button CssClass="button button1" ID="btnreg" runat="server" Text="Register"
            onclick="btn_reg"/>
                </asp:TableCell></asp:TableRow></asp:table></div></form></body></html>