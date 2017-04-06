<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <%-- Registration page for new users-student/Instructor/Admin --%>
     <asp:Panel ID="Panel1" runat="server" BackColor="Transparent" BorderColor="Black"
            BorderWidth="2px" Height="416px" Style="z-index: 100; left:290px; position: absolute;
            top: 156px" Width="792px" BackImageUrl="~/pictures/img30.jpg">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
         &nbsp; &nbsp; &nbsp;<strong><span style="font-size: 24pt; color: #000033; font-family: Monotype Corsiva">
             &nbsp; &nbsp; <span style="text-decoration: underline">Registration Form</span> &nbsp; &nbsp; &nbsp;&nbsp;
                 
                 
             <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 72px; position: absolute;
                 top: 96px"></asp:TextBox>
             
             <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 464px; position: absolute;
                 top: 88px" placeholder="YYYY-MM-DD"></asp:TextBox>
             &nbsp; &nbsp;
             
             <asp:DropDownList ID="DropDownList3" runat="server" Style="z-index: 125; left: 464px;
                 position: absolute; top: 128px" Width="152px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                 <asp:ListItem>--select--</asp:ListItem>
                 <asp:ListItem>.Net</asp:ListItem>
                 
             </asp:DropDownList>
             <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 103; left: 336px; position: absolute;
                 top: 192px"></asp:TextBox>
             <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 104; left: 80px; position: absolute;
                 top: 272px"></asp:TextBox>
             <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 105; left: 328px; position: absolute;
                 top: 272px" TextMode="Password"></asp:TextBox>
             &nbsp; &nbsp; &nbsp;<span style="text-decoration: underline"> </span>
             <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 106; left: 600px; position: absolute;
                 top: 272px" TextMode="Password"></asp:TextBox>
             <span style="text-decoration: underline"></span>
             <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 107; left: 600px; position: absolute;
                 top: 320px"></asp:TextBox>
             <span style="text-decoration: underline"></span></span></strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 108;
                 left: 264px; position: absolute; top: 368px" Text="Submit" Height="30px" Width="70px" />
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 109;
                     left: 448px; position: absolute; top: 368px" Text="Reset" Height="30px" Width="70px" />
         <asp:Button ID="Back" runat="server" CausesValidation="false" OnClick="Back_Click" Style="z-index: 109;
                     left: 96px; position: absolute; top: 369px; right: 626px;" Text="Back" Height="30px" Width="70px" />
           
        <asp:Label ID="Label1" runat="server" BackColor="LemonChiffon" Font-Bold="True" ForeColor="Red"
            Style="z-index: 110; left: 0px; position: absolute; top: 56px" Text="Personnel Details"
            Width="784px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 111; left: 8px;
            position: absolute; top: 96px" Text="Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 112; left: 336px;
            position: absolute; top: 96px" Text="DOB"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 113; left: 8px;
            position: absolute; top: 144px" Text="Gender"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 114; left: 336px;
            position: absolute; top: 136px" Text="Branch"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 115; left: 256px;
            position: absolute; top: 192px" Text="College"></asp:Label>
        <asp:Label ID="Label7" runat="server" BackColor="LemonChiffon" Font-Bold="True" ForeColor="Red"
            Style="z-index: 116; left: 0px; position: absolute; top: 232px" Text="Login Details"
            Width="784px"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="z-index: 117; left: 0px;
            position: absolute; top: 272px" Text="User Id"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Style="z-index: 118; left: 248px;
            position: absolute; top: 272px" Text="Password"></asp:Label>
        &nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="z-index: 119; left: 536px;
            position: absolute; top: 328px" Text="Answer"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 120; left: 80px;
            position: absolute; top: 328px" Width="152px">
            <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Instructor</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 121; left: 352px;
            position: absolute; top: 328px" Width="160px">
            <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem>what is your pet name?</asp:ListItem>
            <asp:ListItem>who is your favourite cricketer?</asp:ListItem>
            <asp:ListItem>what is your ssn ?</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Style="z-index: 122; left: 280px;
            position: absolute; top: 328px" Text="Question"></asp:Label>
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Style="z-index: 123; left: 0px;
            position: absolute; top: 328px" Text="User Type"></asp:Label>
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Height="8px" Style="z-index: 124;
            left: 512px; position: absolute; top: 264px" Text="Re-Enter Password" Width="72px"></asp:Label>
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" RepeatDirection="Horizontal"
            Style="z-index: 102; left: 72px; position: absolute; top: 136px">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:RadioButtonList>
     </asp:Panel>
        <asp:Panel runat="server">
     <%-- Form validation to ensure all fields are filled and are in the correct format to be stored and further used --%>
            <asp:RequiredFieldValidator ID="name" runat="server" 
               ControlToValidate="TextBox1" ErrorMessage="Enter your name" >
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="dob" runat="server" 
               ControlToValidate="TextBox2" ErrorMessage="Enter your DOB" >
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="clg" runat="server" 
               ControlToValidate="TextBox5" ErrorMessage="Enter your college" >
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="usrid" runat="server" 
               ControlToValidate="TextBox6" ErrorMessage="Enter your User Id" >
            </asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="ans" runat="server" 
               ControlToValidate="TextBox9" ErrorMessage="Enter your answer" >
            </asp:RequiredFieldValidator>


            <asp:RequiredFieldValidator ID="course" runat="server" ControlToValidate="DropDownList3"
                ErrorMessage="Select Branch" InitialValue="--Select--"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="Type" runat="server" ControlToValidate="DropDownList1"
                ErrorMessage="Select user type" InitialValue="--Select--"></asp:RequiredFieldValidator>
              <asp:RequiredFieldValidator ID="question" runat="server" ControlToValidate="DropDownList2"
                ErrorMessage="Select question" InitialValue="--Select--"></asp:RequiredFieldValidator>
       
             <asp:RequiredFieldValidator ID="pwd" runat="server" 
               ControlToValidate="TextBox7" ErrorMessage="Enter your password" >
            </asp:RequiredFieldValidator> 
       
             <asp:RegularExpressionValidator ID="pwdchk" runat="server" ControlToValidate="TextBox7"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Min 8 char,1 Alphabet, 1 Number and 1 Special Character for password" ForeColor="Red" />
            <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="TextBox7"
              ControlToValidate="TextBox8"
              ErrorMessage="Your passwords do not match up!"
              Display="Dynamic" >
</asp:CompareValidator>
       
             <asp:RegularExpressionValidator ID="uid" runat="server" ControlToValidate="TextBox6"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Min 8 char, 1 Alphabet and 1 Number for userID" ForeColor="Red" />
<br />
  <asp:RegularExpressionValidator ID="Date" runat="server" ValidationExpression="(19|20|21)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])"
             ControlToValidate="TextBox2" ErrorMessage="Enter a valid date e.g (yyyy-mm-dd)"></asp:RegularExpressionValidator>
             </asp:Panel>

        <asp:RequiredFieldValidator ID="gndr" runat="server"
            ControlToValidate="RadioButtonList1" ErrorMessage="Select gender">
        </asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
