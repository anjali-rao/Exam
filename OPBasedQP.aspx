<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OPBasedQP.aspx.cs" Inherits="OPBasedQP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- The student view Option based questions to answer based on which he is evaluated --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script language="javascript" type="text/javascript">
    
    javascript:window.history.forward(1);
    
    
    function loadnextpage()
    {
        window.location.href = "OPBasedscore.aspx";
        //redirect to score page,treated as the next page.

    }
    
    setTimeout("loadnextpage()", 60 * 1000);
        //The page timesout after 1 minute and the score is calculated based on the answers selected by the student
    </script>
  
    
</head>
<body background="pictures/img30.jpg">
    <form id="form1" method="post" runat="server">
    <div>
        <%-- Table displays all the questions ans its options --%>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 232px; position: absolute;
            top: 136px" AutoGenerateColumns="False" Height="336px" Width="512px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            
            <Columns>
            
            <asp:TemplateField>
            <HeaderTemplate>qid</HeaderTemplate>
            <ItemTemplate><asp:Label id="la2" Text='<%#Eval("qid")%>' runat="server"></asp:Label></ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField ControlStyle-Width="200px">
            <HeaderTemplate>question</HeaderTemplate>
            <ItemTemplate><asp:Label ID="la1" Text='<%#Eval("qn")%>' runat="server"></asp:Label></ItemTemplate>
           </asp:TemplateField>
           
           
           <asp:TemplateField ControlStyle-Width="300px">
           <HeaderTemplate>Options</HeaderTemplate>
           <ItemTemplate>
           <asp:RadioButton ID="ra1" GroupName="GA1" Text='<%#Eval("options1") %>' runat="server" />
            <asp:RadioButton ID="ra2" GroupName="GA1" Text='<%#Eval("options2") %>' runat="server" />
               <asp:RadioButton ID="ra3" GroupName="GA1" Text='<%#Eval("options3") %>' runat="server" />
            <asp:RadioButton ID="ra4" GroupName="GA1" Text='<%#Eval("options4") %>' runat="server" />
           </ItemTemplate>
           </asp:TemplateField>
           
            
            
            
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            
            
            
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 24px; position: absolute; top: 48px" Text="Submit To view The Score" ForeColor="Purple" Width="168px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 24pt;
            color: #660066; font-family: Monotype Corsiva"><strong><span style="text-decoration: underline">Exam
                Started </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #000000">
                    All The Best</span></strong></span></div>
    </form>
</body>
</html>
