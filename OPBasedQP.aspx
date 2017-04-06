<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OPBasedQP.aspx.cs" Inherits="OPBasedQP" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
   <%-- The page displays 10 questions randomly from the selected test subject . The timer starts . Each question has 4 options. The student must select the answers. 
       Not selecting an option or wrong answer will not add to the total score.The student answers are recorded and stored into the database.
       The time taken will also be recorded in local storage to calculate the performance.--%> 
   
    
</head>
<body background="pictures/img30.jpg">
    <form id="form1" method="post" runat="server" >
    <div>
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 59px; position: absolute;
            top: 136px; width: 1008px;" AutoGenerateColumns="False" Height="336px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            
            <Columns>
            
            <asp:TemplateField>
            <HeaderTemplate>qid</HeaderTemplate>
            <ItemTemplate><asp:Label id="la2" Text='<%#Eval("QId")%>' runat="server"></asp:Label></ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField ControlStyle-Width="200px">
            <HeaderTemplate>question</HeaderTemplate>
            <ItemTemplate><asp:Label ID="la1" Text='<%#Eval("Question")%>' runat="server"></asp:Label></ItemTemplate>
           </asp:TemplateField>
           
           
           <asp:TemplateField ControlStyle-Width="300px">
           <HeaderTemplate>Options</HeaderTemplate>
           <ItemTemplate>
           <asp:RadioButton ID="ra1" GroupName="GA1" Text='<%#Eval("OptionA") %>' runat="server" />
            <asp:RadioButton ID="ra2" GroupName="GA1" Text='<%#Eval("OptionB") %>' runat="server" />
               <asp:RadioButton ID="ra3" GroupName="GA1" Text='<%#Eval("OptionC") %>' runat="server" />
            <asp:RadioButton ID="ra4" GroupName="GA1" Text='<%#Eval("OptionD") %>' runat="server" />
           </ItemTemplate>
           </asp:TemplateField>
           
            
            
            
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            
            
            
        </asp:GridView>
        <table>
           <tr>
<asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
<asp:Timer ID="timer1" runat="server"
Interval="1000" OnTick="timer1_tick"></asp:Timer>
</tr>

<tr>
<asp:UpdatePanel id="updPnl"
runat="server" UpdateMode="Conditional">
<ContentTemplate>
<asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Names="Arial"
        Font-Size="X-Large" ForeColor="#6600CC"></asp:Label>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
</Triggers>
</asp:UpdatePanel>
</tr>
            <%--<tr>
                <td>
                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                 <asp:Label ID="Label2" runat="server" Text="Current Time"></asp:Label>
                 <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                 <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                 </td>    
                <td>
                      <asp:Label ID="lbltime" runat="server" ForeColor="Red" Font-Size="Larger" BackColor="Yellow" Font-Bold="true" ></asp:Label>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Style="z-index: 102;
            left: 24px; position: absolute; top: 48px" Text="Submit To view The Score" ForeColor="Purple" Width="168px" />
                </td>
                
            </tr>
        </table>
      
        

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;
        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 24pt;
            color: #660066; font-family: Monotype Corsiva"><strong><span style="text-decoration: underline">Exam
                Started </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #000000">
                    All The Best</span></strong></span></div>
    </form>
</body>
    <%-- Javascript code to record the time of the timer and send to the score page for performance calculation.
        The start time in mins and secs are subtracted from the end time to get the time duration.The time duration in mins 
        and secs are stored in local storage for performance calculation. 
        eg: stm=00,sts=00,etm=09,ets=40
        min=0 sec=20--%>
     <script language="javascript" type="text/javascript">
         javascript: window.history.forward(1);
         var stm = "";
         var sts = "";
         var etm = "";
         var ets = "";
        window.onload=function(){
            var timestart = new Date();
            stm = (timestart.getMinutes());
            sts = (timestart.getSeconds());
            console.log(stm+":::"+sts);
        }

        document.getElementById("Button1").addEventListener("click", function () {
            var timeend = new Date();
             etm = (timeend.getMinutes());
             ets = (timeend.getSeconds());
            var min = etm - stm;
            var sec = ets - sts;
            //min = (min < 10 ? "0" + min : min);
            //sec = (sec < 10 ? "0" + sec : sec);
            //alert(min+":::"+sec);
            window.localStorage.setItem("sec", sec);
            window.localStorage.setItem("min", min);

        }, false)
    
       
        
    function loadnextpage()
    {
        window.location.href = "OPBasedscore.aspx";
        
    }
    setTimeout("loadnextpage()", 10 * 60 * 1000);

   

    </script>
  
</html>
