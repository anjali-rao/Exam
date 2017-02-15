<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Questions.aspx.cs" Inherits="Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="div"> Enter Questions <br /> SubjectID=<asp:Label runat="server" ID="SubjectID"></asp:Label></div>
    <form id="form1" runat="server">
    <div>
    <asp:Table runat="server">
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="QID" runat="server" placeholder="Enter Question ID"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="QID" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="Q" runat="server" placeholder="Enter Question "></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Q" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="O1" runat="server" placeholder="Enter Option 1"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="O1" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="O2" runat="server" placeholder="Enter Option 2"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="O2" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="O3" runat="server" placeholder="Enter Option 3"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="O3" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="O4" runat="server" placeholder="Enter Option 4"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="O4" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="Ans" runat="server" placeholder="Enter Answer Option number" TextMode="Number"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Ans" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="Mark" runat="server" placeholder="Enter Marks allotted for this question"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Mark" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="Topic" runat="server" placeholder="Enter Topic"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Topic" runat="server" /></asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell><asp:TextBox ID="Degree" runat="server" placeholder="Enter Degree"></asp:TextBox>
       <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Degree" runat="server" /></asp:TableCell>
</asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
