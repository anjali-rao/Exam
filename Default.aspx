<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Virtual Examination Simulation System</title> 
    <link href="styles/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="div">
        <br />
         <asp:Label ID="intro" runat="server" 
                         Height="75px"  Font-Size="50px" 
                        Text="Welcome to Virtual Examination Simulation System!" Width="1182px">
         </asp:Label>
        </div>
        <br />
        <br />
        <div>
        <asp:table  HorizontalAlign="Center" runat="server" Height="450px" Width="550px" CellPadding="3" CellSpacing="3"  >
             <asp:TableRow  HorizontalAlign="Center" >
                <asp:TableCell> 
<asp:TextBox ID="ID" runat="server" placeholder="Enter UserID"></asp:TextBox>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell > 
<asp:TextBox ID="PASSWORD" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox> </asp:TableCell> 
            </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">    
                <asp:TableCell > 
&nbsp;<asp:DropDownList ID="ListBox1" runat="server"  placeholder="User Type">
    <asp:ListItem  Text="User Type"></asp:ListItem>
                            <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                            <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
<asp:Button   CssClass="button button1" ID="btnsubmit" runat="server" Text="Login"
             onclick="button1_Click"/> &nbsp; or &nbsp; 
            <asp:Button CssClass="button button1" ID="btnreg" runat="server" Text="Register"
            onclick="button2_Click"/>
                </asp:TableCell>
            </asp:TableRow>
            </asp:table>
        
    
    </div>
    </form>
</body>
</html>
