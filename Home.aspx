<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- Home page-First Page-The user can Login from this page by providing valid credentials
        The Page also links to register,Change and forget password. --%>

 <asp:Panel ID="Panel1" runat="server" Height="336px" Style="z-index: 104; left: 696px;
            position: absolute; top: 240px" Width="248px" BackImageUrl="~/pictures/img22.jpg">
            &nbsp; &nbsp; &nbsp; 
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Purple" Style="z-index: 100;
                left: 16px; position: absolute; top: 128px" Text="User Type"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 88px;
                position: absolute; top: 120px" >
                <%-- select user type-student/Instructor/Admin --%>
                 <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Instructor</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 14pt">&nbsp; <strong><span style="color: background">Login<br />
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 88px; position: absolute;
                        top: 48px"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server" Style="z-index: 103; left: 88px; position: absolute;
                        top: 88px" TextMode="Password" Width="144px"></asp:TextBox>
                    &nbsp;
                </span></strong></span>
                <asp:Button ID="Button2" runat="server" Style="z-index: 104; left: 104px; position: absolute;
            top: 176px" Text="Login" Width="64px" OnClick="Button2_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="Indigo" Style="z-index: 105; left: 136px; position: absolute;
            top: 232px" OnClick="LinkButton1_Click">Register</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="CornflowerBlue" Style="z-index: 106; left: 0px;
            position: absolute; top: 208px" Text="New User ?" Width="120px" Height="1px"></asp:Label>
        &nbsp; &nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Indigo" Style="z-index: 107;
            left: 8px; position: absolute; top: 48px" Text="User Id"></asp:Label>
            &nbsp;
             <asp:Label ID="Label1" runat="server" Style="z-index: 108; left: 8px; position: absolute;
            top: 88px" Text="Password" Font-Bold="True" ForeColor="Indigo"></asp:Label>
            &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                ForeColor="Purple" Height="16px" Style="z-index: 109; left: 8px; position: absolute;
                top: 272px" Width="112px" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                ForeColor="Purple" Height="8px" Style="z-index: 111; left: 128px; position: absolute;
                top: 304px" Width="112px" OnClick="LinkButton3_Click">change Password</asp:LinkButton>
        </asp:Panel>
        
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

