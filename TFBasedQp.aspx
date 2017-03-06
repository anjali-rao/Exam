<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TFBasedQp.aspx.cs" Inherits="TFBasedQp" EnableSessionState="true"%>

<%-- The student gives the true/False based exam which times out in 1 minute --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

 <title>Untitled Page</title>
<script language="javascript" type="text/javascript">

javascript:window.history.forward(1);

function loadnextpage()
    {
    window.location.href="scorepage.aspx";//score page where the scores calculated will be displayed.
    }
    
    setTimeout("loadnextpage()",60*1000);// redirection after a minute
  

</script>
</head>

<body background="pictures/img30.jpg">
    <form id="form1" method="post" runat="server">
    <div >
        &nbsp;
      <%-- Table displays all true/false based questions with options --%>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 101; left: 232px; position: absolute;
            top: 184px" AutoGenerateColumns="False" Height="192px" Width="472px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            
            <Columns>
            
            <asp:TemplateField>
            <HeaderTemplate>id</HeaderTemplate>
            <ItemTemplate><asp:Label id="la2" Text='<%#Eval("id")%>' runat="server"></asp:Label></ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
            <HeaderTemplate>question</HeaderTemplate>
            <ItemTemplate><asp:Label ID="la1" Text='<%#Eval("que")%>' runat="server"></asp:Label></ItemTemplate>
           </asp:TemplateField>
           
           
           <asp:TemplateField>
           <HeaderTemplate>Options</HeaderTemplate>
           <ItemTemplate>
           <asp:RadioButton ID="ra1" GroupName="GA1" Text="True" runat="server" />
            <asp:RadioButton ID="ra2" GroupName="GA1" Text="False" runat="server" />
           </ItemTemplate>
           </asp:TemplateField>
            
            
            
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            
            
            
            
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" Style="z-index: 102; left: 16px; position: absolute;
            top: 24px" Text="Submit to view score" OnClick="Button2_Click" ForeColor="Purple" Width="152px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 24pt;
            color: #660066; font-family: Monotype Corsiva"><strong><span style="text-decoration: underline">Exam
                Started </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #000000">
                    All The Best</span></strong></span></div>
   
    </form>
</body>

</html>
