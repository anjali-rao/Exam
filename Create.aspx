<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image:none;background-color:azure">
    <form id="form1" runat="server">
        <div id="div"> 
            <br />
            Create Exam 
            <br />
            <br />
        </div>
        <br /><br />
        <div id="div">
            <br />
     <asp:TextBox ID="ESubject" runat="server" placeholder="Enter Subject Name"></asp:TextBox> 
         <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="ESubject" runat="server" /> <br />

        <asp:TextBox ID="EID" runat="server" placeholder="Enter Subject ID " TextMode="Password"></asp:TextBox> 
         <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="EID" runat="server" /><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:TextBox ID="ERetype" runat="server" placeholder="Retype Subject ID " TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ErrorMessage="Codes do not match." ForeColor="Red" ControlToCompare="EID" ControlToValidate="ERetype" runat="server" /> <br />

       <asp:TextBox ID="Etime" runat="server" placeholder="Enter duration of Exam in minutes" TextMode="Number"></asp:TextBox> 
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Etime" runat="server" /><br />

   <asp:TextBox ID="Eobj" runat="server" placeholder="Enter no. of Objective questions "></asp:TextBox> 
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Eobj" runat="server" /> <br />
            <asp:TextBox ID="objR" runat="server" placeholder="Enter no. of Objective questions to be displayed "></asp:TextBox> 
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="objR" runat="server" /> <br />

            <asp:TextBox ID="Total" runat="server" placeholder="Enter maximum marks of the exam"></asp:TextBox> 
        <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Total" runat="server" /> <br />
        <br />
        <asp:Button CssClass="button button1" ID="btnsub" runat="server" Text="Save" Width="271px" OnClick="btn_sub" /><br />
      
    </div>
    </form>
</body>
</html>
